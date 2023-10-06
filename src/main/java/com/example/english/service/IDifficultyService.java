package com.example.english.service;

import com.example.english.model.Difficulty;
import com.example.english.repository.IDifficultyRepository;
import com.example.english.repository.IQuestionRepository;

import java.sql.SQLException;
import java.util.List;

public interface IDifficultyService {
    List<Difficulty> showDifficulties();
}
