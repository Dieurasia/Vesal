<%--
  Created by IntelliJ IDEA.
  User: 马欢欢
  Date: 2017/12/29
  Time: 11:48
  To change this template use File | Settings | File Templates.
  商品详情页面
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../public/tag.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>维萨里产品展示网</title>
    <meta name="renderer" content="webkit">
    <link rel="shortcut icon" href="${baseurl}/public/images/favicon.ico">
    <link rel="stylesheet" href="${baseurl}/public/css/style-856946ebda.css" type="text/css">
    <link rel="stylesheet" href="${baseurl}/public/css/index-3a9148ab89.page.css">
    <link rel="stylesheet" type="text/css" href="${baseurl}/public/css/yxComponent.all.min.css">
    <link rel="stylesheet" href="${baseurl}/public/css/show_list.css">
    <link rel="stylesheet" href="${baseurl}/public/css/show_style.css" type="text/css">
    <link rel="stylesheet" type="text/css" href="${baseurl}/public/css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="${baseurl}/public/css/jquery.mmenu.all.css"/>
    <link href="${baseurl}/public/font-awesome-4.5.0/css/font-awesome.min.css" rel='stylesheet' type='text/css'
          media="all"/>
    <link rel="stylesheet" type="text/css" href="${baseurl}/public/css/animate.css"/>
    <link rel="stylesheet" type="text/css" href="${baseurl}/public/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="${baseurl}/public/css/slick.css"/>
    <link rel="stylesheet" type="text/css" href="${baseurl}/public/common/layui/css/layui.css" media="all">
    <script src="${baseurl}/public/js/jquery.min.js"></script>

</head>
<body>
<jsp:include page="../../public/header.jsp"/>
<div id="j-app">
    <div class="g-bd">
        <div class="m-crumbs ">
            <%--<span>--%>
            <%--<span class="crumb-name ">首页</span>--%>
            <%--<i class="w-icon-arrow arrow-right-hollow gap"></i>--%>
            <%--</span>--%>
            <%--<span>--%>
            <%--<a class="crumb-url " href="#">人体</a>--%>
            <%--<i class="w-icon-arrow arrow-right-hollow gap"></i>--%>
            <%--</span>--%>
            <%--<span>--%>
            <%--<a class="crumb-url " href="#">骨骼</a>--%>
            <%--<i class="w-icon-arrow arrow-right-hollow gap"></i>--%>
            <%--</span>--%>
            <%--<span>--%>
            <%--<span class="crumb-name ">头部骨骼</span>--%>
            <%--</span>--%>
        </div>
        <div class="m-detail">
            <div class="detailHd">
                <div class="m-slide">
                    <div class="view"><img
                            src="./WeiSali_files/images/LuGu.gif">
                    </div>

                </div>
                <div class="m-info" style="padding:0">
                    <div class="intro">
                        <div class="name">人体骨骼</div>
                        <div class="detailTag">
                            <a class="manufactTag" href="#">维萨里</a>
                        </div>
                        <div class="desc">维萨里产品</div>
                    </div>
                    <div class="price u-formctr">
                        <a href="javascript:;">
                            <div class="j-commentEntry comment">
                                <span class="f-fz18">33</span><br>
                                <span class="f-fz13">订阅</span>
                            </div>
                        </a>
                        <div class="field pBox f-cb">
                            <span class="label label-1">售价</span>
                            <span class="rp">
                                <span class="rmb">¥</span>
                                <span class="num">9.9</span>
                            </span>
                        </div>
                        <div class="field sale j-sale">
                            <span class="label label-2">编码</span>
                            <div class="saleLine">
                                <a class="link" href="#" target="_parent">
                                    <span>10件1元任选，全场满288元送赠品</span>
                                </a>
                                <div style="clear:both;"></div>
                            </div>
                            <div style="clear:both;"></div>
                        </div>

                        <div>
                            <div class="field pointInfo">
                                <span class="label">原价</span>
                                <span class="pointCt">
                                <s>
                                    <span>原价</span>
                                    <span>9.9</span>
                                    <span>元</span>
                                </s>
                                </span>
                            </div>
                        </div>
                        <hr>
                        <div class="field server">
                            <div class="field sale j-sale">
                                <span class="label label-2">版本</span>
                                <div class="saleLine">
                                    <a class="link" href="#" target="_parent">
                                        <div class="activityType" style="margin-top: 4px;">1.0版</div>
                                    </a>
                                    <div style="clear:both;"></div>
                                </div>
                                <div style="clear:both;"></div>
                            </div>
                            <span class="label">服务</span>
                            <div class="policyBox">
                                <div class="sItem j-policyPop ">
                                    <span>･&nbsp;</span>
                                    <span>维萨里产品</span>
                                    <span>&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                </div>
                                <div class="sItem j-policyPop ">
                                    <span>･&nbsp;</span>
                                    <span>维萨里产品</span>
                                    <span>&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                </div>
                                <div class="sItem j-policyPop ">
                                    <span>･&nbsp;</span>
                                    <span>维萨里产品</span>
                                    <span>&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                </div>
                                <br>
                                <div class="sItem j-policyPop ">
                                    <span>･&nbsp;</span>
                                    <span>维萨里产品</span>
                                    <span>&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                </div>
                                <br>
                                <div class="sItem j-policyPop ">
                                    <span>･&nbsp;</span>
                                    <span>维萨里产品</span>
                                    <span>&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                </div>
                                <div style="clear:both;"></div>
                            </div>
                        </div>

                    </div>
                    <div>
                        <div class="number u-formctr">
                            <div class="name name-1">数量</div>
                            <div class="field">
                                <div class="u-selnum ">
                                    <span class="less z-dis">
                                        <i class="hx"></i>
                                    </span>
                                    <input type="text" value="1" class="dis" disabled="">
                                    <span class="more z-dis">
                                        <i class="hx"></i>
                                        <i class="sx"></i>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="btns">
                        <a style="line-height: 36px;" class="btn w-button w-button-xl w-button-ghost" href="javascript:;">
                            <span><span>立即购买</span></span>
                        </a>
                        <a  style="line-height: 36px;"  class="btn w-button w-button-xl w-button-primary" href="javascript:;">
                            <span><i class="w-icon-cart cart-detail"></i>
                                <span>加入购物车</span>
                            </span>
                        </a>
                        <div class="w-collectZone" title="点击收藏">
                            <div class="top">
                                <span class="w-icon-normal icon-normal-collectEpt icon"></span>
                            </div>
                            <div class="bottom">
                                <p>收藏</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="m-promContainer j-promContainer"></div>
            <div class="detailBd">
                <div class="left">
                    <div class="m-detailNavTab j-detailNavTab">
                        <ul class="nav">
                            <li class="item item-active">
                                <a href="javascript:;">
                                    <span>详情</span>
                                </a>
                            </li>
                            <li class="bg"></li>
                        </ul>
                    </div>
                    <div class="m-detailHtml">
                        <ul class="m-attrList" style="visibility: visible;">
                            <li class="item j-item">
                                <span class="name">部位</span>
                                <span class="value">头部</span>
                            </li>
                            <li class="item j-item">
                                <span class="name">款式</span>
                                <span class="value">块状</span>
                            </li>
                            <li class="item j-item">
                                <span class="name">材料</span>
                                <span class="value">纳米材料</span>
                            </li>
                            <li class="item j-item">
                                <span class="name">风格</span>
                                <span class="value">人体1:1</span>
                            </li>
                            <li class="item j-item">
                                <span class="name">工艺</span>
                                <span class="value">其它</span>
                            </li>
                            <li class="item j-item">
                                <span class="name">图案</span>
                                <span class="value">纯色</span>
                            </li>
                            <li class="item j-item" style="width: 100%;">
                                <span class="name">尺寸</span>
                                <span class="value">10cm*10cm</span>
                            </li>
                            <li class="item j-item" style="width: 100%; border-bottom: none;">
                                <span class="name">重量</span>
                                <span class="value">约4.1kg</span>
                            </li>
                        </ul>
                        <div>
                            <p>
                                <span style="font-size: 20px; font-weight: bold">简介:</span><br>
                                颅骨（skull）位于脊柱上方，由23块形状和大小不同的扁骨和不规则骨组成。除下颌骨及舌骨外，其余各骨彼此借缝或软骨牢固连结，起着保护和支持脑、感觉器官以及消化器和呼吸器的起始部分的作用。以眶上缘及外耳门上缘连线为分界线，将颅分为脑颅和面颅两部分。脑颅位于颅的后上部，包括成对的顶骨和颞骨，不成对的额骨、蝶骨、枕骨和筛骨，共8块，围成颅腔，容纳脑。面颅为颅的前下部分，包含成对的上颌骨、颧骨、鼻骨、泪骨、腭骨及鼻甲骨，不成对的犁骨、下颌骨、舌骨，共15块，构成眶、鼻腔、口腔和面部的骨性支架。
                            </p>
                            <p>
                                <img data-original="#" class="img-lazyload short img-lazyloaded"
                                     src="./WeiSali_files/images/JuJueJi.gif">
                            </p>
                        </div>
                    </div>
                </div>
                <div class="right">
                    <div>
                        <div class="m-hotSell">
                            <header class="hd">最新上线</header>
                            <div class="bd">
                                <ul>
                                    <li class="item">
                                        <a href="#" target="_parent"></a>
                                    </li>
                                    <li class="item">
                                        <a href="#" target="_parent">
                                            <div class="img-wrap">
                                                <img width="250" height="250"
                                                     src="./WeiSali_files/images/DaNaoDongMai.PNG">
                                            </div>
                                            <div class="content">
                                                <div class="title">
                                                    <span class=""></span>
                                                    <span class="name">大脑动脉</span>
                                                </div>
                                                <div class="price">
                                                    <span>¥</span><span>59</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="../../public/footer.jsp"/>
<script type="text/javascript" src="${baseurl}/public/js/front_Layui.js"></script>
</body>
</html>