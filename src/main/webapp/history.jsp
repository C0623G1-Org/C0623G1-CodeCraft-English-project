<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 10/8/2023
  Time: 10:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Lịch sử</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<!-- NAVBAR -->
<header>
    <h2 class="logo"><img src="../logo5.png" alt=""></h2>
    <nav class="navigation">
        <c:choose>
            <c:when test="${user == null}">
                <a href="../homePage.jsp">Trang chủ</a>
            </c:when>
            <c:otherwise>
                <a href="../homePage.jsp">Trang chủ</a>
                <a href="../my_page.jsp" class="user">
                    <ion-icon name="person-circle-outline"></ion-icon>
                        ${user.userName}</a>
            </c:otherwise>
        </c:choose>
    </nav>
</header>

<div class="history">

    <table class="table">
        <thead>
        <tr>
            <th scope="col">Stt</th>
            <th scope="col">Thời gian</th>
            <th scope="col">Số điểm</th>
            <th scope="col">Chi tiết</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${historyList}" var="h" varStatus="look">
            <tr>
                <th scope="row">${look.count}</th>
                <td>${h.date}</td>
                <td>${h.totalScore}</td>
                <td>
                    <a href="/history-servlet?action=displayResult&date=${h.date}">Chi tiết</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
