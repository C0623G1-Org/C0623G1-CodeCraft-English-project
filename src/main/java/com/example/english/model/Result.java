package com.example.english.model;

public class Result {
    private int questionId;
    private String question;
    private String selectedAnswer;
    private String rightAnswer;
    private int historyId;
    private int score;

    public Result(int questionId, String selectedAnswer, int historyId ,int score) {
        this.questionId = questionId;
        this.selectedAnswer = selectedAnswer;
        this.historyId = historyId;
        this.score = score;
    }

    public Result(int questionId, String question, String seletectedAnswer, String rightAnswer, int score) {
        this.questionId = questionId;
        this.question = question;
        this.selectedAnswer = seletectedAnswer;
        this.rightAnswer = rightAnswer;
        this.score = score;
    }


    public Result(String question, String selectedAnswer, String rightAnswer, int score) {
        this.question = question;
        this.selectedAnswer = selectedAnswer;
        this.rightAnswer = rightAnswer;
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

    public String getSelectedAnswer() {
        return selectedAnswer;
    }

    public void setSelectedAnswer(String selectedAnswer) {
        this.selectedAnswer = selectedAnswer;
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

    public int getHistoryId() {
        return historyId;
    }

    public void setHistoryId(int historyId) {
        this.historyId = historyId;
    }
}
