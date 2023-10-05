package com.example.english.controller;

import com.example.english.model.User;
import com.example.english.service.IUserService;
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

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "getUser":
                getUserById(request,response);
                break;
            case "delete":
                deleteUser(request,response);
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

//    private int userId;
//    private String userName;
//    private String email;
//    private String dob;
//    private String loginId; //ko dc edit
//    private String password; // ko dc hien thi
//    private String role; // ko dc edit
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
        request.setAttribute("userList",userList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/my_page.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void deleteUser(HttpServletRequest request, HttpServletResponse response){
        int id = Integer.parseInt(request.getParameter("id"));
        User user = userService.getByIdUser(id);
        if(user!=null){
            request.setAttribute("user",user);
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/my_page.jsp");
            try {
                requestDispatcher.forward(request,response);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    private void getUserById(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        try {
            User getIdUser = userService.getByIdUser(id);
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/edit_my_page.jsp");
            request.setAttribute("getIdUser",getIdUser);
            requestDispatcher.forward(request,response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void editUserById(HttpServletRequest request,HttpServletResponse response){
        int id = Integer.parseInt(request.getParameter("id"));
        RequestDispatcher requestDispatcher = null;
        try {
            User user = userService.getByIdUser(id);
            request.setAttribute("user",user);
            requestDispatcher = request.getRequestDispatcher("/edit_my_page.jsp");
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
                editUserById(request,response);
                break;
        }
    }

    private void forgetPassword(HttpServletRequest request, HttpServletResponse response) {

    }

    private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = userService.login(request.getParameter("loginId"), request.getParameter("password"));
        if (user != null) {
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/home-page-logged-in.jsp");
            requestDispatcher.forward(request, response);
        } else {
            String error  = "Sai tên đăng nhập hoặc mật khẩu";
            request.setAttribute("error", error);
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/login.jsp");
            requestDispatcher.forward(request, response);
        }
    }

    private void signup(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("pswd");
        String confirm = request.getParameter("cfrm pswd");
        String error = "Xác nhận mật khẩu không chính xác";
        if (password.equals(confirm)) {
            User user = new User(email, name,  password);
            userService.signup(user);
            request.setAttribute("name", name);
            request.setAttribute("password", password);
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/login.jsp");
            requestDispatcher.forward(request, response);
        } else {
            request.setAttribute("error", error);
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("/reg.jsp");
            requestDispatcher.forward(request, response);
        }
    }

    private void homePage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/homePage.jsp");
        requestDispatcher.forward(request, response);
    }
}