<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="../../../public/tag.jsp" %>
<html lang="en">
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
    <script src="${baseurl}/public/js/vue.min.js"></script>

    <script src="${baseurl}/public/js/uploadFile/jquery.knob.js"></script>

    <!-- jQuery File Upload Dependencies -->
    <script src="${baseurl}/public/js/uploadFile/jquery.ui.widget.js"></script>
    <script src="${baseurl}/public/js/uploadFile/jquery.iframe-transport.js"></script>
    <script src="${baseurl}/public/js/uploadFile/jquery.fileupload.js"></script>
    <!-- Our main JS file -->
    <script src="${baseurl}/public/js/uploadFile/script.js"></script>
    <!-- Only used for the demos. Please ignore and remove. -->
    <script src="http://cdn.tutorialzine.com/misc/enhance/v1.js" async></script>

    <!-- Google web fonts -->
    <link href="http://fonts.googleapis.com/css?family=PT+Sans+Narrow:400,700" rel='stylesheet' />

    <!-- The main CSS file -->
    <link href="${baseurl}/public/css/uploadFile/style.css" rel="stylesheet" />
</head>
<body>

<h1>目前只支持zip格式</h1>
<form id="upload" method="post" action="${baseurl}/upload/spring" enctype="multipart/form-data">
    <div id="drop">
        将文件拖进此处

        <a>选择上传文件</a>
        <input type="file" name="upload_file" multiple id="upload_file" />
    </div>

    <ul>
        <!-- The file uploads will be shown here -->

    </ul>
</form>
</body>
</html>
