<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 10/5/2023
  Time: 8:21 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="home-page.css">
    <style>
        .footer {
            background: #1c2630;
            height: 200px;
            width: 100%;
            display: grid;
            place-items: center;
        }
        #row1{
            color: white;
            width: 90%;
            margin-top: 25px;
        }
        #row2{
            color: white;
            width: 90%;
            margin-top: 25px;
        }
        .footer-mid{
            display: inline;
        }
        .col-lg-4 {
            display: grid;
            place-items: center;
        }
        .col-lg-4 p a{
            margin-left: 50px;
        }
        .social-facebook {
            background-color: #3b5998!important;
        }
        .social-linkedin {
            background-color: #0976b4!important;
        }
        .social-youtube {
            background-color: #b31217!important;
        }
    </style>
</head>
<body>
<div class="footer">
    <div class="row" id="row1">
        <div class="col-lg-4 col-md-12">
            <h5>Đường dây nóng</h5>
        </div>
        <div class="col-lg-4 col-md-12">
            <h5>Theo dõi</h5>
        </div>
        <div class="col-lg-4 col-md-12">
            <h5>Liên hệ</h5>
        </div>
    </div>
    <div class="row" id="row2">
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
<script src="https://kit.fontawesome.com/828ad8ef72.js" crossorigin="anonymous"></script>
</body>
</html>
