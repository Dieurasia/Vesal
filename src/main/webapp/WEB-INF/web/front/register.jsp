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
            <form class="form" action="javascript:null;">
                <input type="text" name="username" placeholder="请输入用户名">
                <input type="password" name="password" placeholder="请输入密码">
                <input type="password" name="passwordAgain" placeholder="请确认密码">
                <input type="text" name="userCode" placeholder="请输入客户编码">
                <select id="userSet" style="color: #FFFFFF">
                    <option>请选择用户职业</option>
                    <option value="教师">教师</option>
                    <option value="医生">医生</option>
                    <option value="管理人员">管理人员</option>
                    <option value="其他">其他</option>
                </select>
                <input type="text" name="userPhone" placeholder="请输入联系电话" style="margin-top: 10px">
                <input type="text" name="userEmail" placeholder="请输入电子邮箱">
                <input type="text" name="userCity" placeholder="请输入所在城市">
                <input style="display: none" type="text" id="showMsg">
                <button type="submit" id="submit-button">注册信息</button>
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
    $('#submit-button').click(function (event) {
        // event.preventDefault();
        // $('form').fadeOut(500);
        // $('.wrapper').addClass('form-success');
        let username = $("input[name='username']").val();
        let password = $("input[name='password']").val();
        let passwordAgain = $("input[name='passwordAgain']").val();
        let userCode = $("input[name='userCode']").val();
        let userSet = $("#userSet").val();
        let userPhone = $("input[name='userPhone']").val();
        let userEmail = $("input[name='userEmail']").val();
        let userCity = $("input[name='userCity']").val();

        if (username !== null && password !== null && passwordAgain !== null && userCode !== null && userSet !== null && userPhone !== null && userEmail !== null && userCity !== null) {
            if (password === passwordAgain) {
                $.post("${baseurl}/CustomLogin/customRegister",
                    {
                        cName:username,
                        cPassword:password,
                        cCode:userCode,
                        cOccupation:userSet,
                        cPhone:userPhone,
                        cEmail:userEmail,
                        cCity:userCity
                    },function (data) {
                    if (data.result) {
                        <%--location.href("${baseurl}/WEB-INF/web/front/login.jsp");--%>
                        window.location.href = "${baseurl}/page/frontLogin";
                    }
                    })
            } else {
                $("#showMsg").show();
                $("#showMsg").val("两次密码输入不一致！！！");
            }
        } else {
            $("#showMsg").show();
            $("#showMsg").val("请填写完整信息！！！");
        }
    });
</script>

</body>
</html>