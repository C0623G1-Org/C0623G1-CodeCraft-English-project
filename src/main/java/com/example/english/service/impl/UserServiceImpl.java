package com.example.english.service.impl;

import com.example.english.model.User;
import com.example.english.repository.IUserRepository;
import com.example.english.repository.impl.UserRepositoryImpl;
import com.example.english.service.IUserService;

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

    }

    @Override
    public void deleteUser(int userId) {

    }

    @Override
    public boolean forgetPassword(String email, String newPassword, String confirmPassword) {
        return userRepository.forgetPassword(email, newPassword, confirmPassword);
    }
}
