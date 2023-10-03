package com.example.english.repository.impl;

import com.example.english.model.Question;
import com.example.english.repository.BaseRepository;
import com.example.english.repository.IQuestionRepository;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class QuestionRepositoryImpl implements IQuestionRepository {
    private static final String SELECT_ALL_QUESTIONS = "select * from cau_hoi";
    private static final String CREAT_PRACTICE_LIST = "SELECT ch.*, dk.ten_do_kho \n" +
            "FROM cau_hoi AS ch\n" +
            "LEFT JOIN do_kho as dk ON ch.ma_do_kho = dk.ma_do_kho\n" +
            "WHERE ch.ma_do_kho = 1\n" +
            "order by rand() limit 10";

    @Override
    public List<Question> findAllQuestion() {
        Connection connection = BaseRepository.getConnection();
        List<Question> questionList = new ArrayList<>();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(SELECT_ALL_QUESTIONS);
            while (resultSet.next()) {
                int id = resultSet.getInt("ma_cau_hoi");
                int levelId = resultSet.getInt("ma_do_kho");
                String question = resultSet.getString("ten_cau_hoi");
                String answerA = resultSet.getString("dap_an_a");
                String answerB = resultSet.getString("dap_an_b");
                String answerC = resultSet.getString("dap_an_c");
                String answerD = resultSet.getString("dap_an_d");
                String rightAnswer = resultSet.getString("dap_an_dung");
                questionList.add(new Question(id, levelId, question, answerA, answerB, answerC, answerD, rightAnswer));
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return questionList;
    }

    @Override
    public List<Question> createPracticeList() {
        Connection connection = BaseRepository.getConnection();
        List<Question> questionList = new ArrayList<>();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(CREAT_PRACTICE_LIST);
            while (resultSet.next()) {
                int id = resultSet.getInt("ma_cau_hoi");
                int levelId = resultSet.getInt("ma_do_kho");
                String question = resultSet.getString("ten_cau_hoi");
                String answerA = resultSet.getString("dap_an_a");
                String answerB = resultSet.getString("dap_an_b");
                String answerC = resultSet.getString("dap_an_c");
                String answerD = resultSet.getString("dap_an_d");
                String rightAnswer = resultSet.getString("dap_an_dung");
                questionList.add(new Question(id, levelId, question, answerA, answerB, answerC, answerD, rightAnswer));
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return questionList;
    }
}