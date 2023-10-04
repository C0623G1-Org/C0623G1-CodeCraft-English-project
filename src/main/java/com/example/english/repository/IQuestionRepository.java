package com.example.english.repository;

import com.example.english.model.Question;
import com.example.english.model.Result;

import java.util.List;

public interface IQuestionRepository {
//    List<Question> findAllQuestion();

    List<Question> createTest(String level);

    void submit(List<Result> resultList);
}