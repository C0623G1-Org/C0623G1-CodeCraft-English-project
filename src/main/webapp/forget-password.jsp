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
    <title>Quên mật khẩu</title>
    <link rel="stylesheet" href="logreg.css">
</head>

<body>

<form action="/?action=forget-password" method="post">
    <h2>QUÊN MẬT KHẨU</h2>
    <div class="inputBox">
        <p style="color:red;">${error}</p>
    </div>
    <div class="inputBox">
        <input type="email" name="email" placeholder="Email" required>
    </div>
    <div class="inputBox">
        <input type="text" name="userName" placeholder="Tên đăng nhập" required>
    </div>
    <div class="inputBox">
        <input type="password" name="newPassword" placeholder="Mật khẩu mới" required>
    </div>
    <div class="inputBox">
        <input type="password" name="confirmPassword" placeholder="Xác nhận mật khẩu" required>
    </div>
    <div class="inputBox">
        <input type="submit" value="Lưu thay đổi">
    </div>
    <p><a href="homePage.jsp" style="padding-bottom: 20px">Trang chủ</a></p>
</form>
</body>
</html>
