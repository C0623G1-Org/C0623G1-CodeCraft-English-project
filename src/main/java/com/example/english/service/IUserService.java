package com.example.english.service;

import com.example.english.model.User;

import java.util.List;

public interface IUserService {
    void signup(User user);

    User login(String loginId, String password);

    void editUser(User user);

    void deleteUser(int userId);

    User getByIdUser(int id);
    List<User> selectAllUser();
    User fillEditForm(int id);
}