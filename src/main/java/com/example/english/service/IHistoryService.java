package com.example.english.service;

import com.example.english.model.History;

import java.time.LocalDateTime;
import java.util.List;

public interface IHistoryService {
    List<History> display(int userId);
    void create (History history);
    int findByDate(LocalDateTime date);
}
