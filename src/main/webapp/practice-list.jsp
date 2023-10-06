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
    <c:import url="header.jsp"></c:import>
</header>

<div class="container-fluid" id="page_body">

    <form action="/result?action=submit" class="needs-validation" novalidate method="post">
        <div class="body-row">
            <div class="col-lg-2"></div>
            <div class="col-lg-8">
                <div class="practice">
                    Câu hỏi 1 - 10
                </div>
                <div class="row-question text-dark" >
                    <c:forEach var="qs" items="${questionList}" varStatus="loop">
                        <section class="question-group">
                            <div class="form-group">
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
                                    <input type="radio" class="form-check-input" name="answer_${qs.id}" id="answerB_${qs.id}"
                                           value="${qs.answerB}" required>
                                    <label class="form-check-label" for="answerB_${qs.id}">${qs.answerB}</label>
                                </div>
                                <div class="form-check">
                                    <input type="radio" class="form-check-input" name="answer_${qs.id}" id="answerC_${qs.id}"
                                           value="${qs.answerC}" required>
                                    <label class="form-check-label" for="answerC_${qs.id}">${qs.answerC}</label>
                                </div>
                                <div class="form-check">
                                    <input type="radio" class="form-check-input" name="answer_${qs.id}" id="answerD_${qs.id}"
                                           value="${qs.answerD}" required>
                                    <label class="form-check-label" for="answerD_${qs.id}">${qs.answerD}</label>
                                    <div class="invalid-feedback">
                                        Bạn hãy chọn đáp án!
                                    </div>
                                </div>
                            </div>
                        </section>
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

<!-- FOOTER -->
<c:import url="footer.jsp"></c:import>

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
