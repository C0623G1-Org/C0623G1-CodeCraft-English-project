package com.example.english.service;

import com.example.english.model.Question;
import com.example.english.model.Result;

import java.util.List;

public interface IQuestionService {

    List<Question> createTest(String level);

    void submit(List<Result> resultList);
}
