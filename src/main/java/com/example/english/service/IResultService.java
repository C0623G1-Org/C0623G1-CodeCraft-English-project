package com.example.english.service;

import com.example.english.model.Result;

import java.util.List;

public interface IResultService {
    List<Result> getAll();

    int score();

    void create(Result result);
}