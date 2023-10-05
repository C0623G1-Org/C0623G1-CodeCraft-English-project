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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
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
                            <a href="">History</a>
                            <a href="/?action=fill-form&id=${getIdUser.userId}">Setting</a>
                            <a href="homePage.jsp">Sign Out</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-right col-md-8 mt-0">
                <div class="mb-3 content">
                    <h1 class="m-3 pt-3">Information</h1>
                    <div class="card-body card-body-custom-left">
                        <div class="row">
                            <div class="col-md-3">
                                <h5>Full name</h5>
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
                                <h5>DATE OF BIRTH</h5>
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
                            <th scope="col">STT</th>
                            <th scope="col">Time</th>
                            <th scope="col">point</th>
                            <th scope="col">Topic Type</th>
                            <th scope="col">Detail</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>Mark</td>
                            <td>Otto</td>
                            <td>@mdo</td>
                            <td>@mdo</td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>Jacob</td>
                            <td>Thornton</td>
                            <td>@fat</td>
                            <td>@fat</td>
                        </tr>
<!--                        <tr>-->
<!--                            <th scope="row">3</th>-->
<!--                            <td colspan="2">Larry the Bird</td>-->
<!--                            <td>@twitter</td>-->
<!--                        </tr>-->
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
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
    </div>


</div>
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