<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 9/30/2023
  Time: 7:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Kết Quả</title>
<%--    <link rel="stylesheet" href="../bootstrap/bootstrap-5.2.3-dist/css/bootstrap.css">--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
          crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
</head>
<body>
<form action="/?action=submit" method="post">
    <header>
        <c:import url="header.jsp"></c:import>
    </header>

    <content class=" border-bottom-2">
        <div class="container">
            <table class="table" border="1px">
                <thead>
                <tr class="table-primary">
                    <th scope="col" style="width: 10%"></th>
                    <th scope="col" style="width: 40%">Câu hỏi</th>
                    <th scope="col" style="width: 20%">Đáp án chọn</th>
                    <th scope="col" style="width: 20%">Đán án đúng</th>
                    <th scope="col" style="width: 5%">Điểm</th>

                </tr>
                </thead>
                <tbody>
                <c:forEach items="${resultList}" var="result" varStatus="look">
                    <tr class="table-warning">
                        <th scope="row">Câu ${look.count}</th>
                        <td>${result.question}</td>
                        <td>${result.selectedAnswer}</td>
                        <td>${result.rightAnswer}</td>
                        <td>${result.score}</td>
                    </tr>
                </c:forEach>
                <tr class="table-primary">
                    <td colspan="4">
                        <span style="font-weight: bold">Tổng điểm</span>
                    </td>
                    <td>${tongDiem}</td>
                </tr>
                </tbody>
            </table>

        </div>
    </content>


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


</form>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/828ad8ef72.js" crossorigin="anonymous"></script>
</body>
</html>
