<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 10/2/23
  Time: 4:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Practice List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="practice-list.css">
</head>
<body>
<h3>Làm bài</h3>
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
            <ul>
                <img id="image" rel="stylesheet"
                     src="https://w7.pngwing.com/pngs/485/25/png-transparent-foreign-language-english-language-verb-part-of-speech-ingles-logo-word-course-thumbnail.png">
            </ul>
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Trang chủ </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Giới thiệu </a>
                </li>
                <li class="nav-item" id="slogan">
                    <a class="nav-link active" aria-current="page" href="#">
                        The more you practice the better you get !!!
                    </a>
                </li>
            </ul>
            <!--      <a href="login.html" role="button" class="btn btn-lg btn-primary" id="user"><i class="fa-regular fa-user"></i> Đăng nhập</a>-->
            <ul class="nav-item dropdown" id="user_name">
                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                   aria-expanded="false">Tên user
                </a>
                <i class="fa-regular fa-user"></i>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="#" style="color: black">Trang của tôi</a></li>
                    <li><a class="dropdown-item" href="#" style="color: black">Đăng xuất</a></li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>
                </ul>
            </ul>
        </div>
    </div>
</nav>
<div>
    <div class="container-fluid" id="page_body">
        <h3>Làm bài</h3>
        <form>
            <c:forEach var="qs" items="${questionList}" varStatus="loop">
                <div class="form-group">
                    <label for="${qs.question}"
                           class="font-weight-bold text-capitalize">${loop.count}) ${qs.question}</label>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="question_group_1" id="question_1_1"
                               value="option1">
                        <label class="form-check-label" for="question_1_1">
                                ${qs.answerA}
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="question_group_1" id="question_1_2"
                               value="option2">
                        <label class="form-check-label" for="question_1_2">
                                ${qs.answerB}
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="question_group_1" id="question_1_3"
                               value="option3">
                        <label class="form-check-label" for="question_1_3">
                                ${qs.answerC}
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="question_group_1" id="question_1_4"
                               value="option4">
                        <label class="form-check-label" for="question_1_3">
                                ${qs.answerD}
                        </label>
                    </div>
                </div>
            </c:forEach>
        </form>
        <button type="submit" name="submit">Chấm điểm</button>
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


<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
        crossorigin="anonymous"></script>
</body>
</html>
