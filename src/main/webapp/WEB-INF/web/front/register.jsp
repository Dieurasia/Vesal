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
    <link rel="stylesheet" type="text/css" href="${baseurl}/public/common/layui/css/layui.css" media="all">
    <script type="text/javascript" src="${baseurl}/public/js/larrycms.js"></script>

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
            <h1 style="color: white ;margin-bottom: 20px;">用户注册</h1>
            <form class="form" action="javascript:null;">
                <input type="text" name="username" placeholder="请输入用户名">
                <input type="password" name="password" placeholder="请输入密码">
                <input type="password" name="passwordAgain" placeholder="请确认密码">
                <%--<input type="text" name="userCode" placeholder="请输入客户编码">--%>
                <select id="userSet" style="color: #FFFFFF">
                    <option value="">请选择用户职业</option>
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
<script type="text/javascript" src="http://pv.sohu.com/cityjson?ie=utf-8"></script>
<script type="text/javascript">
    $('#submit-button').click(function () {
        // event.preventDefault();
        // $('form').fadeOut(500);
        // $('.wrapper').addClass('form-success');
        let username = $("input[name='username']").val();
        let password = $("input[name='password']").val();
        let passwordAgain = $("input[name='passwordAgain']").val();
//        let userCode = $("input[name='userCode']").val();
        let userOccupation = $("#userSet").val();
        let userPhone = $("input[name='userPhone']").val();
        let userEmail = $("input[name='userEmail']").val();
        let userCity = $("input[name='userCity']").val();
        //活取ip
        let ipCustom = returnCitySN.cip;
        //手机验证规则
        let checkPhone = /^1[3|4|5|7|8][0-9]{9}$/;
        //电话号码：区号+号码，区号以0开头，3位或4位 号码由7位或8位数字组成
        let checkTelephone = /^0\d{2,3}-?\d{7,8}$/;
        //用户名：校验用户名 只能输入5-20个以字母开头、可带数字、“_”、“.”的字串
        let checkName = /^[a-zA-Z]{1}([a-zA-Z0-9]|[._]){4,19}$/;
        //密码：只能输入6-20个字母、数字、下划线
        let checkPass = /^(\w){6,20}$/;
        //邮箱：
        let checkEmail = /^[a-zA-Z0-9_-]+@([a-zA-Z0-9]+\.)+(com|cn|net|org)$/;
        //验证是否全为中文
        let checkChinese = /^[\u4e00-\u9fa5]+$/;
        let customNameIsNo = true;
        $.post("${baseurl}/CustomLogin/queryCustomByName", {cName: username}, function (data) {
            customNameIsNo = data.result;
            if (!customNameIsNo) {
                layer.msg("用户名已经存在", {
                    time: 2000
                });
            } else if (username == "" || password == "" || passwordAgain == "" || userSet == "" || userPhone == "" || userEmail == "" || userCity == "") {
                layer.msg("信息不能为空", {
                    time: 2000
                });
            } else if (!checkName.test(username)) {
                layer.msg("用户名不合格：5-20个以字母开头的字母、数字", {
                    time: 2000
                });
            } else if (!checkPass.test(password)) {
                layer.msg("密码格式不正确：6-20个字母、数字", {
                    time: 2000
                });
            } else if (password !== passwordAgain) {
                layer.msg("两次填写的密码不相同", {
                    time: 2000
                });
            } else if (!(checkPhone.test(userPhone) || checkTelephone.test(userPhone))) {
                layer.msg("手机/电话填写有误", {
                    time: 2000
                });
            } else if (!checkEmail.test(userEmail)) {
                layer.msg("邮箱填写有误", {
                    time: 2000
                });
            } else if (!checkChinese.test(userCity)) {
                layer.msg("地址输入不正确", {
                    time: 2000
                });
            } else {
                $.post("${baseurl}/CustomLogin/customRegister",
                    {
                        cName: username,
                        cPassword: password,
                        cOccupation: userOccupation,
                        cPhone: userPhone,
                        cEmail: userEmail,
                        cCity: userCity,
                        cIp: ipCustom
                    }, function (data) {
                        if (data.result) {
                            <%--location.href("${baseurl}/WEB-INF/web/front/login.jsp");--%>
                            layer.msg("注冊成功", {
                                time: 1000
                            }, function () {
                                window.location.href = "${baseurl}/page/frontLogin";
                            });
                        }
                    })
            }
        });
    });

    <%--if (username !== null && password !== null && passwordAgain !== null && userSet !== null && userPhone !== null && userEmail !== null && userCity !== null) {--%>
    //            if (password === passwordAgain) {

    //    } else
    //    {
    //        $("#showMsg").show();
    //        $("#showMsg").val("两次密码输入不一致！！！");
    //    }
    //    } else
    //    {
    //        $("#showMsg").show();
    //        $("#showMsg").val("请填写完整信息！！！");
    //    }
    //    })
    //    ;
</script>

</body>
</html>