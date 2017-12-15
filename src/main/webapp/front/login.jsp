<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="public/tag.jsp" %>
<!doctype html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="${baseurl}/public/images/favicon.ico">
    <title>维萨里展示网</title>
    <link rel="stylesheet" type="text/css" href="${baseurl}/public/css/login_front.css">
    <link rel="stylesheet" type="text/css" href="${baseurl}/public/css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="${baseurl}/public/css/style.css"/>
</head>
<body>
<div class="htmleaf-container">
    <div id="logo">
        <img id = "img" src="${baseurl}/public/images/favicon.ico"/>
        <span id="title">维萨里展示网</span>
    </div>
    <div class="wrapper">
        <div class="container">
            <h1 style="color: white">用户登录</h1>
            <form class="form">
                <input type="text" placeholder="Username">
                <input type="password" placeholder="Password">
                <button type="submit" id="login-button" >登录</button>
            </form>
        </div>

        <ul class="bg-bubbles">
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
        </ul>
    </div>
</div>

<div class="footer navbar-fixed-bottom " style="  background: white;" >
    <div class="copy_z">
        <div class="container" style="height: 50px;">
            <div class="left" style=" width: 100%; text-align: center;">
                <span class="co_zi">2017-2018 © Write by Eurasia ThoughtWorks Studio 版权所有</span>
                </div>
            </div>
        </div>
    </div>
<script src="${baseurl}/public/js/jquery.min.js"></script>
<script>
    $('#login-button').click(function (event) {
        event.preventDefault();
        $('form').fadeOut(500);
        $('.wrapper').addClass('form-success');
        location.href="./home/index.jsp";
    });
</script>

</body>
</html>