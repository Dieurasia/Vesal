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
    <link rel="stylesheet" type="text/css" href="${baseurl}/public/css/register_front.css">
    <link rel="stylesheet" type="text/css" href="${baseurl}/public/css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="${baseurl}/public/css/style.css"/>
</head>
<body>
<div class="htmleaf-container">
    <div id="logo">
        <a href="${baseurl}/page/index">
            <img id="img" src="${baseurl}/public/images/favicon.ico"/>
            <span id="title">维萨里展示网</span>
        </a>
    </div>
    <div class="wrapper">
        <div class="container">
            <h1 style="color: white">用户注册</h1>
            <form class="form">
                <input type="text" placeholder="请输入用户名">
                <input type="password" placeholder="请输入密码">
                <input type="password" placeholder="请确认密码">
                <input type="text" placeholder="请输入客户编码">
                <select id="userSet" style="color: #FFFFFF">
                    <option>请选择用户职业</option>
                    <option value="教师">教师</option>
                    <option value="医生">医生</option>
                    <option value="管理人员">管理人员</option>
                    <option value="其他">其他</option>
                </select>
                <input type="text" placeholder="请输入联系电话" style="margin-top: 10px">
                <input type="text" placeholder="请输入电子邮箱">
                <input type="text" placeholder="请输入所在城市">
                <input type="hidden">
                <button type="submit" id="login-button">注册信息</button>
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
            <li></li>
            <li></li>
        </ul>
    </div>
</div>

<div class="footer navbar-fixed-bottom " style="  background: white;">
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
    });
</script>

</body>
</html>