<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 10/4/2023
  Time: 5:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="home-page.css">
</head>
<body>
<!-- NAVBAR -->
<nav class="navbar navbar-expand-lg bg-light">
    <div class="container-fluid" id="navbarMain">
        <a class="navbar-brand" href="#"><i class="fa-solid fa-book"></i></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="homePage.jsp">TRANG CHỦ </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">GIỚI THIỆU </a>
                </li>
                <c:choose>
                    <c:when test="${user == null}">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                               aria-expanded="false">
                                LUYỆN ĐỀ
                            </a>
                            <ul class="dropdown-menu" style="padding-right: 40px;">
                                <li><a class="dropdown-item" href="reg.jsp" style="color: #000000;">LÀM ĐỀ DỄ</a></li>
                                <li><a class="dropdown-item" href="reg.jsp" style="color: #000000;">LÀM ĐỀ TRUNG BÌNH</a></li>
                                <li><a class="dropdown-item" href="reg.jsp" style="color: #000000;">LÀM ĐỀ KHÓ</a></li>
                            </ul>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                               aria-expanded="false">
                                LUYỆN ĐỀ
                            </a>
                            <ul class="dropdown-menu" style="padding-right: 40px;">
                                <li><a class="dropdown-item" href="/question-servlet?action=create-test&level=1" style="color: #000000;">LÀM ĐỀ DỄ</a></li>
                                <li><a class="dropdown-item" href="/question-servlet?action=create-test&level=2" style="color: #000000;">LÀM ĐỀ TRUNG BÌNH</a></li>
                                <li><a class="dropdown-item" href="/question-servlet?action=create-test&level=3" style="color: #000000;">LÀM ĐỀ KHÓ</a></li>
                            </ul>
                        </li>
                    </c:otherwise>
                </c:choose>

            </ul>
            <c:choose>
                <c:when test="${user == null}">
                    <a href="login.jsp" role="button" class="btn btn-lg btn-primary" id="user"><i
                            class="fa-regular fa-user"></i> ĐĂNG NHẬP</a>
                </c:when>
                <c:otherwise>
                    <li class="nav-item dropdown" style="list-style: none; margin-right: 30px">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                           aria-expanded="false"><i class="fa-regular fa-user"></i>
                                ${user.userName}
                        </a>
                        <ul class="dropdown-menu" style="padding-right: 40px; overflow: hidden">
                            <li><a class="dropdown-item" href="my_page.jsp" style="color: #000000;">Hồ sơ</a></li>

                            <c:choose>
                                <c:when test="${user.role == 'ADMIN'}">
                                    <li><a class="dropdown-item" href="/?action=selectAll" style="color: #000000;">Admin</a></li>
                                </c:when>
                            </c:choose>
                           
                            <li><a class="dropdown-item" href="/?action=logOut" style="color: #000000;">Đăng xuất</a></li>

                        </ul>
                    </li>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
</nav>
</body>
</html>
