package com.example.english.repository.impl;

import com.example.english.model.Difficulty;
import com.example.english.model.Question;
import com.example.english.model.Result;
import com.example.english.repository.BaseRepository;
import com.example.english.repository.IQuestionRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class QuestionRepositoryImpl implements IQuestionRepository {
//    private static final String SELECT_ALL_QUESTIONS = "select * from questions";
    private static final String CREAT_PRACTICE_LIST = "CALL create_practice_list(?);";

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
                String diffName = resultSet.getString("diff_name");
                String question = resultSet.getString("question_content");
                String answerA = resultSet.getString("answer_a");
                String answerB = resultSet.getString("answer_b");
                String answerC = resultSet.getString("answer_c");
                String answerD = resultSet.getString("answer_d");
                String rightAnswer = resultSet.getString("correct_answer");
                questionList.add(new Question(id, question, answerA, answerB, answerC, answerD, rightAnswer,new Difficulty(diffName)));
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return questionList;
    }

    @Override
    public void submit(List<Result> resultList) {


    }
}