package com.example.english.service.impl;

import com.example.english.model.Question;
import com.example.english.repository.IQuestionRepository;
import com.example.english.repository.impl.QuestionRepositoryImpl;
import com.example.english.service.IQuestionService;

import java.sql.SQLException;
import java.util.List;

public class QuestionServiceImpl implements IQuestionService {
    private final IQuestionRepository questionRepository = new QuestionRepositoryImpl();

    @Override
    public List<Question> createTest(int level) {
        return questionRepository.createTest(level);
    }

    @Override
    public Question findQuestionById(int id) throws SQLException {
        return questionRepository.findQuestionById(id);
    }
}