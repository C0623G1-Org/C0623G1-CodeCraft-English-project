package com.example.english.service.impl;

import com.example.english.model.User;
import com.example.english.repository.IUserRepository;
import com.example.english.repository.impl.UserRepositoryImpl;
import com.example.english.service.IUserService;

public class UserServiceImpl implements IUserService {
    private final IUserRepository userRepository = new UserRepositoryImpl();

    @Override
    public void signup(User user) {
        userRepository.signup(user);
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
}
