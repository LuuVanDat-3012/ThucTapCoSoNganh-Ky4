<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<fmt:setLocale value="vn_VND"/>
<html>
<head>
    <title>Title</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<c:url value="/css/PhoneListByBrand.css"/> "/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>

</head>
<body>

<div class="listphoneSearch">
    <div class="searchTitle"><h3 >Kết quả tìm kiếm : </h3></div>

    <ul class="products">
        <c:forEach items="${requestScope.phoneWasSearched}" var="i">
            <li class="samebrand">
                <a href="/info-phone/${i.phoneName}">
                    <div class="image" style="margin-top: 4px"><img src="<c:url value="${i.image}"/>" height="230" width="180"/></div>
                    <div> ${i.phoneName}</div>
                    <div style="color: #cb1c22"> <fmt:formatNumber value="${i.giaTien}" type="number"/> VNĐ</div>
                    <div>
                        <c:choose>
                            <c:when test="${i.ratePoint == null}">
                                <h5 style="color: black; font-size: 14px; font-style: normal">Chưa có đánh giá cho sản phẩm</h5>
                            </c:when>
                            <c:otherwise>
                                Đánh giá : ${i.ratePoint}/5 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
                                <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
                            </svg>
                            </c:otherwise>
                        </c:choose>
                    </div>
                    <span><a href="${pageContext.request.contextPath}/info-phone/${i.phoneName}" class="btn btn-lg red">Mua hàng<i class="fa fa-shopping-cart"></i></a></span>
                </a>
            </li>
        </c:forEach>
    </ul>
</div>
<div class="totalPages">

    <ul>
        <c:forEach begin="0" end="${requestScope.totalPage-1}" var="i">
           <li>
               <a href="/danh-muc-san-pham?brandId=${requestScope.brandId}&page=${i}">
                   <button><p style="font-style: inherit">${i+1}</p></button>

               </a>
           </li>

        </c:forEach>
<%--        <li><</li>--%>
<%--        <li><a href="news.asp">News</a></li>--%>
<%--        <li><a href="contact.asp">Contact</a></li>--%>
<%--        <li><a href="about.asp">About</a></li>--%>
    </ul>
</div>
</body>
</html>
