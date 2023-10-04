package com.example.english.service.impl;

import com.example.english.model.User;
import com.example.english.repository.IUserRepository;
import com.example.english.repository.impl.UserRepositoryImpl;
import com.example.english.service.IUserService;

import java.sql.SQLException;

public class UserServiceImpl implements IUserService {
    private final IUserRepository userRepository = new UserRepositoryImpl();

    @Override
    public void signup(User user) {
        userRepository.signup(user);
    }

    @Override
    public Boolean login(String loginId, String password) {
        return userRepository.login(loginId, password);
    }

    @Override
    public void editUser(User user) {
        userRepository.editUser(user);
    }

    @Override
    public void deleteUser(int userId) {

    }

    @Override
    public User getByIdUser(int id) throws SQLException {
        return userRepository.getByIdUser(id);
    }
}
