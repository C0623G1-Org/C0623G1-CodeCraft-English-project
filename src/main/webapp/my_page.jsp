<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--<!doctype html>-->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="css_my_page.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<%--    <script src="../../bootstrap-5.2.3-dist/js/bootstrap.bundle.js"></script>--%>

</head>
<body>
<div class="container-fluid">
    <div class="main">
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
                            <a class="nav-link active" aria-current="page" href="homePage.jsp">Trang chủ </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="homePage.jsp">Giới thiệu </a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                               aria-expanded="false">
                                Luyện đề
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#" style="color: #000000;">Làm đề dễ</a></li>
                                <li><a class="dropdown-item" href="#" style="color: #000000;">Làm đề trung bình</a></li>
                                <li><a class="dropdown-item" href="#" style="color: #000000;">Làm đề khó</a></li>
                            </ul>
                        </li>
                    </ul>
<!--                    <a href="login.html" role="button" class="btn btn-lg btn-primary" id="user"><i class="fa-regular fa-user"></i> Đăng nhập</a>-->
                </div>
            </div>
        </nav>
        <div class="row">
            <div class="col-md-4 mt-0">
                <div class="card-left text-center sidebar">
                    <div class="card-body">
                        <img src="img.jpg" class="rounded-circle" width="150" alt="">
                        <div class="mt-3">
                            <h3 style="color: white">${getIdUser.userName}</h3>
<%--                            <a href="/history-servlet">--%>
<%--                              History</a>--%>
                            <form action="/history-servlet" >
                                <input type="hidden" name="userId" value="${user.userId}">
                                <button type="submit" style="background: #29313c; color: white">History</button>
                            </form>
                            <a href="edit_my_page.jsp">Setting</a>
                            <a href="homePage.jsp">Sign Out</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-right col-md-8 mt-0">
                <div class="mb-3 content">
                    <h1 class="m-3 pt-3">Information</h1>
                    <div class="card-body card-body-custom-left">
                        <div class="row">
                            <div class="col-md-3">
                                <h5>Full name</h5>
                            </div>
                            <div class="col-md-9 text-secondary">
                                ${getIdUser.userName}
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-3">
                                <h5>Email</h5>
                            </div>
                            <div class="col-md-9 text-secondary">
                                ${getIdUser.email}
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-md-3">
                                <h5>DATE OF BIRTH</h5>
                            </div>
                            <div class="col-md-9 text-secondary">
                                ${getIdUser.dob}
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card mb-3 content">
                    <table class="table">
                        <thead>
                        <tr>
                            <th scope="col">Stt</th>
                            <th scope="col">Time</th>
                            <th scope="col">Score</th>
                            <th scope="col">Detail</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${historyList}" var="h" varStatus="look">
                            <th scope="row">${look.count}</th>
                            <td>${h.date}</td>
                            <td>${h.totalScore}</td>
                            <td></td>
                        </c:forEach>
                        <tr>

                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="footer">
            <table>
                <tr>
                    <th><h5>COPYRIGHT</h5></th>
                    <th><h5>CONTACT</h5></th>
                </tr>
                <tr>
                    <td>by Codecraft team, all rights reserved</td>
                    <td>
                        <ol>
                            <li>Đoàn Thị Hương Ly</li>
                            <li>Nguyễn Đình Nam</li>
                            <li>Đào Đức Duy</li>
                            <li>Lê Tự Khoa</li>
                        </ol>
                    </td>
                </tr>
            </table>
        </div>
    </div>


</div>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"
        integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V"
        crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/ebdd867c54.js" crossorigin="anonymous"></script>
<%--<script src="../../bootstrap-5.2.3-dist/js/bootstrap.bundle.js"></script>--%>
</body>
</html>