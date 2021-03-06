/*
 *
 * login-register modal
 * Autor: Creative Tim
 * Web-autor: creative.tim
 * Web script: #
 * 
 */

function showRegisterForm() {
    $('.loginBox').fadeOut('fast', function () {
        $('.registerBox').fadeIn('fast');
        $('.login-footer').fadeOut('fast', function () {
            $('.register-footer').fadeIn('fast');
        });
        $('.modal-title').html('Join us!');
    });
    $('.error').removeClass('alert alert-danger').html('');

}
function showLoginForm() {
    $('#loginModal .registerBox').fadeOut('fast', function () {
        $('.loginBox').fadeIn('fast');
        $('.register-footer').fadeOut('fast', function () {
            $('.login-footer').fadeIn('fast');
        });

        $('.modal-title').html('请登录');
    });
    $('.error').removeClass('alert alert-danger').html('');
}

function openLoginModal() {
    showLoginForm();
    setTimeout(function () {
        $('#loginModal').modal('show');
    }, 230);

}
function openRegisterModal() {
    showRegisterForm();
    setTimeout(function () {
        $('#loginModal').modal('show');
    }, 230);

}
function logout(){
    var settings = {
        url: "http://www.bedgasmblog.cn/user/logout",
        type: "POST",
        data: {},
        // dataType:"json",
        success: function (data) {
            if(data.success==true){
                window.location.href("index.html");
            }
        },   
    };
    $.ajax(settings);
}
function register(){
    var settings = {
        url: "http://www.bedgasmblog.cn/user/register",
        type: "POST",
        data: {
            username: $("#username").val(),
            password: $("#pwd").val(),
            email:$("#email").val()
        },
        dataType:"json",
        success: function (data) {
            if (data.success == true) {
                $("#login-button").css("display", "none");
                $("#signin-button").css("display", "none");
                $('#loginModal').modal('hide');
                $("#account").css("display", "block");
                $("#accountname").html(data.user.nickname);
            }
            else
            {
                
            }
        },   
    };
    if($(".form-control1").val() == "")
    {
        alert("e1");
    }
    else if($(".error").css("display")=="none")
    {
        alert("e2");
    }

    // if ($(".form-control").html() != "" && $(".error").css("display")=="none") {
    //     alert("s!");
    //     $.ajax(settings);
    // }
    // else{
    //     alert("e");
    // }
}
function loginAjax() {
    var settings = {
        url: "http://www.bedgasmblog.cn/user/login",
        type: "POST",
        data: {
            username: $("#nameoremail").val(),
            password: $("#loginpwd").val()
        },
        // dataType:"json",
        success: function (data) {
            if (data.msg == "登录成功") {
                $("#login-button").css("display", "none");
                $("#signin-button").css("display", "none");
                $('#loginModal').modal('hide');
                $("#account").css("display", "block");
                $("#accountname").html(data.user.nickname);
            }
            else
            {
                $("#loginfail").html("用户名或密码错误！");
            }
        },   
    };
    $.ajax(settings);
    /*   Remove this comments when moving to server
    $.post( "/login", function( data ) {
            if(data == 1){
                window.location.replace("/home");            
            } else {
                 shakeModal(); 
            }
        });
    */

    /*   Simulate error message from the server   */
    // shakeModal();
}

function shakeModal() {
    $('#loginModal .modal-dialog').addClass('shake');
    $('.error').addClass('alert alert-danger').html("Invalid email/password combination");
    $('input[type="password"]').val('');
    setTimeout(function () {
        $('#loginModal .modal-dialog').removeClass('shake');
    }, 1000);
}

$(function () {
    (function register() {
        // 用户名框失去焦点
        $("#username").blur(function () {
            reg = /^[a-zA-Z0-9_]{4,16}$/;

            if ($(this).val() == "") {
                $(this).next().html("用户名不能为空！");
                $(this).next().css("display", "block");
            }
            else if (!reg.test($("#username").val())) {
                $(this).next().html("格式错误，只能输入数字、字母、下划线的组合！");
                $(this).next().css("display", "block");
            }
            else {
                $(this).next().css("display", "none");
                checkusername();
            }
        });

        $("#nickname").blur(function () {
            reg = /^[a-zA-Z0-9_]{4,16}$/;

            if ($(this).val() == "") {
                $(this).next().html("昵称不能为空！");
                $(this).next().css("display", "block");
            }
            else if (!reg.test($("#nickname").val())) {
                $(this).next().html("昵称只能由大小写字母，下划线组成!");
                $(this).next().css("display", "block");
            }
            else {
                $(this).next().css("display", "none");
            }
        });

        // 邮箱框失去焦点
        $("#email").blur(function () {
            reg = /^[A-Za-z\d]+([-_.][A-Za-z\d]+)*@([A-Za-z\d]+[-.])+[A-Za-z\d]{2,4}$/;

            if ($(this).val() == "") {
                $(this).next().html("邮箱不能为空！");
                $(this).next().css("display", "block");
            }
            else if (!reg.test($("#email").val())) {
                $(this).next().html("请输入正确的邮箱格式！");
                $(this).next().css("display", "block");
            }
            else {
                $(this).next().css("display", "none");
                checkemail();
            }
        });
        // 密码框失去焦点 
        $("#pwd").blur(function () {
            reg = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[\s\S]{8,30}$/;

            if ($(this).val() == "") {
                $(this).next().html("密码不能为空！");
                $(this).next().css("display", "block");
            }
            else if (!reg.test($("#pwd").val())) {
                $(this).next().html("格式错误，至少包含数字、大小写字母！");
                $(this).next().css("display", "block");
            }
            else {
                $(this).next().css("display", "none");
            }
        });

        // 确认密码框失去焦点
        $("#password_confirmation").blur(function () {

            if ($(this).val() == "") {
                $(this).next().html("确认密码不能为空！");
                $(this).next().css("display", "block");
            }
            else if ($(this).val() != $("#pwd").val()) {
                $(this).next().html("请确保两次输入密码一样！");
                $(this).next().css("display", "block");
            }
            else {
                $(this).next().css("display", "none");
            }
        });
        // 登录账户框失去焦点
        $("#nameoremail").blur(function () {

            if ($(this).val() == "") {
                $(this).next().html("账户不能为空！");
                $(this).next().css("display", "block");
            }
            else {
                $(this).next().css("display", "none");
            }
        });
        // 登录密码框失去焦点
        $("#loginpwd").blur(function () {

            if ($(this).val() == "") {
                $(this).next().html("密码不能为空！");
                $(this).next().css("display", "block");
            }
            else {
                $(this).next().css("display", "none");
            }
        });



    })();
});


function checkusername(){
    var settings = {
        url: "http://www.bedgasmblog.cn/user/isValid",
        type: "POST",
        data: {
            username: $("#username").val(),
        },
        dataType:"json",
        success: function (data) {
            if(data.isValid==false)
            {
                $("#username").next().html("用户名已被注册！");
                $("#username").next().css("display", "block");
            }
        },   
    };
    $.ajax(settings);
}

function checkemail(){
    var settings = {
        url: "http://www.bedgasmblog.cn/user/isValid",
        type: "POST",
        data: {
            email: $("#email").val(),
        },
        dataType:"json",
        success: function (data) {
            if(data.isValid==false)
            {
                $("#email").next().html("邮箱已被使用！");
                $("#email").next().css("display", "block");
            }
        },   
    };
    $.ajax(settings);
}

var timer = null;
// function loginClick(){
//     $("#loginModal").modal('hide');
//     $(location).attr('href', 'signin.html');
// }

