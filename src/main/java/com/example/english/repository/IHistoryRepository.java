package com.example.english.repository;

import com.example.english.model.History;

import java.time.LocalDateTime;
import java.util.List;

public interface IHistoryRepository {
    List<History> display(int userId);
    void createHistory(History history);
    int findByDate(LocalDateTime date);
}

