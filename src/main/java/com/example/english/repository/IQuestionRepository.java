package com.example.english.repository;

import com.example.english.model.Question;

import java.sql.SQLException;
import java.util.List;

public interface IQuestionRepository {

    List<Question> createTest(String level);
    Question findQuestionById(int id) throws SQLException;

}