<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 10/3/2023
  Time: 2:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Register</title>
    <link rel="stylesheet" type="text/css" href="logreg.css">
</head>
<body>
<form action="/?action=edit" method="post">
    <h2>Chỉnh sửa thông tin người dùng</h2>
    <div class="inputBox">
        <input type="number" name="userId" readonly value="${user.userId}"  required>
    </div>
    <div class="inputBox">
        <input type="text" name="userName" value="${user.userName}" required>
    </div>
    <div class="inputBox">
        <input type="email" name="email" value="${user.email}" required>
    </div>
    <div class="inputBox">
        <input type="dob" name="dob" value="${user.dob}" required>
    </div>
    <div class="inputBox">
        <input type="submit"  value="Lưu">
    </div>
</form>
</body>
</html>
