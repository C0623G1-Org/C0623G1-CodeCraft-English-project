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
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<div class="form-box edit">
    <form action="/?action=edit" method="post">
        <h2>Chỉnh sửa thông tin người dùng</h2>
        <div class="inputBox">
            <tr>
                <td><input type="hidden" name="userId" readonly value="${user.userId}"  required></td>
            </tr>
        </div>
        <div class="inputBox">
            <tr>
                <td>Họ và tên</td>
                <td><input type="text" name="userName" placeholder="Họ và tên" value="${user.userName}" required></td>
            </tr>
        </div>
        <div class="inputBox">
            <tr>
                <td>Email của bạn</td>
                <td><input type="email" name="email" placeholder="email" value="${user.email}" required></td>
            </tr>
        </div>
        <div class="inputBox">
            <tr>
                <td>Ngày sinh</td>
                <td><input type="date" name="dob" placeholder="yyyy-mm-dd" value="${user.dob}" required></td>
            </tr>
        </div>
        <div class="inputBox">
            <input type="submit"  value="Lưu">
        </div>
    </form>
</div>
</body>
</html>
