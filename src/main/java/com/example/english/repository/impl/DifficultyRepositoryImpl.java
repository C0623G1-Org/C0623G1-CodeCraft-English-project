package com.example.english.repository.impl;

import com.example.english.model.Difficulty;
import com.example.english.model.Result;
import com.example.english.repository.BaseRepository;
import com.example.english.repository.IDifficultyRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DifficultyRepositoryImpl implements IDifficultyRepository {
    private final String FIND_ALL_DIFFICULTY = "SELECT * FROM case_study.difficulty order by diff_id";
    @Override
    public List<Difficulty> showDifficulties()  {
        Connection connection = BaseRepository.getConnection();
        List<Difficulty> difficulties = new ArrayList<>();
        Difficulty difficulty = null;
        CallableStatement call = null;
        try {
            call = connection.prepareCall(FIND_ALL_DIFFICULTY);
            ResultSet result = call.executeQuery();
            while(result.next()) {
                int diffId = result.getInt("diff_id");
                String diffName = result.getString("diff_name");
                difficulty = new Difficulty(diffId, diffName);
                difficulties.add(difficulty);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return difficulties;
    }
}
