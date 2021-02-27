$(document).ready(function (){
    var phoneName = getPhone();
    $.ajax({
        url: '/phones?keyword='+phoneName,
    }).then(function (data){
        $('.phoneName').append(data[0].phoneName);
        $('.price').append(numberFormar.format(data[0].giaTien));
        $('#image').attr('src',data[0].image);

        $('#image1').attr('src',data[0].phoneImage1);
        $('#image2').attr('src',data[0].phoneImage2);
        $('#image3').attr('src',data[0].phoneImage3);
        $('#image4').attr('src',data[0].phoneImage4);
        $('.dsccamera').append(data[0].pdescriptionCamera);
        $('.dscmonitor').append(data[0].pdescriptionMonitor);
        $('.dscprocessor').append(data[0].pdescriptionHardware);
        // console.log(data[0].infoPhone);
        var infoPhone = formatString(data[0].infoPhone);
        $('#screen').append(infoPhone[0].toString());
        $('#frontcamera').append(infoPhone[1].toString());
        $('#rearcamera').append(infoPhone[2].toString());
        $('#processor').append(infoPhone[3].toString());
        $('#memory').append(infoPhone[4].toString());
    })
    var newCart = {
        cartId : null,
        amount : 1,
        status : false,
        phoneid : "000",
        userId : "000"
    };
    $(".insert-into-cart").click(function (e) {
        $.ajax({
            url: '/cart',
            type : 'post',
            data_type: 'Json',
            data: JSON.stringify(newCart),
            contentType: 'application/json',
            success: function (data){
                if (data == 0){
                    window.location.href = 'http://localhost:8080/login';
                }

            },
            error: function (){
                console.log("error")
            }
        })
    })

    $(".buynow").click(function (){
        $.ajax({
            url: '/cart',
            type : 'post',
            data_type: 'Json',
            data: JSON.stringify(newCart),
            contentType: 'application/json',
            success: function (data){
                if (data == 0){
                    window.location.href = 'http://localhost:8080/login';
                }

            },
            error: function (){
                console.log("error")
            }
        })
    })
})
function getPhone(){
    var url = window.location.href.toString();
    var index = url.lastIndexOf("/");
    var tmp = url.substr(index+1, url.length);
    var tmp1 = tmp.replace("%20"," ");
    var result = tmp1.replace("+"," ");
    return result;
}
const  numberFormar = new Intl.NumberFormat('es-US',{
    style: 'decimal',
    currency: 'VND'
})
function formatString(a){
    var tmp = a.toString().split("/",5);
     return tmp;
}
$(document).ready(function() {
    var dialogtest = document.getElementById("favDialog");
    $('.insert-into-cart').click(function() {
        if (dialogtest.open == true) {
            dialogtest.open = false;
        } else {
            dialogtest.open = true;
        }
    })

    $('#main').click(function() {
        dialogtest.open = false;
    })

    $('.btnimage1').click(function (){
        $('#image').attr('src',$('#image1').attr('src'));
        $('#image1').attr('src',$('#image').attr('src'));

    })
    $('.btnimage2').click(function (){
        $('#image').attr('src',$('#image2').attr('src'));
        $('#image2').attr('src',$('.imagemain').attr('src'));
    })
    $('.btnimage3').click(function (){
        $('#image').attr('src',$('#image3').attr('src'));
        $('#image3').attr('src',$('.imagemain').attr('src'));
    })
    $('.btnimage4').click(function (){
        $('#image').attr('src',$('#image4').attr('src'));
        $('#image4').attr('src',$('.imagemain').attr('src'));
    })
})

$('.btnimage2').click(function (){
    $('#image').attr('src',data[0].phoneImage2);
    $('#image2').attr('src',data[0].image);
});

$('.btnimage3').click(function (){
    $('#image').attr('src',data[0].phoneImage3);
    $('#image3').attr('src',data[0].image);
});

$('.btnimage4').click(function (){
    $('#image').attr('src',data[0].phoneImage4);
    $('#image4').attr('src',data[0].image);
});

//format price






