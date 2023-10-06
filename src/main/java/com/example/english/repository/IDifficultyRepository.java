package com.example.english.repository;

import com.example.english.model.Difficulty;

import java.sql.SQLException;
import java.util.List;

public interface IDifficultyRepository {
    List<Difficulty> showDifficulties();
}
