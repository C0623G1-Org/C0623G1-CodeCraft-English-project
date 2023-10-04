package com.example.english.controller;

import com.example.english.model.Result;
import com.example.english.service.IResultService;
import com.example.english.service.impl.ResultServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "resultServlet", value = "/result")
public class ResultServlet extends HttpServlet {
    private IResultService resultService = new ResultServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        formResult(request, response);
    }

    private void formResult(HttpServletRequest request, HttpServletResponse response) {
        List<Result> resultList = resultService.getAll();
        request.setAttribute("totalScore", resultService.score());
        request.setAttribute("result", resultList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/result.jsp");
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
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "result":
                result(request, response);
            default:

        }
    }

    private void result(HttpServletRequest request, HttpServletResponse response) {
//        String question = request.getParameter("question");
//        String seletectedAnswer = request.getParameter("seletectedAnswer");
//        String correctAnswer = request.getParameter("correctAnswer");
//        int score = Integer.parseInt(request.getParameter("score"));
//        Result result = new Result(question, seletectedAnswer, correctAnswer, score);
//        resultService.create(result);
    }

}