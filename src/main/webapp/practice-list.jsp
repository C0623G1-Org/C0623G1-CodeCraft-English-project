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
<header>
    <nav class="navbar navbar-expand-lg bg-light">
        <div class="container-fluid" id="navbarMain">
            <a class="navbar-brand" href="#"><i class="fa-solid fa-book"></i></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false"
                    aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/homePage.jsp">Trang chủ </a>
                    </li>

                    <li class="nav-item" id="slogan">
                        <a class="nav-link active" aria-current="page" href="#">
                            The more you practice the better you get !!!
                        </a>
                    </li>
                </ul>
                <a href="login.html" role="button" class="btn btn-lg btn-primary" id="user">
                    <i class="fa-regular fa-user"></i>
                    Trần Văn A
                </a>
            </div>
        </div>
    </nav>
</header>

<div class="container-fluid" id="page_body">

    <form action="/result?action=submit" class="needs-validation" novalidate method="post">
        <div class="row ">
            <div class="col-lg-2"></div>
            <div class="col-lg-8">
                <div class="practice">
                    <h3>Làm bài</h3>
                </div>

                <div class="row text-dark" >
                    <c:forEach var="qs" items="${questionList}" varStatus="loop">
                        <div class="form-group col-lg-6">
                            <label for="${qs.question}"
                                   class="font-weight-bold text"> ${loop.count}) ${qs.question}
                            </label>
                            <input type="hidden" name="questionId" value="${qs.id}">
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
                                <div class="invalid-feedback">
                                    Bạn hãy chọn đáp án!
                                </div>
                            </div>
                        </div>
                    </c:forEach>

                </div>
                <div class="submit hover-zoom">
                    <input type="hidden" name="userId" value="${user.userId}">
                    <button style="text-align: right" type="submit" name="submit">Chấm điểm</button>
                </div>
            </div>
            <div class="col-lg-2">

            </div>

        </div>

    </form>

</div>

<%--Footer--%>
<div class="footer">

    <div class="row">
        <div class="col-lg-4 col-md-12">
            <h5>Hotline</h5>
        </div>
        <div class="col-lg-4 col-md-12">
            <h5>Follow Us</h5>

        </div>
        <div class="col-lg-4 col-md-12">
            <h5>CONTACT</h5>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-4 col-md-12">

            <p>1900-7582</p>
        </div>
        <div class="col-lg-4 col-md-12">
            <p>
                <a href="" class="btn btn-icon btn-round social-facebook m-1">
                    <i class="icon fa fa-facebook" aria-hidden="true"></i>
                </a>
                <a href="" class="btn btn-icon btn-round social-linkedin m-1">
                    <i class="icon fa fa-linkedin" aria-hidden="true"></i>
                </a>
                <a href="" class="btn btn-icon btn-round social-youtube m-1">
                    <i class="icon fa fa-youtube" aria-hidden="true"></i>
                </a>
            </p>

        </div>
        <div class="col-lg-4 col-md-12">
            <ol>
                <li>Đoàn Thị Hương Ly</li>
                <li>Nguyễn Đình Nam</li>
                <li>Đào Đức Duy</li>
                <li>Lê Tự Khoa</li>
            </ol>
        </div>
    </div>
</div>


<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
        crossorigin="anonymous"></script>
<script>
    (() => {
        'use strict'

        // Fetch all the forms we want to apply custom Bootstrap validation styles to
        const forms = document.querySelectorAll('.needs-validation')

        // Loop over them and prevent submission
        Array.from(forms).forEach(form => {
            form.addEventListener('submit', event => {
                if (!form.checkValidity()) {
                    event.preventDefault()
                    event.stopPropagation()
                }

                form.classList.add('was-validated')
            }, false)
        })
    })()
</script>
</body>
</html>
