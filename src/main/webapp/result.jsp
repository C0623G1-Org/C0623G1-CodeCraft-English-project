<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 9/30/2023
  Time: 7:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Kết Quả</title>
    <%--    <link rel="stylesheet" href="../bootstrap/bootstrap-5.2.3-dist/css/bootstrap.css">--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
          crossorigin="anonymous">
    <link rel="stylesheet" href="style-nam.css">
</head>
<body>
<form action="/?action=submit" method="post">
    <header>


        <c:import url="header.jsp"></c:import>

    </header>

    <content class=" border-bottom-2">
        <div class="container" style="padding-top: 10px">
            <div style="text-align: center">
                <c:choose>
                    <c:when test="${totalScore >7}">
                        <p style="font-style: italic"><span style="font-size: 40px; font-weight: 300;color: red">Chúc mừng bạn</span></br>
                            Kết quả thật tuyệt vời. Hãy cố gắng phát huy nhé! </p>
                    </c:when>
                    <c:when test="${totalScore <5}">
                        <p style="font-style: italic"><span style="font-size: 40px; font-weight: 300;color: red">Bạn cần cố gắng hơn</span><br/>
                            Ai mới bắt đầu cũng sẽ gặp khó khăn cả. Chúc bạn sẽ có kết quả tốt hơn lần sau! </p>
                    </c:when>
                    <c:otherwise>
                        <p style="font-style: italic"><span style="font-size: 40px; font-weight: 300;color: red">Bạn đã làm tương đối tốt</span><br/>
                            Cố gắng thử thách bản thân hơn nữa để mình ngày càng tiến bộ. Cố gắng lên nhé!</p>
                    </c:otherwise>
                </c:choose>
            </div>

            <div class="backdrop">
                <table class="table" border="1px">
                    <thead>
                    <tr class="table-primary">
                        <th scope="col" style="width: 10%"></th>
                        <th scope="col" style="width: 60%; text-align: center">Câu hỏi</th>
                        <th scope="col" style="width: 15%">Đáp án chọn</th>
                        <th scope="col" style="width: 15%">Đán án đúng</th>

                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${resultList}" var="result" varStatus="look">
                        <c:if test="${result.score==1}">
                            <tr>
                                <th scope="row">Câu ${look.count}</th>
                                <td>${result.question}</td>
                                <td>${result.selectedAnswer}</td>
                                <td>${result.rightAnswer}</td>
                            </tr>
                        </c:if>
                        <c:if test="${result.score==0}">
                            <tr style="color: #FF0000">
                                <th scope="row">Câu ${look.count}</th>
                                <td>${result.question}</td>
                                <td>${result.selectedAnswer}</td>
                                <td>${result.rightAnswer}</td>
                            </tr>
                        </c:if>
                    </c:forEach>
                    <tr class="table-primary " style="height: 50px">
                        <td colspan="3">
                            <span style="font-weight: bold" class="large">Tổng điểm</span>
                        </td>
                        <c:choose>
                            <c:when test="${totalScore >7}">
                                <td style="color: green;font-weight: bold ">${totalScore}</td>
                            </c:when>
                            <c:when test="${totalScore <5}">
                                <td style="color: red;font-weight: bold ">${totalScore}</td>
                            </c:when>
                            <c:otherwise>
                                <td style="color: #FF6600 ;font-weight: bold ">${totalScore}</td>
                            </c:otherwise>
                        </c:choose>
                    </tr>
                    </tbody>
                </table>
            </div>
            <%--            <a href="">Thi lại</a>--%>

        </div>
    </content>

    <%--footer--%>
    <c:import url="footer.jsp"></c:import>

</form>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/828ad8ef72.js" crossorigin="anonymous"></script>
</body>
</html>
