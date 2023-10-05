package com.example.english.repository;

import com.example.english.model.User;

import java.sql.SQLException;
import java.util.List;

public interface IUserRepository {
    void signup(User user);

    User login(String loginId, String password);

    void editUser(User user);

    void deleteUser(int userId);
    User getByIdUser(int id);
    List<User> selectAllUser();
    User fillEditForm(int id);
}