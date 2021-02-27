<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Dat
  Date: 12/1/2020
  Time: 4:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="<c:url value="/JavaScript/Phone.js"/> "></script>
    <link rel="stylesheet" href="<c:url value="/css/Phone.css"/> "/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<%--<div class="main" style="margin-top: -5px">--%>
<%--    <div class="dropdown-container" style="margin: 0 auto">--%>
<%--        <div class="dropdown" id="dropdownsort">--%>
<%--            <button class="dropbtn">--%>
<%--                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-phone" viewBox="0 0 16 16" style="margin-top: -3px">--%>
<%--                    <path d="M11 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h6zM5 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H5z"/>--%>
<%--                    <path d="M8 14a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>--%>
<%--                </svg> Điện thoại</button>--%>
<%--            <div class="dropdown-content">--%>
<%--                <a href="${pageContext.request.contextPath}/sort-low-to-high">Giá thấp-cao</a>--%>
<%--                <a href="${pageContext.request.contextPath}/sort-high-to-low">Giá cao-thấp</a>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="dropdown">--%>
<%--            <button class="dropbtn"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-laptop" viewBox="0 0 16 16">--%>
<%--                <path d="M13.5 3a.5.5 0 0 1 .5.5V11H2V3.5a.5.5 0 0 1 .5-.5h11zm-11-1A1.5 1.5 0 0 0 1 3.5V12h14V3.5A1.5 1.5 0 0 0 13.5 2h-11zM0 12.5h16a1.5 1.5 0 0 1-1.5 1.5h-13A1.5 1.5 0 0 1 0 12.5z"/>--%>
<%--            </svg> Laptop</button>--%>
<%--            <div class="dropdown-content">--%>
<%--                <a href="#">SamSung</a>--%>
<%--                <a href="#">Nokia</a>--%>
<%--                <a href="#">Apple</a>--%>
<%--            </div>--%>
<%--        </div>--%>

<%--        &lt;%&ndash;        ${sessionScope.username != null || sessionScope.username != ''&ndash;%&gt;--%>
<%--        <div class="containerSearch" style="width: 500px;">--%>

<%--            <div class="row">--%>
<%--                <div class="col-md-6">--%>
<%--                    <div class="search-box">--%>
<%--                        <form class="search-form" action="${pageContext.request.contextPath}/search-phone"--%>
<%--                              method="get" name="formsearch"><input class="form-control" placeholder="Tìm kiếm sản phẩm"--%>
<%--                                                                    type="text"--%>
<%--                                                                    id="keyword" name="keyword">--%>
<%--                            <button class="btn btn-link search-btn" style="height: 40px" id="btnSearch"><i--%>
<%--                                    class="glyphicon glyphicon-search"></i>--%>
<%--                            </button>--%>
<%--                        </form>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div id="user-info" style="width: 200px; height: 56px; float: right; background: white;">--%>
<%--            <img src="<c:url value="/images/user1.jpg"/> " height="50px" width="50px"/>--%>
<%--            <c:choose>--%>
<%--                <c:when test="${sessionScope.username != '' || sessionScope.username != null}">--%>
<%--                    ${sessionScope.username}--%>
<%--                </c:when>--%>
<%--            </c:choose>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>


<div class="listproduce" >
    <div class="listAP">
        <div style=" text-align: left;margin-top: 70px"><a><h3 style="margin-left: 14px">APPLE</h3></a></div>

        <div id="listAP" class="carousel slide" data-ride="carousel" style="margin-top: 10px;
        border-radius: 1px">
            <!-- Indicators -->
            <ul class="carousel-indicators">
                <li data-target="#demo" data-slide-to="0" class="active"></li>
                <li data-target="#demo" data-slide-to="1"></li>
                <li data-target="#demo" data-slide-to="2"></li>
            </ul>
            <!-- The slideshow -->
            <div class="carousel-inner">
                <div class="carousel-item active" id="slide1AP">
                </div>

                <%--                <div class="carousel-item" id="slide3SS">--%>
                <%--                </div>--%>
            </div>
            <!-- Left and right controls -->
            <a class="carousel-control-prev" href="#demo" data-slide="prev"
               style="margin-left: 5px;height: 50px;width:50px;margin-top: 150px;border: 0px !important;">
                <span class="carousel-control-prev-icon"></span>
            </a>
            <a class="carousel-control-next" href="#demo" data-slide="next"
               style="height: 50px;width:50px;margin-top: 140px;border: 0px !important;">
                <span class="carousel-control-next-icon"></span>
            </a>
        </div>
    </div>


        <%--        SAMSUNG--%>
        <div class="listSamSung">
            <div style=" text-align: left"><h3 style="margin-left: 14px">SAMSUNG</h3>
            </div>
            <div id="demo" class="carousel slide" data-ride="carousel" style="margin-top: 10px;
         border-radius: 1px">
                <!-- Indicators -->
                <ul class="carousel-indicators">
                    <li data-target="#demo" data-slide-to="0" class="active"></li>
                    <li data-target="#demo" data-slide-to="1"></li>
                    <li data-target="#demo" data-slide-to="2"></li>
                </ul>
                <!-- The slideshow -->
                <div class="carousel-inner">
                    <div class="carousel-item active" id="slide1SS">
                    </div>
                    <div class="carousel-item" id="slide2SS">
                    </div>
                    <%--                <div class="carousel-item" id="slide3SS">--%>
                    <%--                </div>--%>
                </div>
                <!-- Left and right controls -->
                <a class="carousel-control-prev" href="#demo" data-slide="prev"
                   style="margin-left: 5px;height: 50px;width:50px;margin-top: 150px;border: 0px !important;">
                    <span class="carousel-control-prev-icon"></span>
                </a>
                <a class="carousel-control-next" href="#demo" data-slide="next"
                   style="height: 50px;width:50px;margin-top: 140px;border: 0px !important;">
                    <span class="carousel-control-next-icon"></span>
                </a>
            </div>
        </div>

    <div class="listBtn">
        <div> <button><img src="<c:url value="/images/logoAP.png"></c:url> " height="30px" width="30px" style="margin-top: -10px">
            <a href="/search-phone?brandId=IOS&page=0">APPLE</a> </button></div>
        <div>
            <button>
                <a href="/search-phone?brandId=SS&page=0">
                     <img src="<c:url value="/images/logoSS.png"></c:url> "  height="45px" width="110px">
                </a>
            </button>
        </div>
        <div> <button><img src="<c:url value="/images/Oppo_logo.png"></c:url> "  height="45px" width="110px"></button></div>
        <div> <button>Xiaomi<img src="<c:url value="/images/RM.png"></c:url> " height="30px" width="30px"></button></div>

    </div>






<%--    REDME--%>
    <div class="listRM">
        <div style=" text-align: left;margin-top: 70px"><h3 style="margin-left: 14px">Xiaomi</h3> </div>

        <div id="listRM" class="carousel slide" data-ride="carousel" style="margin-top: 10px;
        border-radius: 1px">
            <!-- Indicators -->
            <ul class="carousel-indicators">
                <li data-target="#demo" data-slide-to="0" class="active"></li>
                <li data-target="#demo" data-slide-to="1"></li>
                <li data-target="#demo" data-slide-to="2"></li>
            </ul>
            <!-- The slideshow -->
            <div class="carousel-inner">
                <div class="carousel-item active" id="slide1RM">
                </div>
                <div class="carousel-item" id="slide2RM">
                </div>
                <%--                <div class="carousel-item" id="slide3SS">--%>
                <%--                </div>--%>
            </div>
            <!-- Left and right controls -->
            <a class="carousel-control-prev" href="#demo" data-slide="prev"
               style="margin-left: 5px;height: 50px;width:50px;margin-top: 150px;border: 0px !important;">
                <span class="carousel-control-prev-icon"></span>
            </a>
            <a class="carousel-control-next" href="#demo" data-slide="next"
               style="height: 50px;width:50px;margin-top: 140px;border: 0px !important;">
                <span class="carousel-control-next-icon"></span>
            </a>
        </div>
    </div>



<%--    redme--%>
    <div class="listOP">
        <div style=" text-align: left; margin-top: 40px"><h3 style="margin-left: 14px">OPPP</h3></div>
        <div class="carousel slide" data-ride="carousel" style="width: 1100px;
     height: 350px; margin-top: 5px; text-decoration: none">
            <div class="carousel-inner" role="listbox">
                <div class="carousel-item active" id="slide1OP">

                </div>
                <div class="carousel-item" id="slide2OP">

                </div>
            </div>
            <a class="carousel-control-prev"  role="button" data-slide="prev"
               style="margin-left: 5px;height: 50px;width:50px;margin-top: 150px;border: 0px !important;">
                <span class="carousel-control-prev-icon" aria-hidden="false"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next"  role="button" data-slide="next"
               style="height: 50px;width:50px;margin-top: 140px;border: 0px !important;">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>

<%--    LAPTOP--%>

</div>
</body>
</html>

