<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../public/tag.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>个人主页</title>
    <meta name="description">
    <meta name="keyword" content="个人中心">
    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="address=no">
    <meta name="lx:category" content="group">
    <meta name="lx:cid" content="c_cejtmtex">
    <meta name="lx:appnm" content="mtpc">
    <meta name="lx:autopv" content="off">
    <link rel="stylesheet" type="text/css" href="${baseurl}/public/css/main_personal.css.css">
    <link rel="stylesheet" type="text/css" href="${baseurl}/public/css/userexinfo.css">
    <link rel="shortcut icon" href="${baseurl}/public/images/favicon.ico">


    <!-- include main css -->
    <link rel="stylesheet" type="text/css" href="${baseurl}/public/css/slick.css"/>
    <link rel="stylesheet" type="text/css" href="${baseurl}/public/css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="${baseurl}/public/css/jquery.mmenu.all.css"/>
    <link rel="stylesheet" type="text/css" href="${baseurl}/public/css/style.css"/>
    <link href="${baseurl}/public/font-awesome-4.5.0/css/font-awesome.min.css" rel='stylesheet' type='text/css'
          media="all"/>
    <link rel="stylesheet" type="text/css" href="${baseurl}/public/css/animate.css"/>
    <script src="${baseurl}/public/js/jquery.min.js"></script>
</head>
<body>
<!--header-->
<jsp:include page="../../public/header.jsp"/>
<div class="page index" data-reactroot="">
    <div class="userexinfo-container">
        <div class="clearfix">
            <div style="float:left ;width: 15%">
                <div class="orders-link-box">
                    <div class="link-group">
                        <p class="title">
                            <a href="${baseurl}/page/personal">我的主页</a>
                        </p>
                        <p class="title"><a href="#">我的订单</a></p>
                        <ul class="link-ul">
                            <li><a href="#">全部订单</a><i
                                    class="icon-right"></i></li>
                            <li><a href="#">待付款</a><i
                                    class="icon-right"></i></li>
                            <li><a href="#">退款/售后</a><i
                                    class="icon-right"></i></li>
                        </ul>
                    </div>

                    <div class="link-group"><p class="title"><a
                            href="#">个人信息</a>
                    </p>
                        <p class="title">
                            <a href="${baseurl}/page/subscriptions">我的订阅</a>
                        </p>
                        <ul class="link-ul">
                            <li><a href="#">账户设置</a><span
                                    class="num"></span><i class="icon-right"></i></li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="userinfo-box" style="float:right ;width: 84%">
                <h1 style="text-align: center">个人订阅</h1>
                <div class="case_nei">
                    <ul class="clearfix" id="model">
                        <li>
                            <div class="pic">
                                <a href="#">
                                    <img src="${baseurl}/public/organ/鼻骨.png" alt=""/>
                                    <i></i>
                                </a>
                            </div>
                            <div class="txt">
                                <img src="${baseurl}/public/gif/BiGu.gif">
                            </div>
                            <div class="product_name">
                                <span class="h4">鼻骨</span><br><span class="h5"></span><span class="h5">订阅量：333</span>
                            </div>
                            <div class="btn-group btn-group-justified" role="group" aria-label="...">
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-default">价格:20元</button>
                                </div>
                                <div class="subscribe btn-group" role="group">
                                    <span style="display: none">1</span>
                                    <input type="button" class="btn btn-default" value="订阅">
                                </div>
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-danger">购买</button>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="pic">
                                <a href="#">
                                    <img src="${baseurl}/public/organ/大腿后肌群.png" alt=""/>
                                    <i></i>
                                </a>
                            </div>
                            <div class="txt">
                                <img src="${baseurl}/public/gif/DaTuiHouJiQun.gif">
                            </div>
                            <div class="product_name">
                                <span class="h4">大腿后肌群</span><br><span class="h5"></span><span class="h5">订阅量：333</span>
                            </div>
                            <div class="btn-group btn-group-justified" role="group" aria-label="...">
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-default">价格:20元</button>
                                </div>
                                <div class="subscribe btn-group" role="group">
                                    <span style="display: none">2</span>
                                    <input type="button" class="btn btn-default" value="订阅">
                                </div>
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-danger">购买</button>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="pic">
                                <a href="#">
                                    <img src="${baseurl}/public/organ/腹直肌和腹直肌鞘.png" alt=""/>
                                    <i></i>
                                </a>
                            </div>
                            <div class="txt">
                                <img src="${baseurl}/public/gif/FuZhiJiHeFuZhiJiQiao.gif">
                            </div>
                            <div class="product_name">
                                <span class="h4">腹直肌和腹直肌鞘</span><br><span class="h5"></span><span
                                    class="h5">订阅量：333</span>
                            </div>
                            <div class="btn-group btn-group-justified" role="group" aria-label="...">
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-default">价格:20元</button>
                                </div>
                                <div class="subscribe btn-group" role="group">
                                    <span style="display: none">3</span>
                                    <input type="button" class="btn btn-default" value="订阅">
                                </div>
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-danger">购买</button>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="pic">
                                <a href="#">
                                    <img src="${baseurl}/public/organ/肩肌群.png" alt=""/>
                                    <i></i>
                                </a>
                            </div>
                            <div class="txt">
                                <img src="${baseurl}/public/gif/JianJIQun.gif">
                            </div>
                            <div class="product_name">
                                <span class="h4">肩肌群</span><br><span class="h5"></span><span class="h5">订阅量：333</span>
                            </div>
                            <div class="btn-group btn-group-justified" role="group" aria-label="...">
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-default">价格:20元</button>
                                </div>
                                <div class="subscribe btn-group" role="group">
                                    <span style="display: none"></span>
                                    <input type="button" class="btn btn-default" value="订阅">
                                </div>
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-danger">购买</button>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="pic">
                                <a href="#">
                                    <img src="${baseurl}/public/organ/咀嚼肌.png" alt=""/>
                                    <i></i>
                                </a>
                            </div>
                            <div class="txt">
                                <img src="${baseurl}/public/gif/JuJueJi.gif">
                            </div>
                            <div class="product_name">
                                <span class="h4">咀嚼肌</span><br><span class="h5"></span><span class="h5">订阅量：333</span>
                            </div>
                            <div class="btn-group btn-group-justified" role="group" aria-label="...">
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-default">价格:20元</button>
                                </div>
                                <div class="subscribe btn-group" role="group">
                                    <span style="display: none"></span>
                                    <input type="button" class="btn btn-default" value="订阅">
                                </div>
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-danger">购买</button>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="pic">
                                <a href="#">
                                    <img src="${baseurl}/public/organ/颅骨整体.png" alt=""/>
                                    <i></i>
                                </a>
                            </div>
                            <div class="txt">
                                <img src="${baseurl}/public/gif/LuGu.gif">
                            </div>
                            <div class="product_name">
                                <span class="h4">颅骨整体</span><br><span class="h5"></span><span class="h5">订阅量：333</span>
                            </div>
                            <div class="btn-group btn-group-justified" role="group" aria-label="...">
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-default">价格:20元</button>
                                </div>
                                <div class="subscribe btn-group" role="group">
                                    <span style="display: none"></span>
                                    <input type="button" class="btn btn-default" value="订阅">
                                </div>
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-danger">购买</button>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="pic">
                                <a href="#">
                                    <img src="${baseurl}/public/organ/前臂后肌群.png" alt=""/>
                                    <i></i>
                                </a>
                            </div>
                            <div class="txt">
                                <img src="${baseurl}/public/gif/QianBiHouJiQun.gif">
                            </div>
                            <div class="product_name">
                                <span class="h4">前臂后肌群</span><br><span class="h5"></span><span class="h5">订阅量：333</span>
                            </div>
                            <div class="btn-group btn-group-justified" role="group" aria-label="...">
                                <div class="btn-group" role="group">
                                    <button type="button" class=" btn btn-default">价格:20元</button>
                                </div>
                                <div class="subscribe btn-group" role="group">
                                    <span style="display: none"></span>
                                    <input type="button" class="btn btn-default" value="订阅">
                                </div>
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-danger">购买</button>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="pic">
                                <a href="#">
                                    <img src="${baseurl}/public/organ/小腿肌.png" alt=""/>
                                    <i></i>
                                </a>
                            </div>
                            <div class="txt">
                                <img src="${baseurl}/public/gif/XiaoTuiJi.gif">
                            </div>
                            <div class="product_name">
                                <span class="h4">小腿肌</span><br><span class="h5"></span><span class="h5">订阅量：333</span>
                            </div>
                            <div class="btn-group btn-group-justified" role="group" aria-label="...">
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-default">价格:20元</button>
                                </div>
                                <div class="subscribe btn-group" role="group">
                                    <span style="display: none"></span>
                                    <input type="button" class="btn btn-default" value="订阅">
                                </div>
                                <div class="btn-group" role="group">
                                    <button type="button" class="btn btn-danger">购买</button>
                                </div>
                            </div>
                        </li>


                    </ul>
                    <section class="pageing">
                        <a href="">«</a>
                        <a href="">‹</a>
                        <a href="javascript:;" class="active">1</a>
                        <a href="">2</a>
                        <a href="">3</a>
                        <a href="">4</a>
                        <a href="">5</a>
                        <a href="">6</a>
                        <a href="">7</a>
                        <a href="">8</a>
                        <a href="">9</a>
                        <a href="">10</a>
                        <a href="">›</a>
                        <a href="">»</a>
                    </section>

                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="../../public/footer.jsp"/>
<script>
    $(function () {
        $.post("${baseurl}/CustomLogin/session", function (data) {
            if (!data.haveSession) {
                location.href = "${baseurl}/page/frontLogin";
            }
        });
        $.post("${baseurl}/CustomLogin/personal", function (data) {
            console.log(data)
        });
    });

    $.post("${baseurl}/CustomLogin/personal",function (data) {
        let subscribe = data.customs;
        let _html="";
        for(let i = 0; i<subscribe.length;i++){
            let fileLong = subscribe[i].m_thumbnail.split("file")[1];
            let file = "/file"+fileLong;
            let m_dynamic = subscribe[i].m_dynamic.split("file")[1];
            let dynamic = "/file"+m_dynamic;
            _html +=`   <li>
                <div class="pic">
                    <a href="#">
                        <img src="${baseurl}`+file+`" alt=""/>
                        <i></i>
                    </a>
                </div>
                <div class="txt">
                    <img src="${baseurl}`+dynamic+`">
                </div>
                <div class="product_name">
                    <span class="h4">`+subscribe[i].m_name+`</span><br><span class="h5"></span><span class="h5">订阅量：333</span>
                </div>
                <div class="btn-group btn-group-justified" role="group" aria-label="...">
                    <div class="btn-group" role="group">
                        <button type="button" class="btn btn-default">价格:`+subscribe[i].m_price+`元</button>
                    </div>
                    <div class="subscribe btn-group" role="group">
                        <span style="display: none">`+subscribe[i].m_id+`</span>`;

//            if(subscribe[i].s_whether == 1){
                _html += `<input type="button" class="btn btn-warning"  value="已订阅" />`;
//            }else{
//                _html +=`<!--<input type="button" class="btn btn-warning"  value="订阅|`+subscribe[i].m_id+`"  onclick='aa(this)'/>-->`;
//            }
            _html +=`</div>
                    <div class="btn-group" role="group">
                        <button type="button" class="btn btn-danger">购买</button>
                    </div>
                </div>
            </li>`;
        }
        $("#model").html(_html);
    });
    <%--function aa(obj) {--%>
        <%--console.log(obj.value)--%>
        <%--let valee1 = obj.value.split("|")[0];--%>
        <%--let valee2 = obj.value.split("|")[1];--%>

        <%--//判断是否有session--%>
        <%--$.post("${baseurl}/CustomLogin/session", function (data) {--%>
            <%--if (data.haveSession) {--%>
                <%--let sWhether = 0;--%>
                <%--let customId = data.user.cId;--%>
                <%--if ( valee1=="订阅" ) {--%>
                    <%--obj.value = "已订阅|"+valee2;--%>
                    <%--sWhether = 1;--%>
                <%--} else {--%>
                    <%--obj.value = "订阅|"+valee2;--%>
                    <%--sWhether = 2;--%>
                <%--}--%>
                <%--$.post("${baseurl}/CustomLogin/Subscribe", {sWhether: sWhether,customId:customId,modelId:valee2}, function (data) {--%>

                <%--});--%>
            <%--} else {--%>
                <%--location.href = "${baseurl}/page/frontLogin";--%>
            <%--}--%>
        <%--});--%>
    }
</script>
</body>