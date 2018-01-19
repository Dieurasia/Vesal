<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../public/tag.jsp" %>
<!doctype html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>维萨里3D医学模型库</title>
    <link rel="shortcut icon" href="${baseurl}/public/images/favicon.ico">
    <link rel="stylesheet" type="text/css" href="${baseurl}/public/css/order_base.css"/>
    <link rel="stylesheet" type="text/css" href="${baseurl}/public/css/order_checkOut.css"/>
    <link rel="stylesheet" type="text/css" href="${baseurl}/public/css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="${baseurl}/public/css/style.css"/>
    <script src="${baseurl}/public/js/jquery.min.js"></script>
</head>

<body>
<jsp:include page="../../public/header.jsp"/>
<div class=" container1 ">
    <div class="checkout-box">
        <div id="checkoutInvoice">
            <div class="xm-box">
                <div class="box-hd">
                    <h2 class="title">我的订单</h2>
                </div>
            </div>
        </div>
    </div>
    <div class="checkout-box-ft">
        <div id="checkoutGoodsList" class="checkout-goods-box">
            <div class="xm-box">
                <div class="box-hd">
                    <h2 class="title">订单状态：<span style="color:#ff4646;margin-right: 30px;">待支付</span>订单编号：256325632563
                    </h2>
                </div>
                <div class="box-bd">
                    <dl class="checkout-goods-list">
                        <dt class="clearfix">
                            <span class="col col-1">商品名称</span>
                            <span class="col col-2">购买价格</span>
                            <span class="col col-3">购买数量</span>
                            <span class="col col-4">小计（元）</span>
                        </dt>
                        <dd class="item clearfix">
                            <div class="item-row">
                                <div class="col col-1">
                                    <div class="g-pic">
                                        <img src="http://i1.mifile.cn/a1/T11lLgB5YT1RXrhCrK!40x40.jpg"
                                             srcset="http://i1.mifile.cn/a1/T11lLgB5YT1RXrhCrK!80x80.jpg 2x" width="40"
                                             height="40"/>
                                    </div>
                                    <div class="g-info">
                                        <a href="#">
                                            小米T恤 忍者米兔双截棍 军绿 XXL </a>
                                    </div>
                                </div>

                                <div class="col col-2">39元</div>
                                <div class="col col-3">1</div>
                                <div class="col col-4">39元</div>
                            </div>
                        </dd>
                        <dd class="item clearfix">
                            <div class="item-row">
                                <div class="col col-1">
                                    <div class="g-pic">
                                        <img src="http://i1.mifile.cn/a1/T14BLvBKJT1RXrhCrK!40x40.jpg"
                                             srcset="http://i1.mifile.cn/a1/T14BLvBKJT1RXrhCrK!80x80.jpg 2x" width="40"
                                             height="40"/>
                                    </div>
                                    <div class="g-info">
                                        <a href="#">
                                            招财猫米兔 白色 </a>
                                    </div>
                                </div>

                                <div class="col col-2">49元</div>
                                <div class="col col-3">1</div>
                                <div class="col col-4">49元</div>
                            </div>
                        </dd>
                        <dd class="item clearfix">
                            <div class="item-row">
                                <div class="col col-1">
                                    <div class="g-pic">
                                        <img src="http://i1.mifile.cn/a1/T1rrDgB4DT1RXrhCrK!40x40.jpg"
                                             srcset="http://i1.mifile.cn/a1/T1rrDgB4DT1RXrhCrK!80x80.jpg 2x" width="40"
                                             height="40"/>
                                    </div>
                                    <div class="g-info">
                                        <a href="#">
                                            小米圆领纯色T恤 男款 红色 XXL </a>
                                    </div>
                                </div>
                                <div class="col col-2">39元</div>
                                <div class="col col-3">4</div>
                                <div class="col col-4">156元</div>
                            </div>
                        </dd>
                    </dl>
                    <div class="checkout-count clearfix">
                        <div class="checkout-price">
                            <ul>
                                <li>
                                    订单总额：<span>244元</span>
                                </li>
                                <li>
                                    活动优惠：<span>-0元</span>
                                </li>
                                <li>
                                    优惠券抵扣：<span id="couponDesc">-0元</span>
                                </li>
                            </ul>
                            <p class="checkout-total">应付总额：<span><strong id="totalPrice">244</strong>元</span></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="checkout-confirm">
            <a href="${baseurl}/page/shopping" class="btn btn-lineDakeLight btn-back-cart">返回购物车</a>
            <input type="submit" class="btn btn-primary" value="立即支付" id="checkoutToPay"/>
        </div>
    </div>
    <hr>
</div>
<jsp:include page="../../public/footer.jsp"/>
<script type="text/javascript" src="${baseurl}/public/js/front_Layui.js"></script>
</body>
</html>
