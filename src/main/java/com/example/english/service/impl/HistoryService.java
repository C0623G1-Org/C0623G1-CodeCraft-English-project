package com.example.english.service.impl;

import com.example.english.model.History;
import com.example.english.repository.IHistoryRepository;
import com.example.english.repository.impl.HistoryRepository;
import com.example.english.service.IHistoryService;

import java.time.LocalDateTime;
import java.util.List;

public class HistoryService implements IHistoryService {
    private IHistoryRepository historyRepository = new HistoryRepository();

    @Override
    public List<History> display(int userId) {
        return historyRepository.display(userId);
    }

    @Override
    public void create(History history) {
        historyRepository.createHistory(history);
    }

    @Override
    public int findByDate(LocalDateTime date) {
        return historyRepository.findByDate(date);
    }
}
