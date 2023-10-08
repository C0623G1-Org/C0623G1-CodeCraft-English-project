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
    <title>Menu</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
<div class="menu">
    <c:choose>
        <c:when test="${user == null}">
            <span class="icon-close-menu"><ion-icon name="close-outline"></ion-icon></span>
            <div class="formbox difficulty">
                <h2>Làm đề</h2>
                <div class="d-flex">
                    <form action="#">
                        <div class="easy">
                            <div class="card">
                                <img src="00007.png" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Đề dễ</h5>
                                    <p class="card-text">Phù hợp với người mới bắt đầu. Các câu hỏi được tạo ra với độ
                                        khó
                                        cơ
                                        bản
                                        nhất.</p>
                                    <button type="" class="btn-begin">
                                        Bạn chưa đăng nhập
                                    </button>
                                </div>
                            </div>
                        </div>
                    </form>
                    <form action="#">
                        <div class="medium">
                            <div class="card">
                                <img src="00008.png" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Đề trung bình</h5>
                                    <p class="card-text">Phù hợp với người đã biết tiếng Anh. Các câu hỏi được tạo
                                        ra
                                        với độ khó
                                        nâng cao.</p>
                                    <button type="" class="btn-begin">
                                        Bạn chưa đăng nhập
                                    </button>
                                </div>
                            </div>
                        </div>
                    </form>
                    <form action="#">
                        <div class="hard">
                            <div class="card">
                                <img src="00013.png" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Đề khó</h5>
                                    <p class="card-text">Phù hợp với người thành thạo tiếng Anh. Các câu hỏi được
                                        chọn
                                        từ đề thi Đại
                                        học.</p>
                                    <button type="" class="btn-begin">
                                        Bạn chưa đăng nhập
                                    </button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </c:when>
        <c:otherwise>
            <span class="icon-close-menu"><ion-icon name="close-outline"></ion-icon></span>
            <div class="formbox difficulty">
                <h2>Làm đề</h2>
                <div class="d-flex">
                    <form action="/question-servlet?action=create-test">
                        <div class="easy">
                            <div class="card">
                                <img src="00007.png" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Đề dễ</h5>
                                    <p class="card-text">Phù hợp với người mới bắt đầu. Các câu hỏi được tạo ra với độ
                                        khó
                                        cơ
                                        bản
                                        nhất.</p>
                                    <input type="hidden" value="1" name="level">
                                    <button class="btn-begin" type="submit">Làm bài</button>
                                </div>
                            </div>
                        </div>
                    </form>
                    <form action="/question-servlet?action=create-test">
                        <div class="medium">
                            <div class="card">
                                <img src="00008.png" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Đề trung bình</h5>
                                    <p class="card-text">Phù hợp với người đã biết tiếng Anh. Các câu hỏi được tạo
                                        ra
                                        với độ khó
                                        nâng cao.</p>
                                    <input type="hidden" value="2" name="level">
                                    <button class="btn-begin" type="submit">Làm bài</button>
                                </div>
                            </div>
                        </div>
                    </form>
                    <form action="/question-servlet?action=create-test">
                        <div class="hard">
                            <div class="card">
                                <img src="00013.png" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title">Đề khó</h5>
                                    <p class="card-text">Phù hợp với người thành thạo tiếng Anh. Các câu hỏi được
                                        chọn
                                        từ đề thi Đại
                                        học.</p>
                                    <input type="hidden" value="3" name="level">
                                    <button class="btn-begin" type="submit">Làm bài</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </c:otherwise>
    </c:choose>
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
