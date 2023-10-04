package com.example.english.repository.impl;

import com.example.english.model.Question;
import com.example.english.repository.BaseRepository;
import com.example.english.repository.IQuestionRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class QuestionRepositoryImpl implements IQuestionRepository {
    private static final String CREAT_PRACTICE_LIST = "CALL create_practice_list(?);";
    private static final String FIND_QUESTION_BY_ID = "call find_question_by_id(?);";

    @Override
    public List<Question> createTest(String level) {
        Connection connection = BaseRepository.getConnection();
        List<Question> questionList = new ArrayList<>();
        try {
            CallableStatement call = connection.prepareCall(CREAT_PRACTICE_LIST);
            call.setString(1,level);
            ResultSet resultSet = call.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("question_id");
//                int levelId = resultSet.getInt("diff_id");
                String question = resultSet.getString("question_content");
                String answerA = resultSet.getString("answer_a");
                String answerB = resultSet.getString("answer_b");
                String answerC = resultSet.getString("answer_c");
                String answerD = resultSet.getString("answer_d");
                String rightAnswer = resultSet.getString("correct_answer");
                questionList.add(new Question(id, question, answerA, answerB, answerC, answerD, rightAnswer));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return questionList;
    }

    @Override
    public Question findQuestionById(int id) throws SQLException {
        Connection connection = BaseRepository.getConnection();
        Question question = null;
        CallableStatement call = connection.prepareCall(FIND_QUESTION_BY_ID);
        call.setInt(1,id);
        ResultSet rs = call.executeQuery();
        while (rs.next()) {
            String question_content = rs.getString("question_content");
            String answerA = rs.getString("answer_a");
            String answerB = rs.getString("answer_b");
            String answerC = rs.getString("answer_c");
            String answerD = rs.getString("answer_d");
            String correctAnswer = rs.getString("correct_answer");
            question = new Question(id, question_content, answerA,answerB, answerC, answerD, correctAnswer);
        }

        return question;
    }
//    private int id;
//    private String question;
//    private String answerA;
//    private String answerB;
//    private String answerC;
//    private String answerD;
//    private String rightAnswer;

//    question_id INT PRIMARY KEY AUTO_INCREMENT,
//    diff_id INT NOT NULL,
//    question_content VARCHAR(255) NOT NULL,
//    answer_a VARCHAR(100) NOT NULL,
//    answer_b VARCHAR(100) NOT NULL,
//    answer_c VARCHAR(100) NOT NULL,
//    answer_d VARCHAR(100) NOT NULL,
//    correct_answer VARCHAR(100) NOT NULL,
//    FOREIGN KEY(diff_id) REFERENCES difficulty(diff_id)
}