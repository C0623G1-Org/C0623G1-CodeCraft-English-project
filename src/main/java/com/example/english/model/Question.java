package com.example.english.model;

public class Question {
    //    question_id INT PRIMARY KEY AUTO_INCREMENT,
//    diff_id INT NOT NULL,
//    question_content VARCHAR(255) NOT NULL,
//    answer_a VARCHAR(100) NOT NULL,
//    answer_b VARCHAR(100) NOT NULL,
//    answer_c VARCHAR(100) NOT NULL,
//    answer_d VARCHAR(100) NOT NULL,
//    correct_answer VARCHAR(100) NOT NULL,
//    FOREIGN KEY(diff_id) REFERENCES difficulty(diff_id)
    private int id;
    private int levelId;
    private String question;
    private String answerA;
    private String answerB;
    private String answerC;
    private String answerD;
    private String rightAnswer;

    public Question() {

    }

    public Question(int levelId, String question, String answerA, String answerB, String answerC, String answerD, String rightAnswer) {
        this.levelId = levelId;
        this.question = question;
        this.answerA = answerA;
        this.answerB = answerB;
        this.answerC = answerC;
        this.answerD = answerD;
        this.rightAnswer = rightAnswer;
    }

    public Question(int id, int levelId, String question, String answerA, String answerB, String answerC, String answerD, String rightAnswer) {
        this.id = id;
        this.levelId = levelId;
        this.question = question;
        this.answerA = answerA;
        this.answerB = answerB;
        this.answerC = answerC;
        this.answerD = answerD;
        this.rightAnswer = rightAnswer;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getLevelId() {
        return levelId;
    }

    public void setLevelId(int levelId) {
        this.levelId = levelId;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getAnswerA() {
        return answerA;
    }

    public void setAnswerA(String answerA) {
        this.answerA = answerA;
    }

    public String getAnswerB() {
        return answerB;
    }

    public void setAnswerB(String answerB) {
        this.answerB = answerB;
    }

    public String getAnswerC() {
        return answerC;
    }

    public void setAnswerC(String answerC) {
        this.answerC = answerC;
    }

    public String getAnswerD() {
        return answerD;
    }

    public void setAnswerD(String answerD) {
        this.answerD = answerD;
    }

    public String getRightAnswer() {
        return rightAnswer;
    }

    public void setRightAnswer(String rightAnswer) {
        this.rightAnswer = rightAnswer;
    }
}