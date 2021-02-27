<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Dat
  Date: 12/4/2020
  Time: 2:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="<c:url value="/css/DangKy.css"/> " />
    <script src="<c:url value="/JavaScript/Registration.js"/> "></script>

</head>
<body>
<div class="containerRegistration">
    <form method="post" id="registrationForm" onsubmit="return checkUser()">
        <label>
            <p class="label-txt">Tên tài khoản</p>
            <input type="text" class="input" name="userName" id="userName" pattern="\w{1,30}"
            title="Điển đầy đủ ký tự !">
            <div class="line-box">

            </div>
            <div  id="errorUserName"></div>

        </label>
        <label>
            <p class="label-txt">Mật khẩu</p>
            <input type="password" class="input" name="password" id="password">
            <div class="line-box">
                <div class="line" ></div>
            </div>
        </label>
        <label>
            <p class="label-txt">Nhập lại mật khẩu</p>
            <input type="password" class="input" name="confirmpwd" id="cpassword">
            <div class="line-box">
            </div>
            <div id="errorPassWord"></div>
        </label>
        <input type="submit" value="Đăng ký">
    </form>
</div>

</body>
</html>
