package com.example.english.controller;

import com.example.english.model.Result;
import com.example.english.service.IHistoryService;
import com.example.english.service.impl.HistoryService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.List;

@WebServlet(name = "historyServlet", value = "/history-servlet")
public class HistoryServlet extends HttpServlet {
    private IHistoryService historyService = new HistoryService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action==null){
            action="";
        }
        switch (action){
            case "displayHistory":
                displayHistory(request,response);
                break;
            case "displayResult":
                displayResult(request,response);
                break;
            default:

        }

    }

    private void displayHistory(HttpServletRequest request, HttpServletResponse response) {
        int userid = Integer.parseInt(request.getParameter("userId"));
        request.setAttribute("historyList",historyService.display(userid));
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/history.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void displayResult(HttpServletRequest request, HttpServletResponse response) {
        LocalDateTime dateTime = LocalDateTime.parse(request.getParameter("date"));
        List<Result> resultList=historyService.displayResult(dateTime);
        int totalScore=0;
        for (Result result:resultList){
            totalScore+=result.getScore();
        }
        request.setAttribute("resultList",resultList);
        request.setAttribute("totalScore",totalScore);
        RequestDispatcher requestDispatcher= request.getRequestDispatcher("/result_history.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String action = request.getParameter("action");
//        if (action==null){
//            action="";
//        }
//        switch (action){
//            case "submit":
//                break;
//        }
    }


}
