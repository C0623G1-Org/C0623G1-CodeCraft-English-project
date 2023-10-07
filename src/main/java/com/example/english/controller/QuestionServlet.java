package com.example.english.controller;


import com.example.english.model.Question;
import com.example.english.model.Result;
import com.example.english.service.IQuestionService;
import com.example.english.service.impl.QuestionServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "QuestionServlet", value = "/question-servlet")
public class QuestionServlet extends HttpServlet {
    private final IQuestionService questionService = new QuestionServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        action = action == null ? "" : action;
        switch (action) {
            case "create-test":
                
                break;
            default:
                createTest(request, response);
                break;
        }
    }

    private void createTest(HttpServletRequest request, HttpServletResponse response) {
        int level = Integer.parseInt(request.getParameter("level"));
        List<Question> questionList = questionService.createTest(level);
        request.setAttribute("questionList", questionList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("practice-list.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
