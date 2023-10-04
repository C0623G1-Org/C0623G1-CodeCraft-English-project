package com.example.english.repository.impl;

import com.example.english.model.Question;
import com.example.english.repository.BaseRepository;
import com.example.english.repository.IQuestionRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class QuestionRepositoryImpl implements IQuestionRepository {
//    private static final String SELECT_ALL_QUESTIONS = "select * from questions";
    private static final String CREAT_PRACTICE_LIST = "CALL create_practice_list(?);";

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