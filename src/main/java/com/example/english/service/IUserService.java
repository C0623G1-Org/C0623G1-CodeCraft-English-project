package com.example.english.service;

import com.example.english.model.User;

import java.util.List;

public interface IUserService {
    boolean signup(User user);

    User login(String loginId, String password);

    void editUser(User user);


    boolean deleteUser(int userId);


    boolean forgetPassword(String email, String username, String newPassword, String confirmPassword);

    User getByIdUser(int id);
    List<User> selectAllUser();

}