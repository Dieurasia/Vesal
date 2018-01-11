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
    <title>维萨里3D医学模型库</title>
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
                    <div class="view" id="modelImg">
                        <%--<img src="./WeiSali_files/images/LuGu.gif">--%>
                        <img src="" alt=""
                             onmouseover="this.src=''"
                             onmouseout="this.src=''">
                    </div>

                </div>
                <div class="m-info" style="padding:0">
                    <div class="intro">
                        <div class="name" id="modelName"></div>
                        <div class="detailTag">
                            <a class="manufactTag" href="#">维萨里</a>
                        </div>
                        <div class="desc">维萨里产品</div>
                    </div>
                    <div class="price u-formctr">
                        <a href="javascript:;">
                            <div class="j-commentEntry comment">
                                <span class="f-fz18" id="modelCount"></span><br>
                                <span class="f-fz13">订阅</span>
                            </div>
                        </a>
                        <div class="field pBox f-cb">
                            <span class="label label-1">售价</span>
                            <span class="rp">
                                <span class="rmb">¥</span>
                                <span class="num" id="modelPrice"></span>
                            </span>
                        </div>
                        <div>
                            <div class="field pointInfo">
                                <span class="label">原价</span>
                                <span class="pointCt">
                                <s>
                                    <span>原价</span>
                                    <span id="modelPrice1"></span>
                                    <span>元</span>
                                </s>
                                </span>
                            </div>
                        </div>
                        <div class="field sale j-sale">
                            <span class="label label-2">编码</span>
                            <div class="saleLine">
                                <a class="link" href="#" target="_parent">
                                    <span id="modelCode"></span>
                                </a>
                                <div style="clear:both;"></div>
                            </div>
                            <div style="clear:both;"></div>
                        </div>

                        <hr>
                        <div class="field server">
                            <div class="field sale j-sale">
                                <span class="label label-2">版本</span>
                                <div class="saleLine">
                                    <a class="link" href="#" target="_parent">
                                        <div class="activityType" style="margin-top: 4px;">
                                            <span id="modelVersion"></span>.0版
                                        </div>
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
                        <a style="line-height: 36px;" class="btn w-button w-button-xl w-button-ghost"
                           href="javascript:;">
                            <span><span>立即购买</span></span>
                        </a>
                        <span id="car-shopping">

                        </span>
                    </div>
                </div>
            </div>
            <div class="m-promContainer j-promContainer"></div>
            <div class="detailBd">
                <div class="container">
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
                        <div>
                            <p>
                                <span style="font-size: 20px; font-weight: bold">简介:</span><br>
                                <span id="modelIntroduce"></span>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="../../public/footer.jsp"/>
<script type="text/javascript" src="${baseurl}/public/js/front_Layui.js"></script>
<script type="text/javascript">
    $(function () {
        let m_id = ("${param.id}".split(".jsp")[0]);
        $.post("${baseurl}/systemDisplay/queryModelById", {modelId: m_id}, function (data) {
            let modelInfo = data.modelInfo[0];
            let m_dynamic = "${baseurl}/file/" + modelInfo.m_dynamic;
            let m_thumbnail = "${baseurl}/file/" + modelInfo.m_thumbnail;
            $("#modelImg").html(`<img src="` + m_thumbnail + `" alt="` + modelInfo.m_name + `" class="img"
                                        onmouseover= "this.src='` + m_dynamic + `'" onmouseout="this.src='` + m_thumbnail + `'" >`);
            $("#modelName").html(modelInfo.m_name)
            $("#modelPrice").html(modelInfo.m_price)
            $("#modelPrice1").html(modelInfo.m_price)
            $("#modelCode").html(modelInfo.m_code)
            $("#modelIntroduce").html(modelInfo.m_introduce)
            $("#modelVersion").html(modelInfo.m_version)
            $("#modelCount").html(modelInfo.count);
            $("#car-shopping").html(`<span style="line-height: 36px;" class="btn w-button w-button-xl w-button-primary"
                                   onclick="shopping(`+modelInfo.m_id+`)">
                                <i class="w-icon-cart cart-detail"></i>
                                <span>加入购物车</span>
                             </span>`);

        });
    });
    function shopping(m_id) {
        //判断是否有session
        $.post("${baseurl}/CustomLogin/session", function (data) {
            if (data.haveSession) {
                let custom_id = data.user.cId;
                let model_id = m_id;
                $.post("${baseurl}/order/addOrder",{customId:custom_id,modelId:model_id},
                    function (data) {
                        layer.msg(data.msg, {
                            time: 2000
                        });
                });
            } else {
                location.href = "${baseurl}/page/frontLogin";
            }
        });
    }
</script>
this.src=''
</body>
</html>