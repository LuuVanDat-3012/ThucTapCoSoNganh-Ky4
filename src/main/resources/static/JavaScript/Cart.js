// $(document).ready(function (){
//    $.ajax({
//        url : '/cart',
//    }).then(function (data){
//         $('.nomargin').append()
//    })
//
//
// })
var token = localStorage.getItem('token')
$.ajaxSetup({
    headers: { Authorization: 'Bearer ' + token }
})