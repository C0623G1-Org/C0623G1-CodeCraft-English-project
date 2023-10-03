package com.example.english.service.impl;

import com.example.english.model.Question;
import com.example.english.repository.IQuestionRepository;
import com.example.english.repository.impl.QuestionRepositoryImpl;
import com.example.english.service.IQuestionService;

import java.util.List;

public class QuestionServiceImpl implements IQuestionService {
    private final IQuestionRepository questionRepository = new QuestionRepositoryImpl();

    @Override
    public List<Question> findAllQuestion() {
        return questionRepository.findAllQuestion();
    }

    @Override
    public List<Question> createPracticeList() {
        return questionRepository.createPracticeList();
    }
}