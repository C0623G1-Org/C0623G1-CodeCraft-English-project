<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link rel="stylesheet" href="home-page.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>

<body>
<c:import url="header.jsp"></c:import>
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
                        <a href="reg.jsp" role="button" class="btn btn-lg btn-primary">ĐĂNG KÝ NGAY</a>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="overlay-image" style="background-image:url(./1.jpg);"></div>
                    <div class="container" id="carouselCont1">
                        <h1>Ảnh 2</h1>
                        <p style="text-align: center;">Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto
                            voluptas, sunt corporis
                            excepturi
                            tempora eaque consequuntur cumque hic voluptate quia explicabo placeat sint laborum
                            praesentium
                            quibusdam adipisci, totam architecto sequi.</p>
                        <a href="reg.jsp" role="button" class="btn btn-lg btn-primary">ĐĂNG KÝ NGAY</a>
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
<c:import url="footer.jsp"></c:import>
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