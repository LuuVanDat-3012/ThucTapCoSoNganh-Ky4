<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Dat
  Date: 1/23/2021
  Time: 2:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="<c:url value="/css/BuyPhone.css"></c:url> ">
    <script src="<c:url value="/JavaScript/BuyPhone.js"/> "></script>

</head>
<body>
        <div class="titleBuyPhone"><a href="/" style="text-align: left; color: #d70018">
            <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-bootstrap-fill"
                 viewBox="0 0 16 16" style="margin-top: -4px">
                <path d="M6.375 7.125V4.658h1.78c.973 0 1.542.457 1.542 1.237 0 .802-.604 1.23-1.764 1.23H6.375zm0 3.762h1.898c1.184 0 1.81-.48 1.81-1.377 0-.885-.65-1.348-1.886-1.348H6.375v2.725z"/>
                <path d="M4.002 0a4 4 0 0 0-4 4v8a4 4 0 0 0 4 4h8a4 4 0 0 0 4-4V4a4 4 0 0 0-4-4h-8zm1.06 12V3.545h3.399c1.587 0 2.543.809 2.543 2.11 0 .884-.65 1.675-1.483 1.816v.1c1.143.117 1.904.931 1.904 2.033 0 1.488-1.084 2.396-2.888 2.396H5.062z"/>
            </svg>
            MiTaNiSaRaHe | Mua hàng<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-bag" viewBox="0 0 16 16">
            <path d="M8 1a2.5 2.5 0 0 1 2.5 2.5V4h-5v-.5A2.5 2.5 0 0 1 8 1zm3.5 3v-.5a3.5 3.5 0 1 0-7 0V4H1v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4h-3.5zM2 5h12v9a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V5z"/>
        </svg>
        </a></div>
<div style="margin: 0 auto; width: 1000px">
   <c:choose>
       <c:when test="${requestScope.cartPhone == null}">
           <div class="nullcart">
               <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-emoji-frown" viewBox="0 0 16 16">
                   <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                   <path d="M4.285 12.433a.5.5 0 0 0 .683-.183A3.498 3.498 0 0 1 8 10.5c1.295 0 2.426.703 3.032 1.75a.5.5 0 0 0 .866-.5A4.498 4.498 0 0 0 8 9.5a4.5 4.5 0 0 0-3.898 2.25.5.5 0 0 0 .183.683zM7 6.5C7 7.328 6.552 8 6 8s-1-.672-1-1.5S5.448 5 6 5s1 .672 1 1.5zm4 0c0 .828-.448 1.5-1 1.5s-1-.672-1-1.5S9.448 5 10 5s1 .672 1 1.5z"/>
               </svg> Bạn không ó sản phẩm nào trong giỏ hàng !!!
           </div>
       </c:when>
       <c:otherwise>
               <c:forEach items="${requestScope.cartPhone}" var="i">
                   <hr>
                   <div class="infoPhone-in-cart">
                       <div class="imgPhoneBuy"><img src="${i.phone.image}" height="120px" width="90px"></div>
                       <div class="namePhoneBuy"><a
                               href="/info-phone/${requestScope.phone.phoneName}">${requestScope.phone.phoneName}</a></div>
                       <div class="amountPhonebuy">
                           <input onclick="var result = document.getElementById('quantity'); var qty = result.value; if( !isNaN(qty) &amp; qty > 1 ) result.value--;return false;"
                                  type='button' value='-' style="background: white; border: 1px solid #d2d2d2; border-radius: 2px"/>
                           <input id='quantity' min='1' name='quantity' type='text' value='${i.amount}' style="width: 50px; text-align: center"/>
                           <input onclick="var result = document.getElementById('quantity'); var qty = result.value; if( !isNaN(qty)) result.value++;return false;"
                                  type='button' value='+' style="background: white; border: 1px solid #d2d2d2; border-radius: 2px"/>
                       </div>
                   </div>
               </c:forEach>
       </c:otherwise>
   </c:choose>



</div>
</body>
</html>
