package com.example.english.service.impl;

import com.example.english.model.Difficulty;
import com.example.english.repository.IDifficultyRepository;
import com.example.english.repository.impl.DifficultyRepositoryImpl;
import com.example.english.service.IDifficultyService;

import java.sql.SQLException;
import java.util.List;

public class DifficultyServiceImpl implements IDifficultyService {
    private final IDifficultyRepository difficultyRepository = new DifficultyRepositoryImpl();
    @Override
    public List<Difficulty> showDifficulties(){
        return difficultyRepository.showDifficulties();
    }
}
