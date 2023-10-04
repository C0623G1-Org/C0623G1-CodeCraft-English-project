package com.example.english.controller;

import com.example.english.model.Question;
import com.example.english.model.Result;
import com.example.english.service.IQuestionService;
import com.example.english.service.IResultService;
import com.example.english.service.impl.QuestionServiceImpl;
import com.example.english.service.impl.ResultServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "resultServlet", value = "/result")
public class ResultServlet extends HttpServlet {
    private IResultService resultService = new ResultServiceImpl();
    private IQuestionService questionService = new QuestionServiceImpl();

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
                break;
            case "submit" :
                try {
                    submit(request, response);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;

            default:
                break;

        }
    }

    private void result(HttpServletRequest request, HttpServletResponse response) {
//        String question = request.getParameter("question");
//        String selectedAnswer = request.getParameter("selectedAnswer");
//        String correctAnswer = request.getParameter("correctAnswer");
//        int score = Integer.parseInt(request.getParameter("score"));
//        Result result = new Result(question, selectedAnswer, correctAnswer, score);
//        resultService.create(result);
    }

    private void submit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        String level = request.getParameter("level");
        List<Result> resultList = new ArrayList<>();
        String[] questionId = request.getParameterMap().get("questionId");
        Question question = null;
        int score = 0;
        for (String id : questionId) {
            question = questionService.findQuestionById(Integer.parseInt(id));
            String selectedAnswer = request.getParameter("answer_" + id);
            String question_content = question.getQuestion();
            String rightAnswer = question.getRightAnswer();

            if(selectedAnswer.equals(rightAnswer)) {
                score = 1;
            } else {
                score = 0;
            }
            resultList.add(new Result(question_content, selectedAnswer, rightAnswer, score));

        }
        RequestDispatcher rq = request.getRequestDispatcher("/result.jsp");
        request.setAttribute("resultList", resultList);
        rq.forward(request,response);
    }
//    private int questionId;
//    private String question;
//    private String seletectedAnswer;
//    private String rightAnswer;
//    private int score;
}