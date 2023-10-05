<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 10/4/2023
  Time: 10:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>History</title>
</head>
<body>
<h2>Lịch sử làm bài</h2>
<table>
    <tr>
        <th>Stt</th>
        <th>Tên</th>
        <th>Thời gian</th>
    </tr>
    <tr>
        <c:forEach items="${historyList}" var="h" varStatus="look">
    <tr>
        <th>${look.count}</th>
        <th>${h.username}</th>
        <th>${h.date}</th>
    </tr>
    </c:forEach>
    </tr>
</table>
</body>
</html>
