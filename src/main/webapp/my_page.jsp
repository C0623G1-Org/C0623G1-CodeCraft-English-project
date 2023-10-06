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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <%--    <script src="../../bootstrap-5.2.3-dist/js/bootstrap.bundle.js"></script>--%>

</head>
<body>
<c:import url="header.jsp"></c:import>

<div class="row">
    <div class="col-md-4 mt-0">
        <div class="card-left text-center sidebar">
            <div class="card-body">
                <img src="img.jpg" class="rounded-circle" width="150" alt="">
                <div class="mt-3">
                    <h3 style="color: white">${user.userName}</h3>
                    <a href="/history-servlet?action=displayHistory&userId=${user.userId}">Lịch sử</a>
                    <a href="/?action=fill-form&id=${user.userId}">Thay đổi thông tin</a>
                    <a href="homePage.jsp">Đăng xuất</a>
                </div>
            </div>
        </div>
    </div>
    <div class="card-right col-md-8 mt-0">
        <div class="mb-3 content">
            <h1 class="m-3 pt-3">Thông tin cá nhân </h1>
            <div class="card-body card-body-custom-left">
                <div class="row">
                    <div class="col-md-3">
                        <h5>Họ và Tên</h5>
                    </div>
                    <div class="col-md-9 text-secondary">
                        ${user.userName}
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-md-3">
                        <h5>Email</h5>
                    </div>
                    <div class="col-md-9 text-secondary">
                        ${user.email}
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-md-3">
                        <h5>Ngày sinh</h5>
                    </div>
                    <div class="col-md-9 text-secondary">
                        ${user.dob}
                    </div>
                </div>
            </div>
        </div>
        <div class="card mb-3 content">
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
    </div>
</div>


<c:import url="footer.jsp"></c:import>


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