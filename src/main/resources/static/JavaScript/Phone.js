function getUrlVars() {
    var vars = {};
    var parts = window.location.href.replace(/[?&]+([^=&]+)=([^&]*)/gi,
        function (m, key, value) {
            vars[key] = value;
        });
    return vars;
}
const numberFormar = new Intl.NumberFormat('es-US', {
    style: 'decimal',
    currency: 'VND'
})


var keyword = getUrlVars()["keyword"];
var url = '/phones';
if (keyword == null || keyword == '' || keyword == undefined) {
    url = '/phones';
} else
    url = '/phones&keyword=' + keyword;
$(document).ready(function () {
    showDataPhone();
})
function showDataPhone() {
    $.ajax({
        type: "GET",
        url: '/phones-by-brand',
        data_type: 'Json',
        contentType: 'application/json',
    }).then(function (data) {
        var count = 1;
        var count1 = 1;
        var count2 = 1;
        for (var i = 0; i <= data.length; i++) {
            var phonename = data[i].phoneName;
            var image = data[i].image;
            var price = data[i].giaTien;
            var ratePoint = data[i].ratePoint;
            if(ratePoint == undefined || ratePoint == null || ratePoint == 0)
                var htmlRatePoint = "<p class='ratePointNull'>Chưa có đánh giá</p>";
            else
                var htmlRatePoint = "<p class='ratePoint'><b class='editWorld'>Đánh giá :</b> "+ratePoint+"/5 " +
                    "<svg   xmlns=\"http://www.w3.org/2000/svg\" width=\"16\" height=\"16\" fill=\"currentColor\"class=\"bi bi-star-fill\" viewBox=\"0 0 16 16\">\n" +
                    "                                    <path d=\"M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.283.95l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z\"/>\n" +
                    "                                </svg> </p>";


            var html =
                "<div class ='ele'><a href='/info-phone/" + phonename + "'>" +
                "<div><img class='image' src='" + image + "'height='190px' width='130px'></div>"
                + "<div>" + phonename + "</div>"
                + "<div style='color: #cb1c22;'>" + numberFormar.format(price) + " VNĐ</div>"
                + "<div>"+htmlRatePoint+"</div>"
                + "<span><a href='/info-phone/" + phonename + "' class=\"btn btn-lg red\" id=\"buyPhone\">Mua hàng<i\n" +
                "                        class=\"fa fa-shopping-cart\"></i></a></span>"
                + "</a></div>";

            if (data[i].brand.brandId.startsWith('SS')) {
                    if (count <= 5) {
                        $('#slide1SS').append(html);
                        count++;
                    } else {
                        $('#slide2SS').append(html);
                    }
            } else if (data[i].brand.brandId.startsWith('RM')) {


                    if (count1 <= 5) {
                        $('#slide1RM').append(html);
                        count1++;
                    } else {
                        $('#slide2RM').append(html);
                    }
            }
            else if(data[i].brand.brandId.startsWith('OP')) {
                    if (count2 <= 5) {
                        $('#slide1OP').append(html);
                        count2++;
                    } else {
                        $('#slide2OP').append(html);
                    }
            }
            else{
                $('#slide1AP').append(html);
            }
        }
    })
}
// function showDataLaptop(){
//     $.ajax({
//         type: "GET",
//         url: '/laptop',
//         data_type: 'Json',
//         contentType: 'application/json',
//     }).then(function (data){
//         for (var i=0;i<data.length;i++){
//             var ltName = data[i].ltName;
//             var ltPrice = data[i].ltPrice;
//             var ltImage = data[i].ltImage;
//
//             var html = " <li class=\"samebrand\">\n" +
//                 "                    <a href='/info-laptop/"+ltName+"'>\n" +
//                 "                       <div><img class='image' src='" + ltImage + "'height='260px' width='200px'></div>" +
//                 "                        <div> "+ltName+"</div>\n" +
//                 "                        <div style=\"color: #cb1c22\" >"+ numberFormar.format(ltPrice)+" VNĐ</div>\n" +
//                 "                        <span><a href=\"${pageContext.request.contextPath}/info-laptop/"+ltName+"\" " +
//                 "class=\"btn btn-lg red\">Mua hàng<i class=\"fa fa-shopping-cart\"></i></a></span>\n" +
//                 "                    </a>\n" +
//                 "                </li>";
//             $('.menult').append(html);
//         }
//     })
// }

