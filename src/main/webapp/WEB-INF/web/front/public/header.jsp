<%@ page import="com.thoughtWorks.entity.Custom" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../public/tag.jsp" %>
<style type="text/css">
    /*#menu {*/
        /*font-size: 12px;*/
        /*font-weight: bolder;*/
    /*}*/
    /*#menu li{*/
        /*list-style-image: none;*/
        /*list-style-type: none;*/
        /*background-color: #999999;*/
        /*border-right-width: 1px;*/
        /*border-right-style: solid;*/
        /*border-right-color: #000000;*/
        /*float: left;*/
    /*}*/
    #menuli li a{
        color: black;
        text-decoration: none;
        margin: 0px;
        padding-top: 8px;
        display: block; /* 作为一个块 */
    }
    #menuli li a:hover{
        background-color: #0099CC;
        color: white;
    }
    .miniui li{
        /*display: inline;//让li横向排列*/
    }
    #menuli li  .clearA a:hover{
        background-color: white;
        color: black;
    }
</style>
<header class="header">
    <div class="container clearfix navbar navbar-default navbar-fixed-top" style="background-color: white">
        <div class="logo">
            <a href="${baseurl}/page/index">
                <img src="${baseurl}/public/images/logo.png" alt=""/>
                <span style="margin-left: 10px ;color: #096d96 " class="h4">维萨里产品展示网</span></a>
        </div>
        <div class="nav_right">
            <nav>
                <ul class="clearfix " id="menuli" >
                    <li><a href="${baseurl}/page/index">首页</a></li>
                    <li>
                        <a>系统解剖</a>
                        <ul class="miniui">
                            <li style="clear: both" class="clearA"><a><b>运动系统:</b></a></li>
                            <li><a href="${baseurl}/page/bone?model=1-1-1">骨学</a></li>
                            <li><a href="${baseurl}/page/bone?model=1-1-1">关节学</a></li>
                            <li><a href="${baseurl}/page/bone?model=1-1-1">肌学</a></li>

                            <li style="clear: both" class="clearA"><a ><b>消化系统:</b></a></li>
                            <li><a href="#">消化管</a></li>
                            <li><a href="#">消化腺</a></li>

                            <li style="clear: both" class="clearA"><a><b>呼吸系统:</b></a></li>
                            <li ><a href="#">呼吸道</a></li>
                            <li><a href="#">肺</a></li>
                            <li><a href="#">胸膜和纵膈</a></li>
                            <li style="clear: both" class="clearA"><a><b>泌尿系统:</b></a></li>
                            <li ><a href="#">肾</a></li>
                            <li><a href="#">输尿管</a></li>
                            <li><a href="#">膀胱</a></li>
                            <li><a href="#">尿道</a></li>
                            <li style="clear: both" class="clearA"><a><b>生殖系统:</b></a></li>
                            <li><a href="#">男性生殖系统</a></li>
                            <li><a href="#">女性生殖系统</a></li>
                            <li><a href="#">腹膜</a></li>
                            <li style="clear: both" class="clearA"><a><b>脉管系统(心血管系):</b></a></li>
                            <li><a href="#">心</a></li>
                            <li><a href="#">动脉</a></li>
                            <li><a href="#">静脉</a></li>
                            <li style="clear: both" class="clearA"><a><b>脉管系统(淋巴系):</b></a></li>
                            <li><a href="#">淋巴管道</a></li>
                            <li><a href="#">淋巴器官</a></li>
                            <li><a href="#">淋巴组织</a></li>
                            <li style="clear: both" class="clearA"><a><b>感觉器:</b></a></li>
                            <li><a href="#">视器</a></li>
                            <li><a href="#">前庭蜗器</a></li>
                            <li><a href="#">其他感觉器</a></li>
                            <li style="clear: both" class="clearA"><a><b>感觉器:</b></a></li>
                            <li><a href="#">视器</a></li>
                            <li><a href="#">前庭蜗器</a></li>
                            <li><a href="#">其他感觉器</a></li>
                            <li style="clear: both" class="clearA"><a><b>神经系统:</b></a></li>
                            <li><a href="#">中枢神经系统</a></li>
                            <li><a href="#">周围神经系统</a></li>
                            <li style="clear: both" class="clearA"><a><b>内分泌系统:</b></a></li>
                            <li><a href="#">内分泌腺</a></li>
                            <li><a href="#">内分泌组织</a></li>
                        </ul>
                    </li>
                    <li>
                        <a >局部3D</a>
                        <ul >
                            <li style="clear: both" class="clearA"><a><b>头部:</b></a></li>
                            <li><a href="#">颅部</a></li>
                            <li><a href="#">面部</a></li>
                            <li style="clear: both" class="clearA"><a><b>颈部:</b></a></li>
                            <li><a href="#">固有颈部</a></li>
                            <li><a href="#">项部</a></li>
                            <li style="clear: both" class="clearA"><a><b>胸部:</b></a></li>
                            <li><a href="#">胸壁</a></li>
                            <li><a href="#">胸腔</a></li>
                            <li style="clear: both" class="clearA"><a><b>腹壁:</b></a></li>
                            <li><a href="#">腹腔</a></li>
                            <li><a href="#">腹腔内容物</a></li>
                            <li style="clear: both" class="clearA"><a><b>盆部与会阴:</b></a></li>
                            <li><a href="#">盆部</a></li>
                            <li><a href="#">会阴</a></li>
                            <li style="clear: both" class="clearA"><a><b>脊柱区:</b></a></li>
                            <li><a href="#">项区</a></li>
                            <li><a href="#">胸背区</a></li>
                            <li><a href="#">腰区</a></li>
                            <li><a href="#">骶尾区</a></li>
                            <li style="clear: both" class="clearA"><a><b>上肢:</b></a></li>
                            <li><a href="#">肩部</a></li>
                            <li><a href="#">臂部</a></li>
                            <li><a href="#">肘部</a></li>
                            <li><a href="#">前臂部</a></li>
                            <li><a href="#">腕和手</a></li>
                            <li style="clear: both" class="clearA"><a><b>下肢:</b></a></li>
                            <li><a href="#">臀部</a></li>
                            <li><a href="#">股部</a></li>
                            <li><a href="#">膝部</a></li>
                            <li><a href="#">小腿部</a></li>
                            <li><a href="#">足与踝部</a></li>
                        </ul>
                    </li>
                    <li><a href="#">手绘分享</a></li>
                    <li><a href="#">软件下载</a></li>
                    <li><a href="#">关于我们</a>
                    <li><a style="cursor:hand" onclick="session()">用户中心 </a></li>
                </ul>
            </nav>
            <%
                Custom custom = (Custom) session.getAttribute("custom");
                if (custom == null) { %>
            <div class="cen">
                <a href="${baseurl}/page/frontLogin">
                    <span class="glyphicon glyphicon-user"></span>
                    <span class="h5" style="margin-right: 20px">登录</span>
                </a>
                <a href="${baseurl}/page/register">
                    <span class="glyphicon glyphicon-log-in "></span>
                    <span class="h5" style="margin-right: 20px">注册</span>
                </a>
            </div>
            <%} else {%>
            <div class="cen">
                <a href="${baseurl}/page/personal">
                    <span class="glyphicon glyphicon-user"></span>
                    <span class="h5">您好:</span>
                    <span class="h5" style="margin-right: 20px;"><%=custom.getcName()%></span>
                </a>
                <a style="cursor: pointer" onclick="loginOut()">
                    <span class="glyphicon glyphicon-off"></span>
                    <span class="h5">注销</span>
                </a>
            </div>
            <%}%>
        </div>
        <a href="#" class="phone-nav"><i class="fa fa-list"></i></a>
    </div>
    <div style="width: 100%;height: 83px;"></div>
    <script>
        function loginOut() {
            $.post("${baseurl}/CustomLogin/loginOut", function (data) {
                location.reload();
            });
        }

        function session() {
            $.post("${baseurl}/CustomLogin/session", function (data) {
                if (data.haveSession) {
                    location.href = "${baseurl}/page/personal";
                } else {
                    location.href = "${baseurl}/page/frontLogin";
                }
            });
        }
    </script>
</header>
