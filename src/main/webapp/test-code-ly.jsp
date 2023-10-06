<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 10/5/23
  Time: 9:17 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form class="row g-3 needs-validation" novalidate>
    <div class="form-check">
        <input type="radio" class="form-check-input" name="answer_${qs.id}" id="answerA_${qs.id}"
               value="${qs.answerA}" required>
        <label class="form-check-label" for="answerA_${qs.id}">${qs.answerA}</label>
    </div>
    <div class="form-check">
        <input type="radio" class="form-check-input" name="answer_${qs.id}" id="answerA_${qs.id}"
               value="${qs.answerB}" required>
        <label class="form-check-label" for="answerA_${qs.id}">${qs.answerB}</label>
    </div>
    <div class="form-check">
        <input type="radio" class="form-check-input" name="answer_${qs.id}" id="answerA_${qs.id}"
               value="${qs.answerC}" required>
        <label class="form-check-label" for="answerA_${qs.id}">${qs.answerC}</label>
    </div>
    <div class="form-check">
        <input type="radio" class="form-check-input" name="answer_${qs.id}" id="answerA_${qs.id}"
               value="${qs.answerD}" required>
        <label class="form-check-label" for="answerA_${qs.id}">${qs.answerD}</label>
    </div>
    <div class="invalid-feedback">
        You must agree before submitting.
    </div>
    <div class="col-12">
        <button class="btn btn-primary" type="submit">Submit form</button>
    </div>
</form>
</body>
</html>
<%--        <c:forEach var="qs" items="${questionList}" varStatus="loop">--%>
<%--            <div class="form-group">--%>
<%--                <label for="${qs.question}"--%>
<%--                       class="font-weight-bold text"> ${loop.count}) ${qs.question}--%>
<%--                </label>--%>
<%--                <input type="hidden" name="questionId" value="${qs.id}">--%>
<%--                <div class="form-check">--%>
<%--                    <input class="form-check-input" type="radio" required name="answer_${qs.id}" id="answerA_${qs.id}"--%>
<%--                           value="${qs.answerA}">--%>
<%--                    <label class="form-check-label" for="${loop.count})">--%>
<%--                            ${qs.answerA}--%>
<%--                    </label>--%>
<%--                    <div class="invalid-feedback">--%>
<%--                        Please select a valid state.--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="form-check">--%>
<%--                    <input class="form-check-input" type="radio" name="answer_${qs.id}" id="answerB_${qs.id}"--%>
<%--                           value="${qs.answerB}">--%>
<%--                    <label class="form-check-label" for="${loop.count})">--%>
<%--                            ${qs.answerB}--%>
<%--                    </label>--%>
<%--                </div>--%>
<%--                <div class="form-check">--%>
<%--                    <input class="form-check-input" type="radio" name="answer_${qs.id}" id="answerC_${qs.id}"--%>
<%--                           value="${qs.answerC}">--%>
<%--                    <label class="form-check-label" for="${loop.count})">--%>
<%--                            ${qs.answerC}--%>
<%--                    </label>--%>
<%--                </div>--%>
<%--                <div class="form-check">--%>
<%--                    <input class="form-check-input" type="radio" name="answer_${qs.id}" id="answerD_${qs.id}"--%>
<%--                           value=" ${qs.answerD}">--%>
<%--                    <label class="form-check-label" for="${loop.count})">--%>
<%--                            ${qs.answerD}--%>
<%--                    </label>--%>
<%--                </div>--%>

<%--            </div>--%>
<%--        </c:forEach>--%>


<!-- NAVBAR -->
<%--<nav class="navbar navbar-expand-lg bg-light">--%>
<%--    <div class="container-fluid" id="navbarMain">--%>
<%--        <a class="navbar-brand" href="#"><i class="fa-solid fa-book"></i></a>--%>
<%--        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"--%>
<%--                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"--%>
<%--                aria-label="Toggle navigation">--%>
<%--            <span class="navbar-toggler-icon"></span>--%>
<%--        </button>--%>
<%--        <div class="collapse navbar-collapse" id="navbarSupportedContent">--%>
<%--            <ul>--%>
<%--                <img id="image" rel="stylesheet"--%>
<%--                     src="https://w7.pngwing.com/pngs/485/25/png-transparent-foreign-language-english-language-verb-part-of-speech-ingles-logo-word-course-thumbnail.png">--%>
<%--            </ul>--%>
<%--            <ul class="navbar-nav me-auto mb-2 mb-lg-0">--%>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link active" aria-current="page" href="/homePage.jsp">Trang chủ </a>--%>
<%--                </li>--%>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link" href="/homePage.jsp">Giới thiệu </a>--%>
<%--                </li>--%>
<%--                <li class="nav-item" id="slogan">--%>
<%--                    <a class="nav-link active" aria-current="page" href="#">--%>
<%--                        The more you practice the better you get !!!--%>
<%--                    </a>--%>
<%--                </li>--%>
<%--            </ul>--%>
<%--            <!--      <a href="login.html" role="button" class="btn btn-lg btn-primary" id="user"><i class="fa-regular fa-user"></i> Đăng nhập</a>-->--%>
<%--            <ul class="nav-item dropdown" id="user_name">--%>
<%--                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"--%>
<%--                   aria-expanded="false">Tên user--%>
<%--                </a>--%>
<%--                <i class="fa-regular fa-user"></i>--%>
<%--                <ul class="dropdown-menu">--%>
<%--                    <li><a class="dropdown-item" href=" /my_page.jsp" style="color: black">Trang của tôi</a></li>--%>
<%--                    <li><a class="dropdown-item" href="#" style="color: black">Đăng xuất</a></li>--%>
<%--                    <li>--%>
<%--                        <hr class="dropdown-divider">--%>
<%--                    </li>--%>
<%--                </ul>--%>
<%--            </ul>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</nav>--%>
<%--<div>--%>
