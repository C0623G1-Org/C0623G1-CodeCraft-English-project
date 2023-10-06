package com.example.english.service;

import com.example.english.model.Question;

import java.sql.SQLException;
import java.util.List;

public interface IQuestionService {

    List<Question> createTest(int level);
    Question findQuestionById(int id) throws SQLException;
}
