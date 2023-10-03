<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 9/27/2023
  Time: 3:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Đăng nhập</title>
    <link rel="stylesheet" href="logreg.css">
</head>

<body>
<form action="/?action=login" method="post">
    <h2>ĐĂNG NHẬP</h2>
    <div class="inputBox">
        <input type="text" name="loginId" placeholder="Username" value="${name}" required>
    </div>
    <div class="inputBox">
        <input type="password" name="password" placeholder="Password" value="${password}" required>
    </div>
    <div class="checkbox">
        <input type="checkbox" value="Ghi nhớ mật khẩu?">
        <span style="color: white;">Ghi nhớ mật khẩu?</span><br><br>
    </div>
    <div class="inputBox">
        <input type="submit" value="Đăng nhập">
    </div>
    <p><a href="#" style="padding-bottom: 20px">Quên mật khẩu?</a></p>
</form>
</body>
</html>
