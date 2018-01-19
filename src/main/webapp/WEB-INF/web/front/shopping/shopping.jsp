<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../public/tag.jsp" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>维萨里3D医学模型库</title>
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
        <%--<div class="shop_info">--%>
        <%--<div class="all_check">--%>
        <%--<!--店铺全选-->--%>
        <%--<input type="checkbox" id="shop_a" class="shopChoice">--%>
        <%--<label for="shop_a" class="shop"></label>--%>
        <%--</div>--%>
        <%--<div class="shop_name">--%>
        <%--<span>我的购物车</span>--%>
        <%--</div>--%>
        <%--</div>--%>
        <div class="order_content" id="shopping_text">

        </div>
    </div>
    <!--底部-->
    <div class="bar-wrapper">
        <div class="bar-right">
            <div class="piece">已选商品<strong class="piece_num">0</strong>件</div>
            <div class="totalMoney">共计: <strong class="total_text">0.00</strong></div>
            <div class="calBtn"><a href="javascript:;">提交订单</a></div>
        </div>
    </div>
</section>
<section class="model_bg"></section>
<section class="my_model">
    <p class="title">删除宝贝<span class="closeModel">X</span></p>
    <p>您确认要删除该宝贝吗？</p>
    <div class="opBtn"><a href="javascript:;" class="dialog-sure">确定</a>
        <a href="javascript:;" class="dialog-close">关闭</a></div>
</section>
<jsp:include page="../public/footer.jsp"/>
<script type="text/javascript" src="${baseurl}/public/js/front_Layui.js"></script>
<script type="text/javascript">

    $(function () {
        $.post("${baseurl}/CustomLogin/session", function (session) {
            if (session.haveSession) {
                var custom_id = session.user.cId;
                $.post("${baseurl}/order/queryCartModel", {customId: custom_id}, function (data) {
                    var _html = "";
                    var allCheckbox = [];
                    for (var i = 0; i < data.data.length; i++) {
                        allCheckbox.push(data.data[i].c_id);
                        var img = "${baseurl}/file/" + data.data[i].m_thumbnail;
                        var m_introduce = (data.data[i].m_introduce).substr(0, 40) + "...";
                        var modelDetails = ("${baseurl}/page/modelDetails?id=" + data.data[i].m_id);
                        _html += `<ul class="order_lists">
                <li class="list_chk">
                    <input name="model" value="` + data.data[i].m_id + `" type="checkbox" id="` + data.data[i].c_id + `" class="son_check">
                    <label for="` + data.data[i].c_id + `"></label>
                </li>
                <a href = "` + modelDetails + `">
                <li class="list_con">
                    <div class="list_img">
                         <img src="` + img + `">
                    </div>
                    <div class="list_text">
                        <span style= "color: black">` + data.data[i].m_name + `</span>
                        <p style="font-size: 14px;color: grey">` + m_introduce + `</p>
                    </div>
                </li>
                </a>
                <li class="list_info">
                    <p>编号：` + data.data[i].m_code + `</p>
                    <p>版本号：` + data.data[i].m_version + `</p>
                </li>
                <li class="list_price">
                    <p class="price">￥` + data.data[i].m_price + `</p>
                </li>
                <li class="list_amount">
                    <div class="amount_box">
                        <%--<a href="javascript:;" class="reduce reSty">-</a>--%>
                        <input type="text" value="1" class="sum" readonly> <%----%>
                    </div>
                </li>
                <li class="list_sum">
                    <p class="sum_price">￥` + data.data[i].m_price + `</p>
                </li>
                <li class="list_op">
                 <input type="text" value="` + data.data[i].c_id + `" class = "c_id" style="display: none">
                    <p class="del"><a href="javascript:;"  class="delBtn">移除商品</a></p>
                </li>
            </ul>`
                    }
                    $("#shopping_text").html(_html);
                    //全局的checkbox选中和未选中的样式
                    var $allCheckbox = $('input[type="checkbox"]'),     //全局的全部checkbox
                        $wholeChexbox = $('.whole_check'),
                        $cartBox = $('.cartBox'),                       //每个商铺盒子
                        $shopCheckbox = $('.shopChoice'),
                        //每个商铺的checkbox
                        $calBtn = $('.calBtn'),
                        $sonCheckBox = $('.son_check');
                    //删除指定的数组
                    Array.prototype.remove = function (val) {
                        var index = this.indexOf(val);
                        if (index > -1) {
                            this.splice(index, 1);
                        }
                    };
                    //每个商铺下的商品的checkbox
                    $allCheckbox.click(function () {

                        if ($(this).is(':checked')) {
                            $(this).next('label').addClass('mark');
                        } else {
                            $(this).next('label').removeClass('mark');
                        }
                    });


                    //===============================================全局全选与单个商品的关系================================
                    $wholeChexbox.click(function () {
                        var $checkboxs = $cartBox.find('input[type="checkbox"]');
                        if ($(this).is(':checked')) {
                            $checkboxs.prop("checked", true);
                            $checkboxs.next('label').addClass('mark');
                        } else {
                            $checkboxs.prop("checked", false);
                            $checkboxs.next('label').removeClass('mark');
                        }
                        totalMoney();
                    });


                    $sonCheckBox.each(function () {
                        $(this).click(function () {
                            if ($(this).is(':checked')) {
                                //判断：所有单个商品是否勾选
                                var len = $sonCheckBox.length;
                                var num = 0;
                                $sonCheckBox.each(function () {
                                    if ($(this).is(':checked')) {
                                        num++;
                                    }
                                });
                                if (num == len) {
                                    $wholeChexbox.prop("checked", true);
                                    $wholeChexbox.next('label').addClass('mark');
                                }
                            } else {
                                //单个商品取消勾选，全局全选取消勾选
                                $wholeChexbox.prop("checked", false);
                                $wholeChexbox.next('label').removeClass('mark');
                            }
                        })
                    });

                    //=======================================每个店铺checkbox与全选checkbox的关系/每个店铺与其下商品样式的变化===================================================

                    //店铺有一个未选中，全局全选按钮取消对勾，若店铺全选中，则全局全选按钮打对勾。
                    $shopCheckbox.each(function () {
                        $(this).click(function () {
                            if ($(this).is(':checked')) {
                                //判断：店铺全选中，则全局全选按钮打对勾。
                                var len = $shopCheckbox.length;
                                var num = 0;
                                $shopCheckbox.each(function () {
                                    if ($(this).is(':checked')) {
                                        num++;
                                    }
                                });
                                if (num == len) {
                                    $wholeChexbox.prop("checked", true);
                                    $wholeChexbox.next('label').addClass('mark');
                                }

                                //店铺下的checkbox选中状态
                                $(this).parents('.cartBox').find('.son_check').prop("checked", true);
                                $(this).parents('.cartBox').find('.son_check').next('label').addClass('mark');
                            } else {
                                //否则，全局全选按钮取消对勾
                                $wholeChexbox.prop("checked", false);
                                $wholeChexbox.next('label').removeClass('mark');

                                //店铺下的checkbox选中状态
                                $(this).parents('.cartBox').find('.son_check').prop("checked", false);
                                $(this).parents('.cartBox').find('.son_check').next('label').removeClass('mark');
                            }
                            totalMoney();
                        });
                    });


                    //========================================每个店铺checkbox与其下商品的checkbox的关系======================================================

                    //店铺$sonChecks有一个未选中，店铺全选按钮取消选中，若全都选中，则全选打对勾
                    $cartBox.each(function () {
                        var $this = $(this);
                        var $sonChecks = $this.find('.son_check');
                        $sonChecks.each(function () {
                            $(this).click(function () {
                                if ($(this).is(':checked')) {
                                    //判断：如果所有的$sonChecks都选中则店铺全选打对勾！
                                    var len = $sonChecks.length;
                                    var num = 0;
                                    $sonChecks.each(function () {
                                        if ($(this).is(':checked')) {
                                            num++;
                                        }
                                    });
                                    if (num == len) {
                                        $(this).parents('.cartBox').find('.shopChoice').prop("checked", true);
                                        $(this).parents('.cartBox').find('.shopChoice').next('label').addClass('mark');
                                    }

                                } else {
                                    //否则，店铺全选取消
                                    $(this).parents('.cartBox').find('.shopChoice').prop("checked", false);
                                    $(this).parents('.cartBox').find('.shopChoice').next('label').removeClass('mark');
                                }
                                totalMoney();
                            });
                        });
                    });


                    //=================================================商品数量==============================================
                    var $plus = $('.plus'),
                        $reduce = $('.reduce'),
                        $all_sum = $('.sum');
                    $plus.click(function () {
                        var $inputVal = $(this).prev('input'),
                            $count = parseInt($inputVal.val()) + 1,
                            $obj = $(this).parents('.amount_box').find('.reduce'),
                            $priceTotalObj = $(this).parents('.order_lists').find('.sum_price'),
                            $price = $(this).parents('.order_lists').find('.price').html(),  //单价
                            $priceTotal = $count * parseInt($price.substring(1));
                        $inputVal.val($count);
                        $priceTotalObj.html('￥' + $priceTotal);
                        if ($inputVal.val() > 1 && $obj.hasClass('reSty')) {
                            $obj.removeClass('reSty');
                        }
                        totalMoney();
                    });

                    $reduce.click(function () {
                        var $inputVal = $(this).next('input'),
                            $count = parseInt($inputVal.val()) - 1,
                            $priceTotalObj = $(this).parents('.order_lists').find('.sum_price'),
                            $price = $(this).parents('.order_lists').find('.price').html(),  //单价
                            $priceTotal = $count * parseInt($price.substring(1));
                        if ($inputVal.val() > 1) {
                            $inputVal.val($count);
                            $priceTotalObj.html('￥' + $priceTotal);
                        }
                        if ($inputVal.val() == 1 && !$(this).hasClass('reSty')) {
                            $(this).addClass('reSty');
                        }
                        totalMoney();
                    });

                    $all_sum.keyup(function () {
                        var $count = 0,
                            $priceTotalObj = $(this).parents('.order_lists').find('.sum_price'),
                            $price = $(this).parents('.order_lists').find('.price').html(),  //单价
                            $priceTotal = 0;
                        if ($(this).val() == '') {
                            $(this).val('1');
                        }
                        $(this).val($(this).val().replace(/\D|^0/g, ''));
                        $count = $(this).val();
                        $priceTotal = $count * parseInt($price.substring(1));
                        $(this).attr('value', $count);
                        $priceTotalObj.html('￥' + $priceTotal);
                        totalMoney();
                    })

                    //======================================移除商品========================================

                    var $order_lists = null;
                    var $order_content = '';
                    var c_id = 0;
                    $('.delBtn').click(function () {
                        $order_lists = $(this).parents('.order_lists');
                        c_id = $(this).parents('.order_lists').find('.c_id').val();
                        $order_content = $order_lists.parents('.order_content');
                        $('.model_bg').fadeIn(300);
                        $('.my_model').fadeIn(300);
                    });

                    //关闭模态框
                    $('.closeModel').click(function () {
                        closeM();
                    });
                    $('.dialog-close').click(function () {
                        closeM();
                    });

                    function closeM() {
                        $('.model_bg').fadeOut(300);
                        $('.my_model').fadeOut(300);
                    }

                    //确定按钮，移除商品
                    $('.dialog-sure').click(function () {
                        $order_lists.remove();
                        delBtn(c_id)
                        if ($order_content.html().trim() == null || $order_content.html().trim().length == 0) {
                            $order_content.parents('.cartBox').remove();
                        }
                        closeM();
                        $sonCheckBox = $('.son_check');
                        totalMoney();
                    })

                    //======================================总计==========================================

                    function totalMoney() {
                        var total_money = 0;
                        var total_count = 0;
                        var calBtn = $('.calBtn a');
                        $sonCheckBox.each(function () {
                            if ($(this).is(':checked')) {
                                var goods = parseFloat($(this).parents('.order_lists').find('.sum_price').html().substring(1));
                                var num = parseInt($(this).parents('.order_lists').find('.sum').val());
                                total_money += goods;
                                total_count += num;
                            }
                        });
                        $('.total_text').html('￥' + total_money.toFixed(2));
                        $('.piece_num').html(total_count);

                        // console.log(total_money,total_count);

                        if (total_money != 0 && total_count != 0) {
                            if (!calBtn.hasClass('btn_sty')) {
                                calBtn.addClass('btn_sty');
                            }
                        } else {
                            if (calBtn.hasClass('btn_sty')) {
                                calBtn.removeClass('btn_sty');
                            }
                        }
                    }

                    // ============================提交订单============================
                    $calBtn.click(function () {
                        var chk_value = [];
                        $('input[name="model"]:checked').each(function () {
                            chk_value.push($(this).val());
                        });
                        if (chk_value.length != 0) {
                            $.post("${baseurl}/order/addOrder",
                                {
                                    customId: custom_id,
                                    allModelId: chk_value.toString()
                                },
                                function (data) {
                                    layer.msg(data.msg, {
                                        time: 1000
                                    }, function () {
                                        location.href = "${baseurl}/page/order";
                                    });
                                });
                        }
                    });

                });
            } else {
                location.href = "${baseurl}/page/frontLogin";
            }
        });
    });

    //删除商品
    function delBtn(c_id) {
        $.post("${baseurl}/order/devareCartByCid", {c_id: c_id}, function (data) {
            layer.msg(data.msg, {
                time: 2000
            });
        });
    }
</script>
</body>
</html>