package com.example.english.repository.impl;

import com.example.english.model.Result;
import com.example.english.repository.BaseRepository;
import com.example.english.repository.IResultRepository;

import java.sql.*;
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
    private static final String INSERT = "INSERT INTO results(question_id,history_id,choosen_answer,score)\n" +
            "VALUES (?,?,?,?);";


    @Override
    public void saveResult(List<Result> saveResult) {
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT);
            for (Result result:saveResult){
                preparedStatement.setInt(1,result.getQuestionId());
                preparedStatement.setInt(2,result.getHistoryId());
                preparedStatement.setString(3,result.getSelectedAnswer());
                preparedStatement.setInt(4,result.getScore());
                preparedStatement.executeUpdate();
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally {
            try {
                connection.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
    }
}