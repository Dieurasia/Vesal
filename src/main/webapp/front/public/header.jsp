<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../public/tag.jsp" %>

<header class="header">
    <div class="container clearfix navbar navbar-default navbar-fixed-top" style="background-color: white">
        <div class="logo">
            <a href="${baseurl}/front/home/index.jsp">
                <img src="${baseurl}/public/images/logo.png" alt=""/><span style="margin-left: 10px ;color: #096d96 "  class="h4" >维萨里产品展示网</span></a>
        </div>
        <div class="nav_right">
            <nav>
                <ul class="clearfix">
                    <li><a href="${baseurl}/front/home/index.jsp">首页</a></li>
                    <li>
                        <a >系统解刨</a>
                        <ul>
                            <li><a><b>运动系统</b></a></li>
                            <li><a href="${baseurl}/front/SystemDisplay/bone">骨学</a></li>
                            <li><a href="${baseurl}/front/SystemDisplay">关节学</a></li>
                            <li><a href="${baseurl}/front/SystemDisplay">肌学</a></li>
                            <li role="separator" class="divider"><hr></li>
                            <li><a><b>消化系统</b></a></li>
                            <li><a href="${baseurl}/front/SystemDisplay">消化管</a></li>
                            <li><a href="${baseurl}/front/SystemDisplay">消化腺</a></li>
                            <li role="separator" class="divider"><hr></li>
                            <li><a><b>呼吸系统</b></a></li>
                            <li><a href="${baseurl}/front/SystemDisplay">呼吸道</a></li>
                            <li><a href="${baseurl}/front/SystemDisplay">肺</a></li>
                            <li><a><b>泌尿系统</b></a></li>

                        </ul>
                    </li>
                    <li>
                        <a href="${baseurl}/front/public/case.jsp">局部3D</a>
                        <ul>
                            <li><a href="${baseurl}/front/public/case.jsp">头颈部</a></li>
                            <li><a href="${baseurl}/front/public/case.jsp">上肢</a></li>
                            <li><a href="${baseurl}/front/public/case.jsp">下肢</a></li>
                            <li><a href="${baseurl}/front/public/case.jsp">躯干</a></li>
                        </ul>
                    </li>
                    <li><a href="${baseurl}/front/public/case.jsp">动画</a>
                        <ul>
                            <li><a href="${baseurl}/front/public/case.jsp">运动</a></li>
                            <li><a href="${baseurl}/front/public/case.jsp">心脏</a></li>
                        </ul>
                    </li>
                    <li><a href="${baseurl}/front/public/case.jsp">手绘分享</a></li>
                    <li><a href="${baseurl}/front/public/case.jsp">软件下载</a></li>
                    <li><a href="${baseurl}/front/about/about.jsp">关于我们</a>
                    <li><a href="${baseurl}/front/public/case.jsp">用户管理 </a></li>
                </ul>
            </nav>
            <div class="cen">
                <a href="${baseurl}/front/login.jsp">登录</a>
                <a href="">注册</a>
            </div>
        </div>


        <a href="#" class="phone-nav"><i class="fa fa-list"></i></a>

    </div>
    <div style="width: 100%;height: 83px;"></div>
</header>
