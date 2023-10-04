package com.example.english.repository;

import com.example.english.model.User;

import java.sql.SQLException;

public interface IUserRepository {
    void signup(User user);

    boolean login(String loginId, String password);

    void editUser(User user);

    void deleteUser(int userId);
    User getByIdUser(int id) throws SQLException;
}