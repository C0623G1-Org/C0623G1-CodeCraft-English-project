package com.example.english.controller;

import com.example.english.model.Difficulty;
import com.example.english.model.User;
import com.example.english.service.IDifficultyService;
import com.example.english.service.IUserService;
import com.example.english.service.impl.DifficultyServiceImpl;
import com.example.english.service.impl.UserServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "UserServlet", value = "")
public class UserServlet extends HttpServlet {
    private final IUserService userService = new UserServiceImpl();
    private final IDifficultyService difficultyService = new DifficultyServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "getUser":
                getUserById(request, response);
                break;
            case "logOut":
                logOut(request, response);
                break;
            case "selectAll":
                showListUser(request,response);
                break;
            case "fill-form":
                fillForm(request,response);
                break;
            default:
                homePage(request, response);
                break;
        }
    }

    private void fillForm(HttpServletRequest request, HttpServletResponse response) {
        User user = userService.getByIdUser(Integer.parseInt(request.getParameter("id")));
            request.setAttribute("user",user);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/edit_my_page.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showListUser(HttpServletRequest request, HttpServletResponse response) {
        List<User> userList =userService.selectAllUser();
        request.setAttribute("users",userList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/admin.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void deleteUser(HttpServletRequest request, HttpServletResponse response){
        int id = Integer.parseInt(request.getParameter("id"));
        userService.deleteUser(id);
        showListUser(request,response);
    }

    private void logOut(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        session.invalidate();
        response.sendRedirect("/");
    }

    private void getUserById(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        try {
            User getIdUser = userService.getByIdUser(id);

            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/my_page.jsp");
            request.setAttribute("getIdUser",getIdUser);
            requestDispatcher.forward(request,response);
          
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void editUserById(HttpServletRequest request,HttpServletResponse response){
        int id = Integer.parseInt(request.getParameter("userId"));
        String name = request.getParameter("userName");
        String email = request.getParameter("email");
        String dob = request.getParameter("dob");
        User user = new User(id,name,email,dob);
        userService.editUser(user);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/my_page.jsp");
        request.setAttribute("user",user);
        try {
            requestDispatcher.forward(request,response);

        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "login":
                login(request, response);
                break;
            case "signup":
                signup(request, response);
                break;
            case "forget-password":
                forgetPassword(request, response);
                break;
            case "edit":
                editUserById(request, response);
                break;
            case "delete":
                deleteUser(request,response);
                break;
        }
    }

    private void forgetPassword(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String username = request.getParameter("userName");
        String newPassword = request.getParameter("newPassword");
        String confirmPassword = request.getParameter("confirmPassword");
        String error = "Các thông tin nhập vào không chính xác";
        String success = "Đổi mật khẩu thành công, vui lòng đăng nhập lại";
        boolean result = userService.forgetPassword(email, username, newPassword, confirmPassword);
        if (result) {
            request.setAttribute("success", success);
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/homePage.jsp");
            requestDispatcher.forward(request, response);
        } else {
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/forget-password.jsp");
            request.setAttribute("error", error);
            requestDispatcher.forward(request, response);
        }
    }

    private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = userService.login(request.getParameter("loginId"), request.getParameter("password"));
        if (user != null) {
            HttpSession session = request.getSession();
            List<Difficulty> difficultyList = difficultyService.showDifficulties();
            request.setAttribute("difficultyList", difficultyList);
            session.setAttribute("user", user);
            session.setAttribute("difficultyList", difficultyList);
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/homePage.jsp");
            requestDispatcher.forward(request, response);
        } else {
            String error = "Sai tên đăng nhập hoặc mật khẩu";
            request.setAttribute("loginError", error);
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/homePage.jsp");
            requestDispatcher.forward(request, response);
        }
    }

    private void signup(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("pswd");
        String confirm = request.getParameter("cfrm pswd");
        RequestDispatcher requestDispatcher;
        if (password.equals(confirm)) {
            User user = new User(email, name, password);
            switch (userService.signupValidation(name, email)) {
                case 1: // Tên đăng nhập tồn tại
                    String usernameExist = "Tên đăng nhập đã tồn tại";
                    request.setAttribute("signupError", usernameExist);
                    requestDispatcher = request.getRequestDispatcher("/homePage.jsp");
                    requestDispatcher.forward(request, response);
                    break;
                case 2: // Email tồn tại
                    String emailExist = "Địa chỉ email đã tồn tại";
                    request.setAttribute("signupError", emailExist);
                    requestDispatcher = request.getRequestDispatcher("/homePage.jsp");
                    requestDispatcher.forward(request, response);
                    break;
                default:
                    userService.signup(user);
                    request.setAttribute("name", name);
                    request.setAttribute("password", password);
                    requestDispatcher = request.getRequestDispatcher("/homePage.jsp");
                    requestDispatcher.forward(request, response);
                    break;
            }
//            if (userService.signup(user)) {
//                request.setAttribute("name", name);
//                request.setAttribute("password", password);
//                RequestDispatcher requestDispatcher = request.getRequestDispatcher("homePage.jsp");
//                requestDispatcher.forward(request, response);
//            } else if (userService.signupValidation(name, email) == 2){
//                request.setAttribute("signupError", emailExist);
//                RequestDispatcher requestDispatcher = request.getRequestDispatcher("homePage.jsp");
//                requestDispatcher.forward(request, response);
//            }
        } else {
            String error = "Xác nhận mật khẩu không chính xác";
            request.setAttribute("signupError", error);
            requestDispatcher = request.getRequestDispatcher("/homePage.jsp");
            requestDispatcher.forward(request, response);
        }
    }

    private void homePage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/homePage.jsp");
        requestDispatcher.forward(request, response);
    }
}