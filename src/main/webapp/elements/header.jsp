
<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 10/4/2023
  Time: 5:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../home-page.css">
    <link rel="stylesheet" href="../style.css">
</head>
<body>
<!-- NAVBAR -->
<header>
    <h2 class="logo"><img src="../logo5.png" alt=""></h2>
    <nav class="navigation">
        <c:choose>
            <c:when test="${user == null}">
                <a href="../homePage.jsp">Trang chủ</a>
                <a class="aboutUs" href="#">Giới thiệu</a>
                <a class="doTest" href="#">Luyện đề</a>
                <button class="btnLogin-popup">Đăng nhập</button>
            </c:when>
            <c:otherwise>
                <a href="../homePage.jsp">Trang chủ</a>
                <a class="aboutUs" href="#">Giới thiệu</a>
                <a class="doTest" href="#">Luyện đề</a>
                <a href="../my_page.jsp" class="user">
                    <ion-icon name="person-circle-outline"></ion-icon>
                        ${user.userName}</a>
            </c:otherwise>
        </c:choose>
    </nav>
</header>
</body>
</html>
