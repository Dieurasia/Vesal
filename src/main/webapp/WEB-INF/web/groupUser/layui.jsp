<%--
  Created by IntelliJ IDEA.
  User: mlw
  Date: 18-1-3
  Time: 下午3:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<div id="randomGenerateAccountPassword" style="display: none">
    <form id="menu-add" lay-filter="menu-add" class="layui-form layui-form-pane" method="post">
        <div class="layui-form-item" style="margin: auto">
            <label class="layui-form-label" style="width: auto">给定用户名称的前缀</label>
            <div class="layui-input-inline">
                <input type="text" name="usernamePrefix" required
                       placeholder="" autocomplete="off" class="layui-input ">
            </div>
        </div>
        <div class="layui-form-item" style="margin: auto">
            <label class="layui-form-label" style="width: auto">随机生成的用户位数</label>
            <div class="layui-input-inline">
                <input type="number" name="userNumber" required
                       placeholder="" autocomplete="off" class="layui-input ">
            </div>
        </div>
        <br>
        <div class="layui-form-item" id="showMsg" style="margin: auto;display: none">
                <input type="text" id="msgInfo" required style="color: red"
                       placeholder="" autocomplete="off" class="layui-input ">
        </div>
        <br>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <a class="layui-btn" onclick="groupUser.addAccount()">添加</a>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>
</div>
</body>
</html>
