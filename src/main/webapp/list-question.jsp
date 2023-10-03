<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 10/2/23
  Time: 4:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Question List</title>
</head>
<body>
<a href="/?action=creat_practice_list">Tạo đề</a>
<h1>Question List</h1>
<%--private int id;--%>
<%--private int levelId;--%>
<%--private String question;--%>
<%--private String answerA;--%>
<%--private String answerB;--%>
<%--private String answerC;--%>
<%--private String answerD;--%>
<%--private String rightAnswer;--%>
<table border="1px">
    <thead>
    <tr>
        <th>STT</th>
        <th>Mức độ câu hỏi</th>
        <th>Câu hỏi</th>
        <th>Đáp án A</th>
        <th>Đáp án B</th>
        <th>Đáp án C</th>
        <th>Đáp án D</th>
        <th>Đáp án đúng</th>

    </tr>
    </thead>
    <tbody>
    <c:forEach var="qs" items="${questionList}" varStatus="loop">
        <tr>
            <td>${loop.count}</td>
            <td>${qs.levelId}</td>
            <td>${qs.question}</td>
            <td>${qs.answerA}</td>
            <td>${qs.answerB}</td>
            <td>${qs.answerC}</td>
            <td>${qs.answerD}</td>
            <td>${qs.rightAnswer}</td>
                <%--            <td><a href="/?action=select&id=${qs.id}">User detail</a></td>--%>
                <%--            <td><a href="/?action=delete&id=${qs.id}">Delete</a></td>--%>
                <%--            <td><a href="/?action=edit&id=${qs.id}">Update</a></td>--%>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>
