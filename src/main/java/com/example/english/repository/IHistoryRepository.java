package com.example.english.repository;

import com.example.english.model.History;
import com.example.english.model.Result;

import java.time.LocalDateTime;
import java.util.List;

public interface IHistoryRepository {
    List<History> display(int userId);
    void createHistory(History history);
    int findByDate(LocalDateTime date);
    List<Result> displayResult(LocalDateTime dateTime);
}

