package com.example.english.model;

public class Difficulty {
//    diff_id INT PRIMARY KEY AUTO_INCREMENT,
//    diff_name VARCHAR(10) NOT NULL
    private int diffId;
    private String diffName;
    public Difficulty(){}

    public int getDiffId() {
        return diffId;
    }

    public void setDiffId(int diffId) {
        this.diffId = diffId;
    }

    public String getDiffName() {
        return diffName;
    }

    public void setDiffName(String diffName) {
        this.diffName = diffName;
    }

    public Difficulty(String diffName) {
        this.diffName = diffName;
    }

    public Difficulty(int diffId, String diffName) {
        this.diffId = diffId;
        this.diffName = diffName;
    }
}
