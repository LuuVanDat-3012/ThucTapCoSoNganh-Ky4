<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Dat
  Date: 12/1/2020
  Time: 10:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <meta charset="utf-8">
    <title>Website Bán Hàng</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <link rel="stylesheet" href="<c:url value="/css/Home.css"/> " />
    <style>
        /*.dropdown{*/
        /*    float: left;*/
        /*}*/
    </style>
</head>
<body>
    <div class="main" >
        <div class="dropdown-container" >
            <div style="width: 180px" >
                    <a href="/" class="logo">
                        <div class="logo-content">
                            <div>
                                <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-bootstrap-fill" viewBox="0 0 16 16">
                                    <path d="M6.375 7.125V4.658h1.78c.973 0 1.542.457 1.542 1.237 0 .802-.604 1.23-1.764 1.23H6.375zm0 3.762h1.898c1.184 0 1.81-.48 1.81-1.377 0-.885-.65-1.348-1.886-1.348H6.375v2.725z"/>
                                    <path d="M4.002 0a4 4 0 0 0-4 4v8a4 4 0 0 0 4 4h8a4 4 0 0 0 4-4V4a4 4 0 0 0-4-4h-8zm1.06 12V3.545h3.399c1.587 0 2.543.809 2.543 2.11 0 .884-.65 1.675-1.483 1.816v.1c1.143.117 1.904.931 1.904 2.033 0 1.488-1.084 2.396-2.888 2.396H5.062z"/>
                                </svg>
                            </div>


                            <div>MiTaNiSaRa</div>
                        </div>

                    </a>
            </div>
            <div class="dropdown" >
                <div class="call">
                    <div>
                        <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-telephone-fill" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M1.885.511a1.745 1.745 0 0 1 2.61.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z"/>
                        </svg>
                    </div>
                    <div class="callNumber">
                        <p style="margin :0 auto"> Liên hệ:</p>
                        <strong>0395837186</strong>
                    </div>
                </div>


            </div>
            <div class="dropdown" >
                <div class="dropbtn">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-phone" viewBox="0 0 16 16" style="margin-top: -3px">
                        <path d="M11 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h6zM5 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H5z"/>
                        <path d="M8 14a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
                    </svg> Điện thoại</div>
                <div class="dropdown-content">
                    <a href="${pageContext.request.contextPath}/sort-low-to-high">Giá thấp-cao</a>
                    <a href="${pageContext.request.contextPath}/sort-high-to-low">Giá cao-thấp</a>
                </div>
            </div>
            <div class="dropdown">
                <button class="dropbtn"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-laptop" viewBox="0 0 16 16">
                    <path d="M13.5 3a.5.5 0 0 1 .5.5V11H2V3.5a.5.5 0 0 1 .5-.5h11zm-11-1A1.5 1.5 0 0 0 1 3.5V12h14V3.5A1.5 1.5 0 0 0 13.5 2h-11zM0 12.5h16a1.5 1.5 0 0 1-1.5 1.5h-13A1.5 1.5 0 0 1 0 12.5z"/>
                </svg> Laptop</button>
                <div class="dropdown-content">
                    <a href="#">SamSung</a>
                    <a href="#">Nokia</a>
                    <a href="#">Apple</a>
                </div>
            </div>

            <div class="containerSearch" style="width: 500px;">
                <div class="row">
                    <div class="col-md-6">
                        <div class="search-box">
                            <form action="${pageContext.request.contextPath}/search-phone"
                                  method="get" name="formsearch"><input class="form-control" placeholder="Tìm kiếm sản phẩm"
                                                                        type="text"
                                                                        id="keyword" name="keyword">
                                <button class="btn btn-link search-btn" style="height: 40px; width: 50px; margin-top: -1px" id="btnSearch">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                                        <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
                                    </svg>

                                </button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div id="user-info" >
                <c:choose>
                    <c:when test="${sessionScope.username == '' || sessionScope.username == null}">

                        <div class="dropdown">
                            <button class="dropbtn">
                                <a href="/login" style="color: #ffffff">
                                    Đăng nhập
                                </a>
                            </button>
                        </div>
                        <div class="dropdown">
                            <button class="dropbtn">
                                <a href="/registration" style="color: #ffffff">
                                    Đăng ký
                                </a>
                            </button>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <div class="dropdown">
                            <button class="dropbtn" id="userbtn">
                                    <p class="name-user"><svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                                        <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                                        <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                                    </svg> ${sessionScope.username}</p>
                            </button>
                            <div class="dropdown-content">
                                <a href="/show-cart">Giỏ hàng</a>
                                <a href="#">Đơn hàng</a>
                                <a href="/logout">Đăng xuất</a>
                            </div>
                        </div>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </div>

     <div align="center">
         <article style="background-color: #d2d2d2" >
             <jsp:include page="${param.view}"/>
         </article>
     </div>



    <%--    <aside>CONTROL PANEL</aside>--%>

    <footer>

        <div class="containerFooter">
            <div class="contentFooter">
                <div class="item">
                    <div><h3>Thông tin liên hệ</h3></div>
                    <div>
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-telephone-fill" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M1.885.511a1.745 1.745 0 0 1 2.61.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z"/>
                        </svg>Gọi mua hàng : <strong>0395837186</strong> (8h00 - 22h00)
                    </div>
                    <div>
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-telephone-fill" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M1.885.511a1.745 1.745 0 0 1 2.61.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z"/>
                        </svg>Gọi bảo hành : <strong>0395837186</strong> (8h00 - 22h00)
                    </div>
                    <div>
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-telephone-fill" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M1.885.511a1.745 1.745 0 0 1 2.61.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z"/>
                        </svg>Gọi khiếu nại : <strong>0395837186</strong> (8h00 - 22h00)
                    </div>
                </div>
                <div class="item">
                    <div id ="div-link">
                        <div><strong>Facebook : </strong><a href="https://www.facebook.com/people/L%C3%B2-V%C4%83n-M%E1%BA%B9t/100015237827823">Lưu Văn Đạt</a> </div>
                        <div><strong>Zalo : </strong><a href="https://www.facebook.com/people/L%C3%B2-V%C4%83n-M%E1%BA%B9t/100015237827823">Lưu Văn Đạt</a> </div>
                    </div>
                </div>
                <div class="item"></div>
            </div>
            <div class="footer">
                <div id ="listProduct-in-footer">
                    <c:forEach items="${sessionScope.stringPNameList}" var="i">
                        <a href="/info-phone/${i}">${i}</a> /
                    </c:forEach>
                </div>
            </div>
        </div>


    </footer>
</body>
</html>
