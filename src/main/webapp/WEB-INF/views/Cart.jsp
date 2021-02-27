<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Dat
  Date: 12/9/2020
  Time: 5:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Giỏ hàng</title>
    <script src="<c:url value="/JavaScript/Cart.js"/> "></script>
    <link rel="stylesheet" href="<c:url value="/css/Cart.css"/> "/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
<c:choose>
    <c:when test="${sessionScope.username == null}">
        <div style="margin: 0 auto;margin-top: 50px">
            <p style="font-size: 24px">Vui lòng đăng nhập để xem thông tin giỏ hàng</p>
            <a href="/login"><button>Đăng nhập</button></a>
        </div>
    </c:when>
    <c:otherwise>
        <c:forEach items="${requestScope.cartPhone}" var="i">
            <div id="container" style="background-color: blue; width: 1000px;">
                <div  class="d1">
                    <img src="<c:url value="${i.phone.image}" />" height="120px" width="100px">
                </div>
                <div  class="d1">${i.phone.phoneName}</div>
                <div class="d1"><input class="form-control text-center" value="1" type="number" id="button "></div>
                <div  class="d1">${i.phone.giaTien}</div>
                <div class="d1">tien</div>
            </div>
        </c:forEach>

    </c:otherwise>
</c:choose>
</body>
</html>
