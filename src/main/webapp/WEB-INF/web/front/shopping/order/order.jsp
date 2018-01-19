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
    <span id="_html">

    </span>

</div>
<jsp:include page="../../public/footer.jsp"/>
<script type="text/javascript" src="${baseurl}/public/js/front_Layui.js"></script>
<script type="text/javascript">
    $(function () {
        $.post("${baseurl}/CustomLogin/session", function (session) {
            if (session.haveSession) {
                var custom_id = session.user.cId;
                $.post("${baseurl}/order/queryOrderInfo", {customId: custom_id}, function (data) {
                    var data = data.data;
                    var _html = "";

                    for (var i = 0; i < data.length; i++) {
                        var count = 0.0;
                        var state = data[i].orderInfo[0].o_finish == 0 ? "待支付" : "已经支付";
                        _html += `<div class="checkout-box-ft">
        <div id="checkoutGoodsList" class="checkout-goods-box">
            <div class="xm-box">
                <div class="box-hd">
                    <h2 class="title">订单状态：<span style="color:#ff4646;margin-right: 30px;">` + state + `</span>订单编号：` + data[i].orderCode + `
                    </h2>
                </div>
                <div class="box-bd">
                    <dl class="checkout-goods-list">
                        <dt class="clearfix">
                            <span class="col col-1">商品名称</span>
                            <span class="col col-2">购买价格</span>
                            <span class="col col-3">购买数量</span>
                            <span class="col col-4">小计（元）</span>
                        </dt>`
                        var orderInfo = data[i].orderInfo;
                        for (var j = 0; j < orderInfo.length; j++) {
                            count += parseFloat(orderInfo[j].o_model_price);
                            var img = "${baseurl}/file/" + orderInfo[j].o_thumbnail;
                            var modelDetails = ("${baseurl}/page/modelDetails?id=" + orderInfo[j].model_id);
                            var shopping = "${baseurl}/page/shopping";
                            _html += `<dd class="item clearfix">
                            <div class="item-row">
                                <div class="col col-1">
                                    <div class="g-pic">
                                        <img src="` + img + `" width="40" height="40"/>
                                    </div>
                                    <div class="g-info">
                                        <a href="` + modelDetails + `">
                                            ` + orderInfo[j].o_name + `</a>
                                    </div>
                                </div>
                                <div class="col col-2">` + orderInfo[j].o_model_price + `元</div>
                                <div class="col col-3">1</div>
                                <div class="col col-4">` + orderInfo[j].o_model_price + `元</div>
                            </div>
                        </dd>`
                        }

                        count = count.toFixed(2);
                        _html += `</dl>
                    <div class="checkout-count clearfix">
                        <div class="checkout-price">
                            <ul>
                                <li>
                                    订单总额：<span>` + count + `元</span>
                                </li>
                                <li>
                                    活动优惠：<span>-0元</span>
                                </li>
                                <li>
                                    优惠券抵扣：<span id="couponDesc">-0元</span>
                                </li>
                            </ul>
                            <p class="checkout-total">应付总额：<span><strong id="totalPrice">` + count + `</strong>元</span></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="checkout-confirm">
            <a href="` + shopping + `" class="btn btn-lineDakeLight btn-back-cart">返回购物车</a>
            <input type="submit" class="btn btn-primary" value="立即支付" id="checkoutToPay"/>
        </div>
    </div>
    <hr>`;

                    }
                    $("#_html").html(_html);
                });
            } else {
                location.href = "${baseurl}/page/frontLogin";
            }
        });
    });
</script>
</body>
</html>
