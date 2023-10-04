package com.example.english.repository.impl;

import com.example.english.model.Result;
import com.example.english.repository.BaseRepository;
import com.example.english.repository.IResultRepository;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ResultRepositoryImpl implements IResultRepository {
    private static final String SELECT = "SELECT \n" +
            "q.question_id,\n" +
            "q.question_content,\n" +
            "r.choosen_answer,\n" +
            "q.correct_answer,\n" +
            "r.score\n" +
            "FROM results r\n" +
            "JOIN questions q ON r.question_id=q.question_id\n" +
            "WHERE r.history_id=?;";

    @Override
    public List<Result> getAll() {
        Connection connection = BaseRepository.getConnection();
        List<Result> resultList = new ArrayList<>();
        Result result = null;
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(SELECT);
            while (resultSet.next()) {
                int questionId = resultSet.getInt("question_id");
                String question = resultSet.getNString("question_content");
                String seletectedAnswer = resultSet.getNString("choosen_answer");
                String rightAnswer = resultSet.getNString("correct_answer");
                int score = resultSet.getInt("score");
                result = new Result(questionId, question, seletectedAnswer, rightAnswer,score);
                resultList.add(result);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return resultList;
    }

    @Override
    public int score() {
        int totalScore = 0;
        for (Result result : getAll()) {
            totalScore += result.getScore();
        }
        return totalScore;
    }

    @Override
    public void create(Result result) {

    }
}