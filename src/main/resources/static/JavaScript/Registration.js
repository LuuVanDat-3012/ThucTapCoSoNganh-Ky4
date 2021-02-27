$(document).ready(function() {

    $('.input').focus(function() {
        $(this).parent().find(".label-txt").addClass('label-active');
    });

    $(".input").focusout(function() {
        if ($(this).val() == '') {
            $(this).parent().find(".label-txt").removeClass('label-active');
        };
    });
    //------------------
    // $("#process").click(function (e){
    //     var url, data;
    //     url = "/registration";
    //     data = {
    //         "userName" : $("#registrationForm :text[name = 'username']").val(),
    //         "password": $("#registrationForm :password[name ='psw']").val()
    //     };
    //     var dat = JSON.stringify(data);
    //
    // })
});
function sendUser(){

    var user = {
        userId : 'KH01',
        userName : $("#userName").val(),
        password : $("#password").val(),
        role: 'USER',
        updateBy : null,
        updatedDate : null,
        status : null
    };
    $.ajax({
        url: "/user",
        type: 'POST',
        data: JSON.stringify(user),
        data_type: 'Json',
        contentType : "application/json",
        success: function (data){
            if (!data){
                $("#errorPassWord").html("Tài khoản người dùng đã tồn tại !!! ");
            }
            else {
                alert("thanh cong");
            }
        },
        error: function (data){
            alert(data);
        }
    })
}
function checkUser(){
   var userName = $("#userName").val();
   var psw = $("#password").val();
   var cpsw = $("#cpassword").val();

   if(userName == null || userName == ""){
        $("#errorUserName").html("Tên người dùng không được để trống !!!");
        return  false;
   }
   else {
       $("#errorUserName").html("");
   }

   if(psw == null || psw == "" || cpsw == null || cpsw == ""){
       $("#errorPassWord").html("Mật khẩu không được để trống !!!");
       return  false;
   }
   else {
       $("#errorPassWord").html("");
   }

   if(psw != cpsw){
       $("#errorPassWord").html("Mật khẩu và mật khẩu xác không giống nhau !!!");
       return false;
   }
   else {
       $("#errorPassWord").html("");
   }
   sendUser();
   return true;
}
