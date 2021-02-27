<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Dat
  Date: 12/1/2020
  Time: 9:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link href="/css/login.css" rel="stylesheet">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="<c:url value="/JavaScript/login.js"/> "></script>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
            <div class="card card-signin my-5">
                <div class="card-body">
                    <h5 class="card-title text-center">Sign In</h5>
                    <form class="form-signin" method="POST" action="${pageContext.request.contextPath}/perform-login">
                        <div class="form-label-group">
                            <input type="text" id="username" class="form-control" placeholder="Tên tài khoản" required autofocus
                            name="username" >
                            <label for="username">Tên tài khoản</label>
                        </div>
                        <div class="form-label-group">
<%--                            <input type="password" id="inputPassword" class="form-control" placeholder="Mật khẩu" required--%>
<%--                            name="password">--%>
                        <input type="password" id="password" name="password" class="form-control" placeholder="Password" required="">
                            <label for="password">Mật khẩu</label>
                        </div>

                        <div class="custom-control custom-checkbox mb-3">
                            <input type="checkbox" class="custom-control-input" id="customCheck1" name="remember-me">
                            <label class="custom-control-label" for="customCheck1"> <p>Remember password</p></label>
                        </div>
                        <div id="error">${sessionScope.messageLoginError}</div>
                        <button class="btn btn-lg btn-primary btn-block text-uppercase" id="btnLogin" type="submit">Đăng nhập</button>
                        <hr class="my-4">
                           </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>

</html>
