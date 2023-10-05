package com.example.english.repository;

import com.example.english.model.Question;
import com.example.english.model.Result;

import java.util.List;

public interface IResultRepository {
    List<Result> getAll();

    int score();

    void create(Result result);

}