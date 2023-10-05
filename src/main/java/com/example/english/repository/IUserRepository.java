package com.example.english.repository;

import com.example.english.model.User;

import java.sql.SQLException;

public interface IUserRepository {
    boolean signup(User user);

    User login(String loginId, String password);

    void editUser(User user);

    void deleteUser(int userId);

    boolean forgetPassword(String email, String username, String newPassword, String confirmPassword);

    User getByIdUser(int id);

}