package com.example.english.model;

public class Difficulty {
//    diff_id INT PRIMARY KEY AUTO_INCREMENT,
//    diff_name VARCHAR(10) NOT NULL
    private int diffId;
    private String diffName;
    public Difficulty(){}

    public Difficulty(String diffName) {
        this.diffName = diffName;
    }

    public Difficulty(int diffId, String diffName) {
        this.diffId = diffId;
        this.diffName = diffName;
    }
}
