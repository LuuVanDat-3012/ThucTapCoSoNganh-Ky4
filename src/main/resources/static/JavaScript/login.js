// $(document).ready(function (){
//
//     $('#btnLogin').click(function (){
//         var name = $('#username').val();
//         var pwd = $('#password').val();
//         var user = {
//             username: name,
//             password:pwd
//         }
//         $.ajax({
//             type: 'post',
//             contentType :'application/json',
//             data : JSON.stringify(user),
//             url :"/authenticate",
//             success: function (data){
//                 // if (data.token.toString().startsWith('eyJhbGciOiJIUzUxMiJ9')){
//                 //     createCookie("token", data.token,1);
//                 //     window.location = 'http://localhost:8080/getPhone';
//                 // }
//                 // else{
//                 //     window.location = 'http://localhost:8080/login';
//                 // }
//             },
//             error: function (){
//                 console.log("error")
//             }
//         })
//
//
//     })
// })
// function createCookie(name, value, days) {
//     var expires;
//
//     if (days) {
//         var date = new Date();
//         date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
//         expires = "; expires=" + date.toGMTString();
//     } else {
//         expires = "";
//     }
//     document.cookie = encodeURIComponent(name) + "=" + encodeURIComponent(value) + expires + "; path=/login";
// }
//
// function readCookie(name) {
//     var nameEQ = encodeURIComponent(name) + "=";
//     var ca = document.cookie.split(';');
//     for (var i = 0; i < ca.length; i++) {
//         var c = ca[i];
//         while (c.charAt(0) === ' ')
//             c = c.substring(1, c.length);
//         if (c.indexOf(nameEQ) === 0)
//             return decodeURIComponent(c.substring(nameEQ.length, c.length));
//     }
//     return null;
// }
//
// function eraseCookie(name) {
//     createCookie(name, "", -1);
// }