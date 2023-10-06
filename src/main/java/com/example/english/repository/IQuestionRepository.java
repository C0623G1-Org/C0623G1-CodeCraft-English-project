package com.example.english.repository;

import com.example.english.model.Question;

import java.sql.SQLException;
import java.util.List;

public interface IQuestionRepository {

    List<Question> createTest(int level);
    Question findQuestionById(int id) throws SQLException;

}