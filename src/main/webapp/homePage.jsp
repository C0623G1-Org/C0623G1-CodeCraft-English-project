<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>

<body>
<!-- NAVBAR -->
<header>
    <h2 class="logo"><img src="logo5.png" alt=""></h2>
    <nav class="navigation">
        <c:choose>
            <c:when test="${user == null}">
                <a href="#">Trang chủ</a>
                <a class="aboutUs" href="#">Giới thiệu</a>
                <a class="doTest" href="#">Luyện đề</a>
                <button class="btnLogin-popup">Đăng nhập</button>
            </c:when>
            <c:otherwise>
                <a href="#">Trang chủ</a>
                <a class="aboutUs" href="#">Giới thiệu</a>
                <a class="doTest" href="#">Luyện đề</a>
                <a href="../my_page.jsp" class="user">
                    <ion-icon name="person-circle-outline"></ion-icon>
                        ${user.userName}</a>
            </c:otherwise>
        </c:choose>
    </nav>
</header>
<%--<c:choose>--%>
<%--    <c:when test="${user != null}">--%>
<%--        <div class="user-menu">--%>
<%--            <ul>--%>
<%--                <li><a href="">Hồ sơ</a></li>--%>
<%--                <li><a href="">Đăng xuất</a></li>--%>
<%--            </ul>--%>
<%--        </div>--%>
<%--    </c:when>--%>
<%--</c:choose>--%>

<!-- LOGIN & SIGNUP -->
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
        <div style="text-align: center; justify-content: center;"><h2 style="color: red; font-size: 1em;">${error}</h2>
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


<!-- TEST MENU -->
<div class="menu">
    <span class="icon-close-menu"><ion-icon name="close-outline"></ion-icon></span>
    <div class="formbox difficulty">
        <h2>Làm đề</h2>
        <div class="d-flex">
            <form action="/question-servlet?action=create-test&level=${df.diffId}">
                <div class="easy">
                    <div class="card">
                        <img src="00007.png" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Đề dễ</h5>
                            <p class="card-text">Phù hợp với người mới bắt đầu. Các câu hỏi được tạo ra với độ khó cơ
                                bản
                                nhất.</p>
                            <button class="btn-begin" type="submit">Làm bài</button>
                        </div>
                    </div>
                </div>
            </form>
            <c:choose>
            <c:when test="${user != null}">
            <form action="/question-servlet?action=create-test&level=${df.diffId}">
                </c:when>
                <c:otherwise>
                <form action="/?action=login">
                    </c:otherwise>
                    </c:choose>
                    <form action="/question-servlet?action=create-test&level=${df.diffId}">
                        <div class="medium">
                            <div class="card">
                                <img src="00008.png" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Đề trung bình</h5>
                                    <p class="card-text">Phù hợp với người đã biết tiếng Anh. Các câu hỏi được tạo ra
                                        với độ khó
                                        nâng cao.</p>
                                    <button class="btn-begin" type="submit">Làm bài</button>
                                </div>
                            </div>
                        </div>
                    </form>
                    <form action="/question-servlet?action=create-test&level=${df.diffId}">
                        <div class="hard">
                            <div class="card">
                                <img src="00013.png" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Đề khó</h5>
                                    <p class="card-text">Phù hợp với người thành thạo tiếng Anh. Các câu hỏi được chọn
                                        từ đề thi Đại
                                        học.</p>
                                    <button class="btn-begin" type="submit">Làm bài</button>
                                </div>
                            </div>
                        </div>
                    </form>
        </div>
    </div>
</div>

<!-- QUESTIONS -->
<!-- <div id="test-content">
    <span class="icon-close-test" onclick="closeTest()"><ion-icon name="close-outline"></ion-icon></span>
    <div class="formbox content">
        <h2>Làm đề</h2>
        <div class="question">
            <form action="#" method="post">
                <table>
                    <tr>
                        <th colspan="2">Câu 1: Nội dung câu hỏi nằm ở đây</th>
                    </tr>
                    <tr>
                        <td><input type="radio", id="answerA", name="answer"> <label for="answerA">Đáp án 1</label></td>
                        <td><input type="radio", id="answerB", name="answer"> <label for="answerB">Đáp án 2</label></td>
                    </tr>
                    <tr>
                        <td><input type="radio", id="answerC", name="answer"> <label for="answerC">Đáp án 3</label></td>
                        <td><input type="radio", id="answerD", name="answer"> <label for="answerD">Đáp án 4</label></td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</div> -->

<!-- ABOUT -->
<div class="about">
    <span class="icon-close-about"><ion-icon name="close-outline"></ion-icon></span>
    <h2>Giới thiệu</h2>
    <div class="about-us">
        <table>
            <tr>
                <th><p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quis distinctio praesentium excepturi
                    explicabo vitae aliquid perferendis iusto, consectetur expedita dolorum asperiores illo nesciunt,
                    unde voluptates impedit magni, saepe eaque? Ipsa? Lorem ipsum dolor sit amet consectetur adipisicing
                    elit. Non corporis dolore, nulla maxime veritatis </p></th>
            </tr>
        </table>
    </div>
</div>

<script src="script.js"></script>
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