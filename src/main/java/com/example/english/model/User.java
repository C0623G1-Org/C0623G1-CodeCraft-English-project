package com.example.english.model;

public class User {
    private int userId;
    private String userName;
    private String email;
    private String dob;
    private String loginId; //ko dc edit
    private String password; // ko dc hien thi
    private String role; // ko dc edit

    public User() {
    }

    public User(int userId, String userName, String email, String dob, String loginId, String password, String role) {
        this.userId = userId;
        this.userName = userName;
        this.email = email;
        this.dob = dob;
        this.loginId = loginId;
        this.password = password;
        this.role = role;
    }

    public User(String email, String loginId, String password) {
        this.email = email;
        this.loginId = loginId;
        this.password = password;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getLoginId() {
        return loginId;
    }

    public void setLoginId(String loginId) {
        this.loginId = loginId;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }
}