<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="../../../public/tag.jsp" %>
<html>
<head>
    <title>ModuleOne</title>
    <script type="text/javascript" src="${baseurl}/public/common/js/jquery-3.2.0.min.js"></script>
    <script src="${baseurl}/public/common/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${baseurl}/public/fileOperator/upload/ajax.js"></script>
    <script type="text/javascript" src="${baseurl}/public/fileOperator/ajaxfileupload.js"></script>
    <script type="text/javascript" src="${baseurl}/public/fileOperator/download/zip.js"></script>
    <link rel="stylesheet" href="${baseurl}/public/common/layui/css/layui.css" media="all">
    <link rel="stylesheet" type="text/css" href="${baseurl}/public/common/layui/css/layui.css" media="all">
    <link rel="stylesheet" type="text/css" href="${baseurl}/public/common/bootstrap/css/bootstrap.min.css" media="all">
    <link rel="stylesheet" type="text/css" href="${baseurl}/public/common/css/global.css" media="all">
    <link rel="stylesheet" type="text/css" href="${baseurl}/public/css/common.css" media="all">
    <link rel="stylesheet" type="text/css" href="${baseurl}/public/css/personal.css" media="all">
</head>
<body>
<section class="larry-grid">
    <div class="larry-personal">
        <div class="layui-tab">
            <blockquote class="layui-elem-quote mylog-info-tit">
                <div class="layui-inline">
                    <div class="layui-input-inline">
                        <input type="text" name="title" lay-verify="title" autocomplete="off"
                               placeholder="姓名" class="layui-input">
                    </div>
                    <button class="layui-btn"><i class="layui-icon">&#xe615;</i>搜索</button>
                    <shiro:hasPermission name="moduleOne:add">
                        <ul class="layui-tab-title">
                            <li class="layui-btn " onclick="teacher.add()"><i class="layui-icon">&#xe61f;</i>添加教师
                            </li>
                        </ul>
                    </shiro:hasPermission>
                    <div class="container" style="float: right;">
                        <div class="row">
                            <form role="form" action="${baseurl}/upload/spring" method="post"
                                  enctype="multipart/form-data">
                                <div class="form-group">
                                    <label for="uploadfile">文件</label> <input type="file" id="uploadfile"
                                                                              name="uploadfile">
                                    <p class="help-block">目前没有对文件类型进行限制</p>
                                </div>
                                <button type="submit" class="btn btn-default">上传</button>
                            </form>
                            ${msg }
                        </div>
                    </div>
                </div>
            </blockquote>

            <blockquote>
                <div class="container">
                    <div class="row">
                        <div class="table-responsive col-sm-10">
                            <table class="table">
                                <thead>
                                <tr>
                                    <th>序列</th>
                                    <th>文件名</th>
                                    <th>下载</th>
                                </tr>
                                </thead>
                                <tbody id="showInfo">
                                <c:forEach var="file" items="${files }" varStatus="cur">
                                    <tr>
                                        <td>${cur.index+1 }</td>
                                        <td><a href="javascript:void(0);" class="downloadfile"
                                               data-file-path="${file.absolutePath }"><strong>${file.name }</strong></a></td>
                                        <td><a href="javascript:void(0);" class="downloadzipfile"
                                               data-file-path="${file.absolutePath }"><strong>zip</strong></a></td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <form id="downloadfile" name="downloadfile" class="hide" method="post"
                          action="${baseurl }/download/file"
                          target="downloadFrom">
                        <input type="hidden" id="filepath" name="filepath" value=""/>
                    </form>
                    <form id="downloadzip" name="downloadzip" class="hide" method="post"
                          action="${baseurl }/download/zip"
                          target="downloadFrom">
                        <input type="hidden" id="zippath" name="zippath" value=""/>
                    </form>
                    <iframe name="downloadFrom" style="display: none;"></iframe>
                </div>
            </blockquote>
            <div class="larry-separate"></div>
            <div class="layui-tab-content larry-personal-body clearfix mylog-info-box">
                <a class="layui-btn"><i class="layui-icon">&#xe621;</i>打印</a>
                <a class="layui-btn"><i class="layui-icon">&#xe61e;</i>导出</a>
                <div class="layui-form">
                    <table class="layui-table">
                        <colgroup>
                            <col width="50">
                            <col width="200">
                            <col width="200">
                            <col width="150">
                            <col width="200">
                            <col width="280">
                        </colgroup>

                        <thead>
                        <tr>
                            <th><input type="checkbox" name="" lay-skin="primary" lay-filter="allChoose"></th>
                            <th>工号</th>
                            <th>姓名</th>
                            <th>性别</th>
                            <th>方向</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td><input type="checkbox" name="" lay-skin="primary"></td>
                            <td>1453265278</td>
                            <td>张老师</td>
                            <td>女</td>
                            <td>金融服务</td>
                            <td>
                                <shiro:hasPermission name="moduleOne:update">
                                    <a class="layui-btn  layui-btn-small layui-btn-normal"
                                       onclick="updataStudentinfo()"><i
                                            class="layui-icon">&#xe642;</i> 编辑</a>
                                </shiro:hasPermission>
                                <a class="layui-btn  layui-btn-small" onclick="studentInfoPreview()"><i
                                        class="layui-icon">&#xe60a;</i>预览</a>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div id="demo7"></div>
            </div>
            <div id="demo1"></div>
        </div>
    </div>
</section>

<div id="updatainfo" style="display: none;width: auto;">
    <div>
        <form class="layui-form" action="">
            <div class="layui-form-item">
                <label class="layui-form-label">工号</label>
                <div class="layui-input-inline">
                    <input name="password" required lay-verify="required" placeholder="学号" autocomplete="off"
                           class="layui-input">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">方向</label>
                <div class="layui-input-inline">
                    <select name="modules" lay-verify="required" lay-search="">
                        <option value="">方向</option>
                        <option value="1">金融方向</option>
                        <option value="1">电子信息技术</option>
                        <option value="2">软件服务</option>
                        <option value="3">酒店管理</option>
                    </select>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">姓名</label>
                <div class="layui-input-inline">
                    <input name="password" required lay-verify="required" placeholder="姓名" autocomplete="off"
                           class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">性别</label>
                <div class="layui-input-inline">
                    <input name="date" lay-verify="required" placeholder="性别" autocomplete="off"
                           class="layui-input" type="text">
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block " style="margin-left: 24%">
                    <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </form>
    </div>
</div>
<div id="InfoPreview" style="display: none;width: auto;">
    <div>
        <form class="layui-form" action="">
            <div class="layui-form-item">
                <label class="layui-form-label">工号</label>
                <div class="layui-input-inline">
                    <input name="password" required lay-verify="required" placeholder="学号" autocomplete="off"
                           class="layui-input">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">方向</label>
                <div class="layui-input-inline">
                    <select name="modules" lay-verify="required" lay-search="">
                        <option value="">方向</option>
                        <option value="1">金融方向</option>
                        <option value="1">电子信息技术</option>
                        <option value="2">软件服务</option>
                        <option value="3">酒店管理</option>
                    </select>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">姓名</label>
                <div class="layui-input-inline">
                    <input name="password" required lay-verify="required" placeholder="姓名" autocomplete="off"
                           class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">性别</label>
                <div class="layui-input-inline">
                    <input name="date" lay-verify="required" placeholder="性别" autocomplete="off"
                           class="layui-input" type="text">
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block " style="margin-left: 24%">
                    <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </form>
    </div>
</div>

<script>
    layui.use('form', function () {
        var $ = layui.jquery, form = layui.form();

        //全选
        form.on('checkbox(allChoose)', function (data) {
            var child = $(data.elem).parents('table').find('tbody input[type="checkbox"]');
            child.each(function (index, item) {
                item.checked = data.elem.checked;
            });
            form.render('checkbox');
        });

    });

    //分页
    layui.use(['laypage', 'layer'], function () {
        var laypage = layui.laypage
            , layer = layui.layer;

        laypage({
            cont: 'demo1'
            , pages: 100 //总页数
            , groups: 5 //连续显示分页数
        });
    });
</script>

<script>
    //修改老师信息
    function updataStudentinfo() {
        layer.open({
            type: 1,
            title: '修改老师信息',
            area: ['420px', '370px'],
            skin: 'yourclass',
            content: $('#updatainfo')
        });
    }

    function studentInfoPreview() {
        layer.open({
            type: 1,
            title: '预览老师信息',
            area: ['420px', '370px'],
            skin: 'yourclass',
            content: $('#InfoPreview')
        });
    }
</script>

<script>
    layui.use('layer', function () { //独立版的layer无需执行这一句
        var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句

        //触发事件
        var active = {

            notice: function () {
                //示范一个公告层
                layer.open({
                    type: 1
                    ,
                    title: false //不显示标题栏
                    ,
                    closeBtn: false
                    ,
                    area: '300px;'
                    ,
                    shade: 0.8
                    ,
                    id: 'LAY_layuipro' //设定一个id，防止重复弹出
                    ,
                    btn: ['火速围观', '残忍拒绝']
                    ,
                    moveType: 1 //拖拽模式，0或者1
                    ,
                    content: '<div style="padding: 50px; line-height: 22px; background-color: #393D49; color: #fff; font-weight: 300;">你知道吗？亲！<br>layer ≠ layui<br><br>layer只是作为Layui的一个弹层模块，由于其用户基数较大，所以常常会有人以为layui是layerui<br><br>layer虽然已被 Layui 收编为内置的弹层模块，但仍然会作为一个独立组件全力维护、升级。<br><br>我们此后的征途是星辰大海 ^_^</div>'
                    ,
                    success: function (layero) {
                        var btn = layero.find('.layui-layer-btn');
                        btn.css('text-align', 'center');
                        btn.find('.layui-layer-btn0').attr({
                            href: 'http://www.layui.com/'
                            , target: '_blank'
                        });
                    }
                });
            }
            , offset: function (othis) {
                var type = othis.data('type')
                    , text = othis.text();

                layer.open({
                    type: 1
                    , offset: type //具体配置参考：http://www.layui.com/doc/modules/layer.html#offset
                    , id: 'LAY_demo' + type //防止重复弹出
                    , content: '<div style="padding: 20px 100px;">' + text + '</div>'
                    , btn: '关闭全部'
                    , btnAlign: 'c' //按钮居中
                    , shade: 0 //不显示遮罩
                    , yes: function () {
                        layer.closeAll();
                    }
                });
            }
        };

        $('.site-demo-button .layui-btn').on('click', function () {
            var othis = $(this), method = othis.data('method');
            active[method] ? active[method].call(this, othis) : '';
        });

    });
</script>

<script>
    let fileOperation;
    layui.use(['jquery', 'layer', 'element', 'laypage', 'form', 'laytpl', 'tree'], function () {
        window.jQuery = window.$ = layui.jquery;
        window.layer = layui.layer;
        var element = layui.element(),
            form = layui.form(),
            laytpl = layui.laytpl;

        <%--fileOperation = {--%>
        <%--loadFile: function () {--%>
        <%--$.post("${baseurl}/download/zip");--%>
        <%--}--%>
        <%--}--%>
    });

    $(function () {
        $.get("${baseurl}/download/zip");
    /*, function (data) {
            if (data.result) {
                let datainfo = data.data;
                console.log(datainfo);
                $("#showInfo").html("");
                for (let i = 0; i < datainfo.length; i++) {
                    $("#showInfo").append(`<tr>
                                    <td></td>
                                    <td><a href="javascript:void(0);" class="downloadfile"
                                           data-file-path="` + datainfo[i] + `"><strong>` + datainfo[i].replace(/^.+?\\([^\\]+?)(\.[^\.\\]*?)?$/gi, "$1") + `</strong></a>
                                    </td>
                                    <td><a href="javascript:void(0);" class="downloadzipfile"
                                           data-file-path="` + datainfo[i] + `"><strong>zip</strong></a></td>
                                </tr>`);
                }
            }
        }*/
    })
</script>
</body>
</html>
