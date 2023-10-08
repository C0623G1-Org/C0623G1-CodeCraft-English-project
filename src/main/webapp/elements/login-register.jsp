<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 10/7/2023
  Time: 11:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Elements</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
<div class="wrapper ${loginError != null ? "active-popup" : ""}">
    <span class="icon-close"><ion-icon name="close-outline"></ion-icon></span>
    <div class="form-box login">
        <h2>Đăng nhập</h2>
        <div style="text-align: center; justify-content: center;"><h2
                style="color: red; font-size: 1em;">${loginError}</h2>
        </div>
        <form action="/?action=login" method="post">
            <div class="input-box">
                <span class="icon"><ion-icon name="person-circle-outline"></ion-icon></span>
                <input type="text" id="loginId" name="loginId" required>
                <label for="loginId">Tên đăng nhập</label>
            </div>
            <div class="input-box">
                <span class="icon"><ion-icon name="lock-closed-outline"></ion-icon></span>
                <input type="password" id="password" name="password" required>
                <label for="password">Mật khẩu</label>
            </div>
            <div class="remember-forgot">
                <label for="password-checkbox"><input type="checkbox" id="password-checkbox">Ghi nhớ mật khẩu</label>
                <a href="#">Quên mật khẩu</a>
            </div>
            <button type="submit" class="btn">Đăng nhập</button>
            <div class="login-register">
                <p>Chưa có tài khoản? <a href="#" class="register-link">Đăng ký</a></p>
            </div>
        </form>
    </div>

    <div class="form-box register">
        <h2>Đăng ký</h2>
        <div style="text-align: center; justify-content: center;"><h2
                style="color: red; font-size: 1em;">${signupError}</h2>
        </div>
        <form action="/?action=signup" method="post">
            <div class="input-box">
                <span class="icon"><ion-icon name="person-circle-outline"></ion-icon></span>
                <input type="text" id="reg-username" name="name" required>
                <label for="reg-username">Tên đăng nhập</label>
            </div>
            <div class="input-box">
                <span class="icon"><ion-icon name="mail-outline"></ion-icon></span>
                <input type="email" id="email" name="email" required>
                <label for="email">Email</label>
            </div>
            <div class="input-box">
                <span class="icon"><ion-icon name="lock-closed-outline"></ion-icon></span>
                <input type="password" id="reg-password" name="pswd" required>
                <label for="reg-password">Mật khẩu</label>
            </div>
            <div class="input-box">
                <span class="icon"><ion-icon name="lock-closed-outline"></ion-icon></span>
                <input type="password" id="cnfrm-reg-password" name="cfrm pswd" required>
                <label for="cnfrm-reg-password">Xác nhận mật khẩu</label>
            </div>
            <div class="remember-forgot">
                <label for="passord-checkbox"><input type="checkbox" id="passord-checkbox">Đồng ý với điều khoản</label>
            </div>
            <button type="submit" class="btn">Đăng ký</button>
            <div class="login-register">
                <p>Đã có tài khoản? <a href="#" class="login-link">Đăng nhập</a></p>
            </div>
        </form>
    </div>
</div>
<script src="script.js"></script>
<script src="https://unpkg.com/@popperjs/core@2"></script>
<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"
        integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V"
        crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/ebdd867c54.js" crossorigin="anonymous"></script>
</body>
</html>
