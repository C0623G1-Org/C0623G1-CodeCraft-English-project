package com.example.english.repository;

import com.example.english.model.User;

public interface IUserRepository {
    boolean signup(User user);

    User login(String loginId, String password);

    void editUser(User user);

    void deleteUser(int userId);
    boolean forgetPassword(String email, String newPassword, String confirmPassword);
}