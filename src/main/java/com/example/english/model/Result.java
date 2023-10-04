package com.example.english.model;

public class Result {
    private int questionId;
    private String question;
    private String seletectedAnswer;
    private String rightAnswer;
    private int score;

    public Result(int questionId, String question, String seletectedAnswer, String rightAnswer, int score) {
        this.questionId = questionId;
        this.question = question;
        this.seletectedAnswer = seletectedAnswer;
        this.rightAnswer = rightAnswer;
        this.score = score;
    }

    public Result(int questionId, String seletectedAnswer) {
        this.questionId = questionId;
        this.seletectedAnswer = seletectedAnswer;
    }

    public Result(int questionId, String seletectedAnswer, int score) {
        this.questionId = questionId;
        this.seletectedAnswer = seletectedAnswer;
        this.score = score;
    }

    public int getQuestionId() {
        return questionId;
    }

    public void setQuestionId(int questionId) {
        this.questionId = questionId;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getSeletectedAnswer() {
        return seletectedAnswer;
    }

    public void setSeletectedAnswer(String seletectedAnswer) {
        this.seletectedAnswer = seletectedAnswer;
    }

    public String getRightAnswer() {
        return rightAnswer;
    }

    public void setRightAnswer(String rightAnswer) {
        this.rightAnswer = rightAnswer;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }
}