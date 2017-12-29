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
                    <div class="container">
                        <div class="row">
                            <form role="form" action="${baseurl}/upload/spring" method="post"
                                  enctype="multipart/form-data">
                                <div class="form-group">
                                    <label for="uploadfile">文件</label> <input type="file" id="uploadfile"
                                                                              name="uploadfile">
                                    <p class="help-block">目前只支持zip文件的上传格式</p>
                                </div>
                                <button type="submit" class="btn btn-default">上传</button>
                            </form>
                            ${msg }
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

            <div id="demo1"></div>
        </div>
    </div>
</section>

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
