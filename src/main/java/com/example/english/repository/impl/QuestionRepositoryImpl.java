package com.example.english.repository.impl;

import com.example.english.model.Question;
import com.example.english.repository.BaseRepository;
import com.example.english.repository.IQuestionRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class QuestionRepositoryImpl implements IQuestionRepository {
    private static final String SELECT_ALL_QUESTIONS = "select * from questions";
    private static final String CREAT_PRACTICE_LIST = "CALL create_practice_list(?);";

    @Override
    public List<Question> findAllQuestion() {
        Connection connection = BaseRepository.getConnection();
        List<Question> questionList = new ArrayList<>();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(SELECT_ALL_QUESTIONS);
            while (resultSet.next()) {
                int id = resultSet.getInt("ma_cau_hoi");
//                int levelId = resultSet.getInt("ma_do_kho");
                String question = resultSet.getString("ten_cau_hoi");
                String answerA = resultSet.getString("dap_an_a");
                String answerB = resultSet.getString("dap_an_b");
                String answerC = resultSet.getString("dap_an_c");
                String answerD = resultSet.getString("dap_an_d");
                String rightAnswer = resultSet.getString("dap_an_dung");
                questionList.add(new Question(id, question, answerA, answerB, answerC, answerD, rightAnswer));
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return questionList;
    }
//    question_id INT PRIMARY KEY AUTO_INCREMENT,
//    diff_id INT NOT NULL,
//    question_content VARCHAR(255) NOT NULL,
//    answer_a VARCHAR(100) NOT NULL,
//    answer_b VARCHAR(100) NOT NULL,
//    answer_c VARCHAR(100) NOT NULL,
//    answer_d VARCHAR(100) NOT NULL,
//    correct_answer VARCHAR(100) NOT NULL,
//    FOREIGN KEY(diff_id) REFERENCES difficulty(diff_id)
    @Override
    public List<Question> createEasyTest() {
        Connection connection = BaseRepository.getConnection();
        List<Question> questionList = new ArrayList<>();
        try {
            CallableStatement call = connection.prepareCall(CREAT_PRACTICE_LIST);
            call.setInt(1,1);
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
    public List<Question> createMediumTest() {
        Connection connection = BaseRepository.getConnection();
        List<Question> questionList = new ArrayList<>();
        try {
            CallableStatement call = connection.prepareCall(CREAT_PRACTICE_LIST);
            call.setInt(1,2);
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
    public List<Question> createHardTest() {
        Connection connection = BaseRepository.getConnection();
        List<Question> questionList = new ArrayList<>();
        try {
            CallableStatement call = connection.prepareCall(CREAT_PRACTICE_LIST);
            call.setInt(1,3);
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
}