<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../public/tag.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>维萨里3D医学模型库</title>
    <link rel="shortcut icon" href="${baseurl}/public/images/favicon.ico">
    <link rel="stylesheet" type="text/css" href="${baseurl}/public/css/dingtalk.css">
    <link rel="stylesheet" type="text/css" href="${baseurl}/public/css/download.css">
    <link rel="stylesheet" type="text/css" href="${baseurl}/public/css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="${baseurl}/public/css/animate.css"/>
    <link rel="stylesheet" type="text/css" href="${baseurl}/public/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="${baseurl}/public/css/slick.css"/>
    <script src="${baseurl}/public/js/jquery.min.js"></script>
</head>
<style>
    .imgDownload {
        width: 60px;
        height: 60px;
    }

    .imgDownload1 {
        width: 100px;
        height: 100px;
    }

    .edition {
        font-size: 12px;

    }

    .edition_p {
        margin-bottom: 2px;
        margin-top: 5px;
    }

    .item {
        margin-left: 9px;
    }
</style>
<body>
<jsp:include page="../public/header.jsp"/>
<div class="download-content" data-spm-anchor-id="a3140.8196062.0.i0.62787f7eLwZlq8">
    <div class="download_card">

        <div class="content">
            <div class="title"><i class="web-font">立即下载</i></div>
            <div class="desc">众多软件下载</div>
            <div class="list">
                <a href="http://www.vesal.cn/uploadsoft/20171113172314com.vesal.classTest.apk">
                    <div class="item" onmouseover="show1()" onmouseout="hide1()">
                    <span id="show1">
                        <img class="imgDownload" src="${baseurl}/public/images/download/安卓.png">
                        <p class="edition_p">维萨里3D解剖课程练习</p>
                        <span class="edition">版本号：1.0.1</br>操作系统:Android2.3.1以上</span>
                    </span>
                        <div id="modal1" style="display: none">
                            <div class="qr_code">
                                <img class="imgDownload1" src="${baseurl}/public/images/download/维萨里3D解剖课程练习.png">
                            </div>
                            <p class="edition_p">扫描二维码下载</p>
                        </div>
                    </div>
                </a>
                <a href="http://www.vesal.cn/uploadsoft/20171010213005VesalSign.apk">
                    <div class="item" onmouseover="show2()" onmouseout="hide2()">
                    <span id="show2">
                        <img class="imgDownload" src="${baseurl}/public/images/download/安卓.png">
                        <p class="edition_p">维萨里签到</p>
                        <span class="edition">版本号：1.0.1</br>操作系统:Android2.3.1以上</span>
                    </span>
                        <div id="modal2" style="display: none">
                            <div class="qr_code">
                                <img class="imgDownload1" src="${baseurl}/public/images/download/维萨里签到.png">
                            </div>
                            <p class="edition_p">扫描二维码下载</p>
                        </div>
                    </div>
                </a>
                <a href="http://www.vesal.cn/uploadsoft/20171212184043Vesal_1.4.7.apk">
                    <div class="item" onmouseover="show3()" onmouseout="hide3()">
                    <span id="show3">
                        <img class="imgDownload" src="${baseurl}/public/images/download/安卓.png">
                        <p class="edition_p">维萨里3D解剖教学</p>
                        <span class="edition">版本号：1.4.7</br>操作系统:Android系统</span>
                    </span>
                        <div id="modal3" style="display: none">
                            <div class="qr_code">
                                <img class="imgDownload1" src="${baseurl}/public/images/download/维萨里3D解剖教学.png">
                            </div>
                            <p class="edition_p">扫描二维码下载</p>
                        </div>
                    </div>
                </a>
                <a href="http://www.vesal.cn/uploadsoft/20170728114953维萨里3D解剖.apk">
                    <div class="item">
                        <img class="imgDownload" src="${baseurl}/public/images/download/win.png">
                        <p class="edition_p">维萨里3D解剖_局部解剖_头部</p>
                        <span class="edition">版本号：1.1.0.170726</span>
                    </div>
                </a>
                <a href="#">
                    <div class="item">
                        <img class="imgDownload" src="${baseurl}/public/images/download/苹果.png">
                        <p class="edition_p">iPhone</p>
                        <span class="edition">版本号：0.0<br/> 操作系统：iPhone</span>
                    </div>
                </a>
            </div>

            <div class="title" style="margin-top: 45px;"><i class="web-font">更多下载</i></div>
            <div class="download-dev">
                <a class="download-dev-item download-dev-mac" href="#">
                    <div class="download-dev-icon">
                        <img class="imgDownload" src="${baseurl}/public/images/download/ppt.png">
                    </div>
                    <p class="download-dev-text">
                        <br>
                        <span class="download-dev-text-sp">维萨里解剖3D</span>
                        <span class="download-dev-text-sp">PPT插件</span>
                    </p>
                    <div class="download-dev-icon icon1" style="margin-left:30px;"></div>
                </a>
            </div>
        </div>
    </div>
</div>
<jsp:include page="../public/footer.jsp"/>
</body>
<script type="text/javascript">
    function show1() {
        $("#show1").hide();
        $("#modal1").show();
    }

    function hide1() {
        $("#show1").show();
        $("#modal1").hide();
    }

    function show2() {
        $("#show2").hide();
        $("#modal2").show();
    }

    function hide2() {
        $("#show2").show();
        $("#modal2").hide();
    }

    function show3() {
        $("#show3").hide();
        $("#modal3").show();
    }

    function hide3() {
        $("#show3").show();
        $("#modal3").hide();
    }
</script>
</html>