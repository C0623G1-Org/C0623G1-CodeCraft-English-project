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
                            <a href="/?action=fill-form&id=${user.userId}">Đặt lại thông tin</a>
                            <a href="homePage.jsp">Đăng xuất</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-right col-md-8 mt-0">
                <div class="card mb-3 content">
                    <table class="table">
                        <thead>
                        <tr>
                            <th scope="col">STT</th>
                            <th scope="col">Họ và tên</th>
                            <th scope="col">Email</th>
                            <th scope="col">Ngày sinh</th>
                            <th scope="col">Tên đăng nhập</th>
                            <th scope="col"></th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${users}" varStatus="loop" var="p">
                            <tr>
                                <td>${loop.count}</td>
                                <td>${p.userName}</td>
                                <td>${p.email}</td>
                                <td>${p.dob}</td>
                                <td>${p.loginId}</td>
                                <td>
                                    <button type="button" class="btn btn-outline-danger btn-sm" data-bs-toggle="modal" data-bs-target="#exampleModal"
                                            onclick="sendInfoMoDal('${p.userId}','${p.userName}')">
<%--                                        Xoá--%>
                                        <img style="width: 28px;height: 28px" src="Trash-can.png">
                                    </button>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="/?action=delete" method="post">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="exampleModalLabel">Xác nhận xoá</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <h1><input type="hidden" name="id" id="userId"></h1>
                                Bạn có chắc chắc xoá <span id="userName" class="text text-danger"></span> ?
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">Đóng</button>
                                <button type="submit" class="btn btn-outline-danger">Xoá</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
<c:import url="footer.jsp"></c:import>

<script>
    function sendInfoMoDal(id, name) {
        document.getElementById("userId").value = id;
        document.getElementById("userName").innerText = name;

    }
</script>

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