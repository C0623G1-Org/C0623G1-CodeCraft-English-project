package com.example.english.repository;

import com.example.english.model.Question;

import java.util.List;

public interface IQuestionRepository {
    List<Question> findAllQuestion();

    List<Question> createPracticeList();
}