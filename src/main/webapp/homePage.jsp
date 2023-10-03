<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link rel="stylesheet" href="homePage.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>

<body>

<!-- NAVBAR -->
<nav class="navbar navbar-expand-lg bg-light">
    <div class="container-fluid" id="navbarMain">
        <a class="navbar-brand" href="#"><i class="fa-solid fa-book"></i></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Trang chủ </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Giới thiệu </a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                       aria-expanded="false">
                        Luyện đề
                    </a>
                    <ul class="dropdown-menu" style="padding-right: 40px;">
                        <li><a class="dropdown-item" href="#" style="color: #000000;">Làm đề dễ</a></li>
                        <li><a class="dropdown-item" href="#" style="color: #000000;">Làm đề trung bình</a></li>
                        <li><a class="dropdown-item" href="#" style="color: #000000;">Làm đề khó</a></li>
                    </ul>
                </li>
            </ul>
            <a href="login.jsp" role="button" class="btn btn-lg btn-primary" id="user"><i
                    class="fa-regular fa-user"></i> Đăng nhập</a>
        </div>
    </div>
</nav>
<!-- CAROUSEL -->
<div>
    <div id="myCarousel" class="carousel slide carousel-fade" data-bs-ride="carousel">
        <ol class="carousel-indicators">
            <li data-bs-target="#myCarousel" data-bs-slide-to="0" class="active"></li>
            <li data-bs-target="#myCarousel" data-bs-slide-to="1"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="overlay-image" style="background-image:url(./2.jpg);"></div>
                <div class="container" id="carouselCont">
                    <h1>Ảnh 1</h1>
                    <p style="text-align: center;">Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto
                        voluptas, sunt corporis
                        excepturi
                        tempora eaque consequuntur cumque hic voluptate quia explicabo placeat sint laborum
                        praesentium
                        quibusdam adipisci, totam architecto sequi.</p>
                    <a href="reg.jsp" role="button" class="btn btn-lg btn-primary">Đăng ký ngay</a>
                </div>
            </div>
            <div class="carousel-item">
                <div class="overlay-image" style="background-image:url(./1.jpg);"></div>
                <div class="container" id="carouselCont">
                    <h1>Ảnh 2</h1>
                    <p style="text-align: center;">Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto
                        voluptas, sunt corporis
                        excepturi
                        tempora eaque consequuntur cumque hic voluptate quia explicabo placeat sint laborum
                        praesentium
                        quibusdam adipisci, totam architecto sequi.</p>
                    <a href="reg.jsp" role="button" class="btn btn-lg btn-primary">Đăng ký ngay</a>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev"
                style="width: 50px;">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next"
                style="width: 50px;">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
</div>

<!-- FOOTER -->
<div class="footer">
    <table>
        <tr>
            <th><h5>COPYRIGHT</h5></th>
            <th><h5>CONTACT</h5></th>
        </tr>
        <tr>
            <td>by Codecraft team, all rights reserved</td>
            <td>
                <ol>
                    <li>Đoàn Thị Hương Ly</li>
                    <li>Nguyễn Đình Nam</li>
                    <li>Đào Đức Duy</li>
                    <li>Lê Tự Khoa</li>
                </ol>
            </td>
        </tr>
    </table>
</div>

<!-- SCRIPT -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"
        integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V"
        crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/ebdd867c54.js" crossorigin="anonymous"></script>
</body>

</html>