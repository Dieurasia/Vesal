<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../public/tag.jsp" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>购物车</title>
    <link rel="shortcut icon" href="${baseurl}/public/images/favicon.ico">
    <!-- include main css -->
    <link rel="stylesheet" href="${baseurl}/public/css/reset.css">
    <link rel="stylesheet" href="${baseurl}/public/css/carts.css">
    <link rel="stylesheet" type="text/css" href="${baseurl}/public/css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="${baseurl}/public/css/style.css"/>
    <script src="${baseurl}/public/js/jquery.min.js"></script>
</head>
<body>
<jsp:include page="../public/header.jsp"/>
<section class="cartMain">
    <div class="cartMain_hd">
        <ul class="order_lists cartTop">
            <li class="list_chk">
                <!--所有商品全选-->
                <input type="checkbox" id="all" class="whole_check">
                <label for="all"></label>
                全选
            </li>
            <li class="list_con">商品信息</li>
            <li class="list_info">商品参数</li>
            <li class="list_price">单价</li>
            <li class="list_amount" style="padding-left: 20px;">数量</li>
            <li class="list_sum">金额</li>
            <li class="list_op">操作</li>
        </ul>
    </div>

    <div class="cartBox">
        <div class="shop_info">
            <div class="all_check">
                <!--店铺全选-->
                <input type="checkbox" id="shop_a" class="shopChoice">
                <label for="shop_a" class="shop"></label>
            </div>
            <div class="shop_name">
                店铺：<a href="javascript:;">搜猎人艺术生活</a>
            </div>
        </div>
        <div class="order_content">
            <ul class="order_lists">
                <li class="list_chk">
                    <input type="checkbox" id="checkbox_2" class="son_check">
                    <label for="checkbox_2"></label>
                </li>
                <li class="list_con">
                    <div class="list_img"><a href="javascript:;"><img src="${baseurl}/public/images/hard/背肌.png"
                                                                      alt=""></a></div>
                    <div class="list_text"><a href="javascript:;">背肌</a></div>
                </li>
                <li class="list_info">
                    <p>编号：SA010012</p>
                    <p>版本号：1.0</p>
                </li>
                <li class="list_price">
                    <p class="price">￥9.9</p>
                </li>
                <li class="list_amount">
                    <div class="amount_box">
                        <%--<a href="javascript:;" class="reduce reSty">-</a>--%>
                        <input type="text" value="1" class="sum" readonly> <%----%>
                    </div>
                </li>
                <li class="list_sum">
                    <p class="sum_price">￥9.9</p>
                </li>
                <li class="list_op">
                    <p class="del"><a href="javascript:;" class="delBtn">移除商品</a></p>
                </li>
            </ul>
            <ul class="order_lists">
                <li class="list_chk">
                    <input type="checkbox" id="checkbox_3" class="son_check">
                    <label for="checkbox_3"></label>
                </li>
                <li class="list_con">
                    <div class="list_img"><a href="javascript:;"><img src="${baseurl}/public/images/hard/背肌.png"
                                                                      alt=""></a></div>
                    <div class="list_text"><a href="javascript:;">背肌</a></div>
                </li>
                <li class="list_info">
                    <p>编号：SA010012</p>
                    <p>版本号：1.0</p>
                </li>
                <li class="list_price">
                    <p class="price">￥9.9</p>
                </li>
                <li class="list_amount">
                    <div class="amount_box">
                        <input type="text" value="1" class="sum" readonly></div>
                </li>
                <li class="list_sum">
                    <p class="sum_price">￥9.9</p>
                </li>
                <li class="list_op">
                    <p class="del"><a href="javascript:;" class="delBtn">移除商品</a></p>
                </li>
            </ul>
            <ul class="order_lists">
                <li class="list_chk">
                    <input type="checkbox" id="checkbox_6" class="son_check">
                    <label for="checkbox_6"></label>
                </li>
                <li class="list_con">
                    <div class="list_img"><a href="javascript:;"><img src="${baseurl}/public/images/hard/背肌.png"
                                                                      alt=""></a></div>
                    <div class="list_text"><a href="javascript:;">背肌</a></div>
                </li>
                <li class="list_info">
                    <p>编号：SA010012</p>
                    <p>版本号：1.0</p>
                </li>
                <li class="list_price">
                    <p class="price">￥9.9</p>
                </li>
                <li class="list_amount">
                    <div class="amount_box">

                        <input type="text" value="1" class="sum" readonly>
                    </div>
                </li>
                <li class="list_sum">
                    <p class="sum_price">￥9.9</p>
                </li>
                <li class="list_op">
                    <p class="del"><a href="javascript:;" class="delBtn">移除商品</a></p>
                </li>
            </ul>
        </div>
    </div>

    <div class="cartBox">
        <div class="shop_info">
            <div class="all_check">
                <!--店铺全选-->
                <input type="checkbox" id="shop_b" class="shopChoice">
                <label for="shop_b" class="shop"></label>
            </div>
            <div class="shop_name">
                店铺：<a href="javascript:;">卷卷旗舰店</a>
            </div>
        </div>
        <div class="order_content">
            <ul class="order_lists">
                <li class="list_chk">
                    <input type="checkbox" id="checkbox_4" class="son_check">
                    <label for="checkbox_4"></label>
                </li>
                <li class="list_con">
                    <div class="list_img"><a href="javascript:;"><img src="${baseurl}/public/images/hard/背肌.png"
                                                                      alt=""></a></div>
                    <div class="list_text"><a href="javascript:;">背肌</a></div>
                </li>
                <li class="list_info">
                    <p>编号：SA010012</p>
                    <p>版本号：1.0</p>
                </li>
                <li class="list_price">
                    <p class="price">￥9.9</p>
                </li>
                <li class="list_amount">
                    <div class="amount_box">

                        <input type="text" value="1" class="sum" readonly>
                    </div>
                </li>
                <li class="list_sum">
                    <p class="sum_price">￥9.9</p>
                </li>
                <li class="list_op">
                    <p class="del"><a href="javascript:;" class="delBtn">移除商品</a></p>
                </li>
            </ul>
            <ul class="order_lists">
                <li class="list_chk">
                    <input type="checkbox" id="checkbox_5" class="son_check">
                    <label for="checkbox_5"></label>
                </li>
                <li class="list_con">
                    <div class="list_img"><a href="javascript:;"><img src="${baseurl}/public/images/hard/背肌.png"
                                                                      alt=""></a></div>
                    <div class="list_text"><a href="javascript:;">背肌</a></div>
                </li>
                <li class="list_info">
                    <p>编号：SA010012</p>
                    <p>版本号：1.0</p>
                </li>
                <li class="list_price">
                    <p class="price">￥9.9</p>
                </li>
                <li class="list_amount">
                    <div class="amount_box">

                        <input type="text" value="1" class="sum" readonly>
                    </div>
                </li>
                <li class="list_sum">
                    <p class="sum_price">￥9.9</p>
                </li>
                <li class="list_op">
                    <p class="del"><a href="javascript:;" class="delBtn">移除商品</a></p>
                </li>
            </ul>
        </div>
    </div>

    <div class="cartBox">
        <div class="shop_info">
            <div class="all_check">
                <!--店铺全选-->
                <input type="checkbox" id="shop_c" class="shopChoice">
                <label for="shop_c" class="shop"></label>
            </div>
            <div class="shop_name">
                店铺：<a href="javascript:;">卷卷旗舰店</a>
            </div>
        </div>
        <div class="order_content">
            <ul class="order_lists">
                <li class="list_chk">
                    <input type="checkbox" id="checkbox_8" class="son_check">
                    <label for="checkbox_8"></label>
                </li>
                <li class="list_con">
                    <div class="list_img"><a href="javascript:;"><img src="${baseurl}/public/images/hard/背肌.png"
                                                                      alt=""></a></div>
                    <div class="list_text"><a href="javascript:;">背肌</a></div>
                </li>
                <li class="list_info">
                    <p>编号：SA010012</p>
                    <p>版本号：1.0</p>
                </li>
                <li class="list_price">
                    <p class="price">￥9.9</p>
                </li>
                <li class="list_amount">
                    <div class="amount_box">

                        <input type="text" value="1" class="sum" readonly>
                    </div>
                </li>
                <li class="list_sum">
                    <p class="sum_price">￥9.9</p>
                </li>
                <li class="list_op">
                    <p class="del"><a href="javascript:;" class="delBtn">移除商品</a></p>
                </li>
            </ul>
            <ul class="order_lists">
                <li class="list_chk">
                    <input type="checkbox" id="checkbox_9" class="son_check">
                    <label for="checkbox_9"></label>
                </li>
                <li class="list_con">
                    <div class="list_img"><a href="javascript:;"><img src="${baseurl}/public/images/hard/背肌.png"
                                                                      alt=""></a></div>
                    <div class="list_text"><a href="javascript:;">背肌</a></div>
                </li>
                <li class="list_info">
                    <p>编号：SA010012</p>
                    <p>版本号：1.0</p>
                </li>
                <li class="list_price">
                    <p class="price">￥9.9</p>
                </li>
                <li class="list_amount">
                    <div class="amount_box">

                        <input type="text" value="1" class="sum" readonly>
                    </div>
                </li>
                <li class="list_sum">
                    <p class="sum_price">￥9.9</p>
                </li>
                <li class="list_op">
                    <p class="del"><a href="javascript:;" class="delBtn">移除商品</a></p>
                </li>
            </ul>
        </div>
    </div>
    <!--底部-->
    <div class="bar-wrapper">
        <div class="bar-right">
            <div class="piece">已选商品<strong class="piece_num">0</strong>件</div>
            <div class="totalMoney">共计: <strong class="total_text">0.00</strong></div>
            <div class="calBtn"><a href="javascript:;">结算</a></div>
        </div>
    </div>
</section>
<section class="model_bg"></section>
<section class="my_model">
    <p class="title">删除宝贝<span class="closeModel">X</span></p>
    <p>您确认要删除该宝贝吗？</p>
    <div class="opBtn"><a href="javascript:;" class="dialog-sure">确定</a><a href="javascript:;"
                                                                           class="dialog-close">关闭</a></div>
</section>
<jsp:include page="../public/footer.jsp"/>
<script type="text/javascript" src="${baseurl}/public/js/front_Layui.js"></script>
<script src="${baseurl}/public/js/carts.js"></script>

</body>
</html>