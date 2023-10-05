package com.example.english.controller;

import com.example.english.service.IHistoryService;
import com.example.english.service.impl.HistoryService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "historyServlet", value = "/history-servlet")
public class HistoryServlet extends HttpServlet {
    private IHistoryService historyService = new HistoryService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int userid = Integer.parseInt(request.getParameter("userId"));
        request.setAttribute("historyList",historyService.display(userid));
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/my_page.jsp");
        requestDispatcher.forward(request,response);
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
