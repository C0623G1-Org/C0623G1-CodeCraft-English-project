package com.example.english.service;

import com.example.english.model.Question;

import java.util.List;

public interface IQuestionService {

    List<Question> createEasyTest();
    List<Question> createMediumTest();
    List<Question> createHardTest();
}
