package com.example.english.service.impl;

import com.example.english.model.Result;
import com.example.english.repository.IResultRepository;
import com.example.english.repository.impl.ResultRepositoryImpl;
import com.example.english.service.IResultService;

import java.util.List;

public class ResultServiceImpl implements IResultService {
    private IResultRepository resultRepository = new ResultRepositoryImpl();

    @Override
    public List<Result> getAll() {
        return resultRepository.getAll();
    }

    @Override
    public int score() {
        return resultRepository.score();
    }

    @Override
    public void create(Result result) {

    }
}