package com.example.english.repository.impl;

import com.example.english.model.History;
import com.example.english.repository.BaseRepository;
import com.example.english.repository.IHistoryRepository;


import java.sql.*;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class HistoryRepository implements IHistoryRepository {
    private static final String SELECT = "SELECT t.history_id, t.user_id, u.display_name, t.test_date,sum(r.score) AS totalScore\n" +
            "FROM test_history t\n" +
            "JOIN users u ON t.user_id = u.user_id\n" +
            "JOIN results r ON t.history_id = r.history_id\n" +
            "WHERE t.user_id = ?\n" +
            "GROUP BY t.history_id;";
    private static final String INSERT = "INSERT INTO test_history(user_id,test_date)\n" +
            "VALUES (?,?);";

    private static final String SELECT_HISTORY_ID = "SELECT t.history_id\n" +
            "FROM test_history t\n" +
            "WHERE t.test_date = ?;";

    @Override
    public List<History> display(int checkUserId) {
        List<History> historyList = new ArrayList<>();
        History history = null;
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT);
            preparedStatement.setInt(1, checkUserId);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("history_id");
                int userId = resultSet.getInt("user_id");
                String userName = resultSet.getString("display_name");
                int totalScore =resultSet.getInt("totalScore");
                String date = resultSet.getString("test_date");
                history = new History(id, userId, userName,totalScore, LocalDateTime.parse(date));
                historyList.add(history);
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
        return historyList;
    }

    @Override
    public void createHistory(History history) {
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT);
            preparedStatement.setInt(1, history.getUserId());
            preparedStatement.setString(2, String.valueOf(history.getDate()));
            preparedStatement.executeUpdate();
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

    @Override
    public int findByDate(LocalDateTime date) {
        int historyId = -1;
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_HISTORY_ID);
            preparedStatement.setString(1, String.valueOf(date));
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                historyId = resultSet.getInt("history_id");
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
        return historyId;
    }
}

