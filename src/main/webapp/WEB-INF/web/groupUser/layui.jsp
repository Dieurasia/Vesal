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

<script id="list-tpl" type="text/html">
    {{# layui.each(d, function(index, item){ }}
    <tr>
        <td>{{ index+1}}</td>
        <td>{{ item.c_name}}</td>
        <td>123456</td>
        <td>{{ item.c_phone}}</td>
        <td>{{ item.c_email}}</td>
        <td>{{ item.parentAccount}}</td>
        {{ } }}
        <td>
            <%--<button class="layui-btn layui-btn-mini " style="background: #21a1a1"--%>
                    <%--onclick="teacher.update('{{item.id}}')">--%>
                <%--<i class="layui-icon">&#xe642;</i>修改--%>
            <%--</button>--%>
            <button class="layui-btn layui-btn-mini  layui-btn-danger" onclick="groupUser.deleteAccount('{{item.c_id}}')">
                <i class="layui-icon">&#xe60a;</i>删除
            </button>
        </td>
    </tr>
    {{# }); }}

</script>
<div id="randomGenerateAccountPassword" style="display: none">
    <form id="menu-add" lay-filter="menu-add" class="layui-form layui-form-pane" method="post">
        <div class="layui-form-item" style="margin: auto">
            <label class="layui-form-label" style="width: auto">集团用户名称</label>
            <div class="layui-input-inline">
                <input type="text" name="groupUsersName" required
                       placeholder="" autocomplete="off" class="layui-input ">
            </div>
        </div>
        <div class="layui-form-item" style="margin: auto">
            <label class="layui-form-label" style="width: auto">集团用户电话</label>
            <div class="layui-input-inline">
                <input type="tel" name="accountPhone" required
                       placeholder="" autocomplete="off" class="layui-input ">
            </div>
        </div>
        <div class="layui-form-item" style="margin: auto">
            <label class="layui-form-label" style="width: auto">集团用户邮箱</label>
            <div class="layui-input-inline">
                <input type="email" name="accountEmail" required
                       placeholder="" autocomplete="off" class="layui-input ">
            </div>
        </div>
        <div class="layui-form-item" style="margin: auto">
            <label class="layui-form-label" style="width: auto">集团用户前缀</label>
            <div class="layui-input-inline">
                <input type="text" name="usernamePrefix" required
                       placeholder="" autocomplete="off" class="layui-input " onKeyUp="value=value.replace(/[^a-zA-Z]/g,'')">
            </div>
        </div>
        <div class="layui-form-item" style="margin: auto">
            <label class="layui-form-label" style="width: auto">集团用户数量</label>
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
