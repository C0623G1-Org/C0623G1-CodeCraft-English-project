package com.example.english.controller;

import com.example.english.model.History;
import com.example.english.model.Question;
import com.example.english.model.Result;
import com.example.english.service.IHistoryService;
import com.example.english.service.IQuestionService;
import com.example.english.service.IResultService;
import com.example.english.service.impl.HistoryService;
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
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "resultServlet", value = "/result")
public class ResultServlet extends HttpServlet {
    private IResultService resultService = new ResultServiceImpl();
    private IQuestionService questionService = new QuestionServiceImpl();
    private IHistoryService historyService=new HistoryService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
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

    private void submit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        List<Result> resultList = new ArrayList<>();
        List<Result> saveResult = new ArrayList<>();
        String[] questionId = request.getParameterMap().get("questionId");
        int userId = Integer.parseInt(request.getParameter("userId"));
        LocalDateTime dateTime = LocalDateTime.now();
        History history = new History(userId,dateTime);
        historyService.create(history);
        Question question = null;
        int score ;
        for (String id : questionId) {
            question = questionService.findQuestionById(Integer.parseInt(id));
            String selectedAnswer = request.getParameter("answer_" + id);
            String question_content = question.getQuestion();
            String rightAnswer = question.getRightAnswer();
            int historyId = historyService.findByDate(dateTime);

            if(rightAnswer.equals(selectedAnswer)) {
                score = 1;
            }else {
                score=0;
            }
            resultList.add(new Result(question_content, selectedAnswer, rightAnswer, score));
            saveResult.add(new Result(Integer.parseInt(id),selectedAnswer,historyId,score));
        }
        int totalScore = 0;
        for (Result r:resultList){
            totalScore+=r.getScore();
        }
        request.setAttribute("totalScore",totalScore);
        RequestDispatcher rq = request.getRequestDispatcher("/result.jsp");
        request.setAttribute("resultList", resultList);
        rq.forward(request,response);
        resultService.saveResult(saveResult);
    }
}