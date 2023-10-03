package com.example.english.model;

public class Result {
    private String question;
    private String seletectedAnswer;
    private String correctAnswer;
    private int score;

    public Result(String question, String seletectedAnswer, String correctAnswer, int score) {
        this.question = question;
        this.correctAnswer = correctAnswer;
        this.seletectedAnswer = seletectedAnswer;
        this.score = score;
    }


    public String getTenCauHoi() {
        return question;
    }

    public void setTenCauHoi(String question) {
        this.question = question;
    }

    public String getCorrectAnswer() {
        return correctAnswer;
    }

    public void setCorrectAnswer(String correctAnswer) {
        this.correctAnswer = correctAnswer;
    }

    public String getSeletectedAnswer() {
        return seletectedAnswer;
    }

    public void setSeletectedAnswer(String seletectedAnswer) {
        this.seletectedAnswer = seletectedAnswer;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }
}