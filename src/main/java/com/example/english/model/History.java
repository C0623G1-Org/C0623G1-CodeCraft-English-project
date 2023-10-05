package com.example.english.model;

import java.time.LocalDateTime;
import java.util.Date;

public class History {
    private int id;
    private int userId;
    private String username;
    private int totalScore;
    private LocalDateTime date;

    public History(int userId, LocalDateTime date ) {
        this.userId = userId;
        this.date = date;
    }

    public History(int id, int userId, String username,int totalScore, LocalDateTime date) {
        this.id = id;
        this.userId = userId;
        this.username = username;
        this.totalScore=totalScore;
        this.date = date;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getTotalScore() {
        return totalScore;
    }

    public void setTotalScore(int totalScore) {
        this.totalScore = totalScore;
    }

    public LocalDateTime getDate() {
        return date;
    }

    public void setDate(LocalDateTime date) {
        this.date = date;
    }
}
