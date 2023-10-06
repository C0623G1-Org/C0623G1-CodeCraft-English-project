package com.example.english.repository.impl;

import com.example.english.model.User;
import com.example.english.repository.IUserRepository;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserRepositoryImpl implements IUserRepository {
    private static final String SQL_USERNAME = "root";
    private static final String SQL_PASSWORD = "root@123";
    private static final String SQL_URL = "jdbc:mysql://localhost:3306/case_study";
    private static final String SIGNUP_SQL = "INSERT INTO case_study.users(display_name, email, dob, username, login_password, role_name) VALUES (?, ?, ?, ?, ?, ?);";
    private static final String GET_USER_BY_ID = "select * from users\n" +
            "where user_id = ?";
    private static final String UPDATE_USER = "update users set display_name = ?,email= ?, dob =? where user_id = ?;";

    private static final String LOGIN_SQL = "SELECT * FROM case_study.users WHERE username = ? AND login_password = ?;";
    private static final String DELETE_USER =  "DELETE FROM `users`\n" + "WHERE user_Id = ?;";
    private static final String SELECT_USER =  "SELECT * FROM users where role_name = \"SIMPLE_USER\" ORDER BY `display_name`;";

    private static final String FORGET_PASSWORD_SQL = "UPDATE case_study.users SET login_password = ? WHERE email = ? AND username = ?";
    public UserRepositoryImpl() {
    }

    private Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(SQL_URL, SQL_USERNAME, SQL_PASSWORD);
        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException(e);
        }
        return connection;
    }

    @Override
    public boolean signup(User user) {
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SIGNUP_SQL)) {
            User checkUser = findUserByEmail(user.getEmail());
            if (checkUser == null) {
                preparedStatement.setString(1, user.getLoginId());
                preparedStatement.setString(2, user.getEmail());
                preparedStatement.setString(3, user.getDob());
                preparedStatement.setString(4, user.getLoginId());
                preparedStatement.setString(5, user.getPassword());
                preparedStatement.setString(6, "SIMPLE_USER");
                preparedStatement.executeUpdate();
                return true;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return false;
    }

    @Override
    public User login(String loginId, String password) {
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(LOGIN_SQL)) {
            preparedStatement.setString(1, loginId);
            preparedStatement.setString(2, password);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("user_id");
                String displayName = resultSet.getString("display_name");
                String email = resultSet.getString("email");
                String dob = resultSet.getString("dob");
                String role = resultSet.getString("role_name");
                User user = new User(id, displayName, email, dob, loginId, password, role);
                return user;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }

    @Override
    public void editUser(User user) {
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_USER)) {
            preparedStatement.setString(1, user.getUserName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getDob());
            preparedStatement.setInt(4, user.getUserId());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public boolean deleteUser(int userId) {
        Connection connection = getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE_USER);
            preparedStatement.setInt(1,userId);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return true;
    }

    @Override
    public boolean forgetPassword(String email, String username, String newPassword, String confirmPassword) {
        try (Connection connection = getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement(FORGET_PASSWORD_SQL)) {
                if (newPassword.equals(confirmPassword)) {
                    preparedStatement.setString(1, newPassword);
                    preparedStatement.setString(2, email);
                    preparedStatement.setString(3, username);
                    return preparedStatement.executeUpdate() > 0;
                } else {
                    return false;
                }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    private User findUserByEmail(String email) {
        try (Connection connection = getConnection();
        PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM case_study.users WHERE email = ?")) {
            preparedStatement.setString(1, email);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("user_id");
                String displayName = resultSet.getString("display_name");
                String dob = resultSet.getString("dob");
                String username = resultSet.getString("username");
                String password = resultSet.getString("login_password");
                String role = resultSet.getString("role_name");
                return new User(id, displayName, email, dob, username, password, role);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }
    public User getByIdUser(int id) {
        User user = null;
        PreparedStatement statement = null;
        try {
            statement = getConnection().prepareStatement(GET_USER_BY_ID);
            statement.setInt(1, id);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                int user_id = resultSet.getInt("user_id");
                String userName = resultSet.getString("display_Name");
                String email = resultSet.getString("email");
                String dob = resultSet.getString("dob");
                String loginId = resultSet.getString("username");
                String login_password = resultSet.getString("login_password");
                String role = resultSet.getString("role_name");
                user = new User(user_id, userName, email, dob, loginId, login_password, role);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            try {
                statement.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            return user;
        }
    }

    @Override
    public List<User> selectAllUser() {
        Connection connection = getConnection();
        List<User> userList = new ArrayList<>();
        User user;
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(SELECT_USER);
            while (resultSet.next()){
                int id = resultSet.getInt("user_id");
                String name = resultSet.getString("display_name");
                String email = resultSet.getString("email");
                String dob = resultSet.getString("dob");
                String userName = resultSet.getString("username");
                String loginPassword = resultSet.getString("login_password");
                String roleName = resultSet.getString("role_name");
                user = new User(id,name,email,dob,userName,loginPassword,roleName);
                userList.add(user);
            }
            resultSet.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return userList;
    }
}