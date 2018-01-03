<%--
  Created by IntelliJ IDEA.
  User: mlw
  Date: 18-1-3
  Time: 上午11:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="../../public/tag.jsp" %>
<html>
<head>
    <title></title>
    <link rel="stylesheet" type="text/css" href="${baseurl}/public/common/layui/css/layui.css" media="all">
    <link rel="stylesheet" type="text/css" href="${baseurl}/public/css/personal.css" media="all">
</head>
<body>

<section class="larry-grid">
    <div class="larry-personal">
        <div class="layui-tab">
            <blockquote class="layui-elem-quote mylog-info-tit">
                <ul class="layui-tab-title">
                    <li class="layui-btn " onclick="groupUser.randomGenerateAccountPassword()"><i class="layui-icon">&#xe61f;</i>随机生成账户密码
                    </li>
                </ul>
            </blockquote>
            <div class="larry-separate"></div>

            <div class="layui-tab-content larry-personal-body clearfix mylog-info-box">
                <div class="layui-form ">
                    <table id="example" class="layui-table lay-even " data-name="articleCatData">
                        <thead>
                        <tr>
                            <th>id</th>
                            <th>菜单名称</th>
                            <th>url</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody id="list">
                        </tbody>
                    </table>

                </div>
                <div id="demo1"></div>
            </div>
        </div>
    </div>
</section>
<jsp:include page="layui.jsp"></jsp:include>
<script type="text/javascript" src="${baseurl}/public/common/layui/layui.js"></script>
<script type="text/javascript">
    let groupUser, currentMenuId;
    layui.use(['jquery', 'layer', 'element', 'laypage', 'form', 'laytpl'], function () {
        window.jQuery = window.$ = layui.jquery;
        window.layer = layui.layer;
        let element = layui.element(),
            form = layui.form(),
            laytpl = layui.laytpl;

        groupUser = {
            randomGenerateAccountPassword: function () {
                layer.open({
                    type: 1,
                    title: '随机生成用户',
                    area: ["25%", "39%"],
                    content: $("#randomGenerateAccountPassword")
                })
            },
            addAccount: function () {
                let userNumber = $("input[name='userNumber']").val();
                let usernamePrefix = $("input[name='usernamePrefix']").val();

                if (userNumber !== "" && userNumber !== null && usernamePrefix !== "" && usernamePrefix !== null){
                    $.post(baseUrl + "back/groupUsers/addAccount", {
                        userNumber: userNumber,
                        usernamePrefix: usernamePrefix
                    }, function (data) {
                        alert(123);
                    })
                }else {
                    $("#msgInfo").val("请将信息填写完整");
                    $("#showMsg").show();
                }
            }
        }
    });

</script>
</body>
</html>
