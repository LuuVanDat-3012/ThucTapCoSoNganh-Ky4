<%--
  Created by IntelliJ IDEA.
  User: Dat
  Date: 11/30/2020
  Time: 5:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script>
        $(document).ready(function() {
            $("#btn").click(function(e) {
                var url = "/phones";
                // var data2= {
                //     "id" : 8 ,
                //     "name" : "Dat"
                // };
                $.get(url, function(data, status, jqXHR) {
                    console.log(data);
                    render(data);
                })
            })
        })
        function render(data){
            var info = document.getElementById("info");
            var htmlString = "";
            for (i=0;i<data.length;i++){
                htmlString+="<p>" + data[i].phoneName + " was launed by "+ data[i].brand.brandName +"</p>"
            }
            info.insertAdjacentHTML("beforebegin", htmlString);
        }

    </script>
</head>
<body>
<header>
    <h1>Ajax</h1>
</header>

<div>
    <button id="btn">Click here</button>
</div>
<div id="info"></div>
<%--<script src="<c:url value="Ajax.js"/>"></script>--%>
</body>
</html>
