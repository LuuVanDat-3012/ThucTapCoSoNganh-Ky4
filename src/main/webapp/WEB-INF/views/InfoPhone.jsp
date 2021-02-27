<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%--<fmt:setLocale value="de_CH" scope="session"/><fmt:setLocale value="de_CH" scope="session"/>--%>
<fmt:setLocale value="vn_VND"/>

<html>
<head>
    <title>Thông tin sản phẩm</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<c:url value="/css/InfoPhone.css"/> "/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="<c:url value="/JavaScript/InfoPhone.js"/> "></script>
</head>
<body >
<div class="content">
    <div style="width:1000px; margin:0 auto; border-bottom: 1px solid #D2D2D2;margin-bottom: 10px;text-align: center;text-align: left">
        <p class="phoneName"></p>
    </div>
    <div style="width:800px; margin:0 auto;" class="s1">
        <div class="divImage">
            <div class="displayimage"><img class="imagemain" src="<c:url value=""/> " alt="Khong co anh" id="image" height="360px" width="295px"/></div>

            <div class="image1div"><button class="btnimage1"><img id="image1" src="<c:url value=""/> " alt="Khong co anh"></button></div>
            <div class="image2div"><button class="btnimage2"><img id="image2" src="<c:url value=""/> " alt="Khong co anh"></button></div>
            <div class="image3div"><button class="btnimage3"><img id="image3" src="<c:url value=""/> " alt="Khong co anh"></button></div>
            <div class="image4div"><button class="btnimage4"><img id="image4" src="<c:url value=""/> " alt="Khong co anh"></button></div>


        </div>
        <div class="d2">
            <div class="infoPhone">
                <p class="linePrice"><b class="price"></b> VND</p>
            </div>
            <div class="infoPhone">
                <ul id="listinfo"><b style="font-size: 20px">Thông số sản phẩm</b>
                    <li class="configList">
                        <p id="screen">
                            <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-phone" fill="currentColor"
                                 xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd"
                                      d="M11 1H5a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1zM5 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H5z"/>
                                <path fill-rule="evenodd" d="M8 14a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
                            </svg>
                        </p>
                    </li>

                    <li class="configList">
                        <p id="frontcamera">
                            <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-camera-fill"
                                 fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                <path d="M10.5 8.5a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0z"/>
                                <path fill-rule="evenodd"
                                      d="M2 4a2 2 0 0 0-2 2v6a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V6a2 2 0 0 0-2-2h-1.172a2 2 0 0 1-1.414-.586l-.828-.828A2 2 0 0 0 9.172 2H6.828a2 2 0 0 0-1.414.586l-.828.828A2 2 0 0 1 3.172 4H2zm.5 2a.5.5 0 1 0 0-1 .5.5 0 0 0 0 1zm9 2.5a3.5 3.5 0 1 1-7 0 3.5 3.5 0 0 1 7 0z"/>
                            </svg>
                        </p>
                    </li>

                    <li class="configList">
                        <p id="rearcamera">
                            <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-camera" fill="currentColor"
                                 xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd"
                                      d="M15 12V6a1 1 0 0 0-1-1h-1.172a3 3 0 0 1-2.12-.879l-.83-.828A1 1 0 0 0 9.173 3H6.828a1 1 0 0 0-.707.293l-.828.828A3 3 0 0 1 3.172 5H2a1 1 0 0 0-1 1v6a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1zM2 4a2 2 0 0 0-2 2v6a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V6a2 2 0 0 0-2-2h-1.172a2 2 0 0 1-1.414-.586l-.828-.828A2 2 0 0 0 9.172 2H6.828a2 2 0 0 0-1.414.586l-.828.828A2 2 0 0 1 3.172 4H2z"/>
                                <path fill-rule="evenodd"
                                      d="M8 11a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5zm0 1a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7z"/>
                                <path d="M3 6.5a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0z"/>
                            </svg>
                        </p>
                    </li>

                    <li class="configList">
                        <p id="processor">
                            <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-cpu" fill="currentColor"
                                 xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd"
                                      d="M5 0a.5.5 0 0 1 .5.5V2h1V.5a.5.5 0 0 1 1 0V2h1V.5a.5.5 0 0 1 1 0V2h1V.5a.5.5 0 0 1 1 0V2A2.5 2.5 0 0 1 14 4.5h1.5a.5.5 0 0 1 0 1H14v1h1.5a.5.5 0 0 1 0 1H14v1h1.5a.5.5 0 0 1 0 1H14v1h1.5a.5.5 0 0 1 0 1H14a2.5 2.5 0 0 1-2.5 2.5v1.5a.5.5 0 0 1-1 0V14h-1v1.5a.5.5 0 0 1-1 0V14h-1v1.5a.5.5 0 0 1-1 0V14h-1v1.5a.5.5 0 0 1-1 0V14A2.5 2.5 0 0 1 2 11.5H.5a.5.5 0 0 1 0-1H2v-1H.5a.5.5 0 0 1 0-1H2v-1H.5a.5.5 0 0 1 0-1H2v-1H.5a.5.5 0 0 1 0-1H2A2.5 2.5 0 0 1 4.5 2V.5A.5.5 0 0 1 5 0zm-.5 3A1.5 1.5 0 0 0 3 4.5v7A1.5 1.5 0 0 0 4.5 13h7a1.5 1.5 0 0 0 1.5-1.5v-7A1.5 1.5 0 0 0 11.5 3h-7zM5 6.5A1.5 1.5 0 0 1 6.5 5h3A1.5 1.5 0 0 1 11 6.5v3A1.5 1.5 0 0 1 9.5 11h-3A1.5 1.5 0 0 1 5 9.5v-3zM6.5 6a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3z"/>
                            </svg>
                        </p>
                    </li>


                    <li class="configList">
                        <p id="memory">
                            <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-hdd" fill="currentColor"
                                 xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd"
                                      d="M14 9H2a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1v-1a1 1 0 0 0-1-1zM2 8a2 2 0 0 0-2 2v1a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2v-1a2 2 0 0 0-2-2H2z"/>
                                <path d="M5 10.5a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0zm-2 0a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0z"/>
                                <path fill-rule="evenodd"
                                      d="M4.094 4a.5.5 0 0 0-.44.26l-2.47 4.532A1.5 1.5 0 0 0 1 9.51v.99H0v-.99c0-.418.105-.83.305-1.197l2.472-4.531A1.5 1.5 0 0 1 4.094 3h7.812a1.5 1.5 0 0 1 1.317.782l2.472 4.53c.2.368.305.78.305 1.198v.99h-1v-.99a1.5 1.5 0 0 0-.183-.718L12.345 4.26a.5.5 0 0 0-.439-.26H4.094z"/>
                            </svg>
                        </p>
                    </li>
                </ul>

                <div style="align-content: center; width: 400px; height: 100px">
                    <a href="/into-cart">
                        <button class="insert-into-cart" >
                            <b style="
                            font-size: 24px">
                                <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-cart-plus"
                                     fill="currentColor" xmlns="http://www.w3.org/2000/svg" id="cart">
                                    <path fill-rule="evenodd"
                                          d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm7 0a1 1 0 1 0 0 2 1 1 0 0 0 0-2z"/>
                                    <path fill-rule="evenodd"
                                          d="M8.5 5a.5.5 0 0 1 .5.5V7h1.5a.5.5 0 0 1 0 1H9v1.5a.5.5 0 0 1-1 0V8H6.5a.5.5 0 0 1 0-1H8V5.5a.5.5 0 0 1 .5-.5z"/>
                                </svg>
                                Thêm vào giỏ hàng</b></button>
                    </a>
                </div>
                <c:choose>
                    <c:when test="${sessionScope.username != null}">
                        <div id="main" style="margin :0 auto;">
                            <dialog id="favDialog">

                                <p style="text-align: center; ">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-check2-all" viewBox="0 0 16 16">
                                        <path fill-rule="evenodd" d="M12.354 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"/>
                                        <path d="M6.25 8.043l-.896-.897a.5.5 0 1 0-.708.708l.897.896.707-.707zm1 2.414l.896.897a.5.5 0 0 0 .708 0l7-7a.5.5 0 0 0-.708-.708L8.5 10.293l-.543-.543-.707.707z"/>
                                    </svg>
                                </p>
                                <p>Đã thêm vào giỏ hàng</p>
                            </dialog>
                        </div>
                    </c:when>
                </c:choose>

                <div style="align-content: center; width: 400px; height: 100px">
                    <a href="/order" class="linkOrder">
                        <button class="buynow" style="background: #cb1c22; color: white"><b style="font-size: 24px">Mua
                            hàng</b></button>
                    </a>
                </div>

            </div>


        </div>
    </div>
    <div style="width:1100px; margin:0 auto; margin-top: 20px;text-align: left">
        <hr>
        <p><b style="color: #d0011b; font-size: 25px">Mô tả sản phẩm</b></p>

        <p><h5>Màn hình</h5></p>
        <p class="dscmonitor"></p>
        <p ><h5>Camera</h5></p>
        <p class="dsccamera"></p>
        <p ><h5>Bộ vi xử lí</h5></p>
        <p class="dscprocessor"></p>
        <hr>
    </div>
    <div style="width:1100px; margin:0 auto; text-align: left">
        <p><b style=" color: #d0011b; font-size: 25px"><p>Đánh giá sản phẩm</p> </b></p>
        <c:choose>
            <c:when test="${requestScope.feedbackpoint == 0}">
                <p style="color: #696969">Chưa có đánh giá cho sản phẩm</p>
            </c:when>
            <c:otherwise>
                <h4 style="color: #ee4d2d; font-size: 25px" > ${requestScope.feedbackpoint}/5
                    <c:choose>
                        <c:when test="${requestScope.feedbackpoint==3||
                        requestScope.feedbackpoint==1||requestScope.feedbackpoint==2||requestScope.feedbackpoint==4
                        ||requestScope.feedbackpoint==5}">
                            <c:forEach begin="1" end="${requestScope.feedbackpoint}" var="i">
                                <svg   xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"class="bi bi-star-fill" viewBox="0 0 16 16">
                                    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                                </svg>
                            </c:forEach>
                        </c:when>
<%--                        <c:when test="${requestScope.feedbackpoint==3}">--%>

<%--                        </c:when>--%>

                        <c:when test="${requestScope.feedbackpoint<1.9999}">
                            <svg   xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"class="bi bi-star-fill" viewBox="0 0 16 16">
                                <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                            </svg>
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-half" viewBox="0 0 16 16">
                                <path d="M5.354 5.119L7.538.792A.516.516 0 0 1 8 .5c.183 0 .366.097.465.292l2.184 4.327 4.898.696A.537.537 0 0 1 16 6.32a.55.55 0 0 1-.17.445l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256a.519.519 0 0 1-.146.05c-.341.06-.668-.254-.6-.642l.83-4.73L.173 6.765a.55.55 0 0 1-.171-.403.59.59 0 0 1 .084-.302.513.513 0 0 1 .37-.245l4.898-.696zM8 12.027c.08 0 .16.018.232.056l3.686 1.894-.694-3.957a.564.564 0 0 1 .163-.505l2.906-2.77-4.052-.576a.525.525 0 0 1-.393-.288L8.002 2.223 8 2.226v9.8z"/>
                            </svg>
                        </c:when>


                        <c:when test="${requestScope.feedbackpoint<2.9999}">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"class="bi bi-star-fill" viewBox="0 0 16 16">
                                <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                            </svg>
                            <svg  xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"class="bi bi-star-fill" viewBox="0 0 16 16">
                                <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                            </svg>
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-half" viewBox="0 0 16 16">
                                <path d="M5.354 5.119L7.538.792A.516.516 0 0 1 8 .5c.183 0 .366.097.465.292l2.184 4.327 4.898.696A.537.537 0 0 1 16 6.32a.55.55 0 0 1-.17.445l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256a.519.519 0 0 1-.146.05c-.341.06-.668-.254-.6-.642l.83-4.73L.173 6.765a.55.55 0 0 1-.171-.403.59.59 0 0 1 .084-.302.513.513 0 0 1 .37-.245l4.898-.696zM8 12.027c.08 0 .16.018.232.056l3.686 1.894-.694-3.957a.564.564 0 0 1 .163-.505l2.906-2.77-4.052-.576a.525.525 0 0 1-.393-.288L8.002 2.223 8 2.226v9.8z"/>
                            </svg>
                        </c:when>

                        <c:when test="${requestScope.feedbackpoint < 3.9999}">
                            <svg  xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"class="bi bi-star-fill" viewBox="0 0 16 16">
                                <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                            </svg>
                            <svg   xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"class="bi bi-star-fill" viewBox="0 0 16 16">
                                <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                            </svg>
                            <svg   xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"class="bi bi-star-fill" viewBox="0 0 16 16">
                                <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                            </svg>
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-half" viewBox="0 0 16 16">
                                <path d="M5.354 5.119L7.538.792A.516.516 0 0 1 8 .5c.183 0 .366.097.465.292l2.184 4.327 4.898.696A.537.537 0 0 1 16 6.32a.55.55 0 0 1-.17.445l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256a.519.519 0 0 1-.146.05c-.341.06-.668-.254-.6-.642l.83-4.73L.173 6.765a.55.55 0 0 1-.171-.403.59.59 0 0 1 .084-.302.513.513 0 0 1 .37-.245l4.898-.696zM8 12.027c.08 0 .16.018.232.056l3.686 1.894-.694-3.957a.564.564 0 0 1 .163-.505l2.906-2.77-4.052-.576a.525.525 0 0 1-.393-.288L8.002 2.223 8 2.226v9.8z"/>
                            </svg>
                        </c:when>

                        <c:when test="${requestScope.feedbackpoint<4.9999}">
                            <svg  xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"class="bi bi-star-fill" viewBox="0 0 16 16">
                                <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                            </svg>
                            <svg  xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"class="bi bi-star-fill" viewBox="0 0 16 16">
                                <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                            </svg>
                            <svg  xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"class="bi bi-star-fill" viewBox="0 0 16 16">
                                <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                            </svg>
                            <svg  xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"class="bi bi-star-fill" viewBox="0 0 16 16">
                                <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                            </svg>
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-half" viewBox="0 0 16 16">
                                <path d="M5.354 5.119L7.538.792A.516.516 0 0 1 8 .5c.183 0 .366.097.465.292l2.184 4.327 4.898.696A.537.537 0 0 1 16 6.32a.55.55 0 0 1-.17.445l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256a.519.519 0 0 1-.146.05c-.341.06-.668-.254-.6-.642l.83-4.73L.173 6.765a.55.55 0 0 1-.171-.403.59.59 0 0 1 .084-.302.513.513 0 0 1 .37-.245l4.898-.696zM8 12.027c.08 0 .16.018.232.056l3.686 1.894-.694-3.957a.564.564 0 0 1 .163-.505l2.906-2.77-4.052-.576a.525.525 0 0 1-.393-.288L8.002 2.223 8 2.226v9.8z"/>
                            </svg>
                        </c:when>

                        <c:otherwise>
                            <c:forEach var="i" begin="0" end="4">
                                <svg id="st"  xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"class="bi bi-star-fill" viewBox="0 0 16 16">
                                    <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                                </svg>
                            </c:forEach>
                        </c:otherwise>
                    </c:choose>

                </h4>
            </c:otherwise>
        </c:choose>
    </div>
    <div style="width:900px; margin:0 auto; margin-top: 20px;text-align: left">
         <c:forEach items="${requestScope.listfeedbackcontent}" var="i">
             <div style="margin: 4px">
                 <p><b style="font-size: 16px" class="usernamefeedback">${i.username}</b> <c:forEach begin="1" end="${i.point}" >
                     <svg   xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"class="bi bi-star-fill" viewBox="0 0 16 16">
                         <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                     </svg>
                 </c:forEach>
             </p>
                 <p>${i.content}</p>
             </div>
             <hr>
         </c:forEach>
    </div>
    <div class="d3" style="width:1100px; margin:0 auto; margin-top: 20px;text-align: left; ">
        <p><b style=" color: #d0011b; font-size: 25px">Các sản phẩm liên quan </b></p>
        <div class="listphone">
            <ul class="products">
                <c:forEach items="${requestScope.phoneSameBrand}" var="i">
                    <li class="samebrand">
                        <a href="/info-phone/${i.phoneName}">
                            <div class="image" style="margin-top: 4px"><img src="<c:url value="${i.image}"/>" height="250" width="190"/></div>
                            <div> ${i.phoneName}</div>
                            <div style="color: #cb1c22" > <fmt:formatNumber value="${i.giaTien}" type="number"/> VNĐ</div>
                            <span><a href="${pageContext.request.contextPath}/info-phone/${i.phoneName}" class="btn btn-lg red">Mua hàng<i class="fa fa-shopping-cart"></i></a></span>
                        </a>
                    </li>
                </c:forEach>
            </ul>
        </div>
    </div>
</div>

</body>
</html>
