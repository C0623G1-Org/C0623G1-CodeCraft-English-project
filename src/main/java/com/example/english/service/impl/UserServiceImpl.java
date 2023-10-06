package com.example.english.service.impl;

import com.example.english.model.User;
import com.example.english.repository.IUserRepository;
import com.example.english.repository.impl.UserRepositoryImpl;
import com.example.english.service.IUserService;

import java.sql.SQLException;
import java.util.List;

public class UserServiceImpl implements IUserService {
    private final IUserRepository userRepository = new UserRepositoryImpl();

    @Override
    public boolean signup(User user) {
        return userRepository.signup(user);
    }

    @Override
    public User login(String loginId, String password) {
        return userRepository.login(loginId, password);
    }

    @Override
    public void editUser(User user) {
        userRepository.editUser(user);
    }

    @Override
    public boolean deleteUser(int userId) {
        return userRepository.deleteUser(userId);
    }

    @Override

    public boolean forgetPassword(String email, String username, String newPassword, String confirmPassword) {
        return userRepository.forgetPassword(email, username, newPassword, confirmPassword);
    }

    public User getByIdUser(int id) {
        return userRepository.getByIdUser(id);
    }

    @Override
    public List<User> selectAllUser() {
        return userRepository.selectAllUser();
    }
}

