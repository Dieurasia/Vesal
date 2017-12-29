<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../public/tag.jsp" %>
<!DOCTYPE html>
<html class="js rgba opacity cssanimations borderradius boxshadow csstransitions csstransforms textshadow">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>维萨里产品展示网</title>

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
<style>
    a {
        color: black;
        text-decoration: none;
    }
</style>
<body>
<jsp:include page="../public/header.jsp"/>
<div class="g-bd-list" id="j-freemarkerRender" style="">
    <div class="g-row">
        <!--商品展示区域-->
        <div id="j-goodsAreaWrap">
            <div class="m-goodsArea">
                <div class="m-sortbar" id="modelMenu">
                    <div class="category"><span class="name">分类：</span>
                        <div class="categoryGroup">
                            <a href="javascript:;" class="categoryItem  active">系统解剖</a>
                            <a href="javascript:;" class="categoryItem ">局部解剖</a>
                        </div>
                    </div>
                    <div class="area"><span class="name">系统：</span>
                        <div class="categoryGroup">
                            <a href="javascript:;" class="categoryItem ">全部</a>
                            <a href="javascript:;" class="categoryItem  active">运动系统</a>
                            <a href="javascript:;" class="categoryItem ">消化系统</a>
                            <a href="javascript:;" class="categoryItem ">呼吸系统</a>
                            <a href="javascript:;" class="categoryItem ">泌尿系统</a>
                            <a href="javascript:;" class="categoryItem ">生殖系统</a>
                            <a href="javascript:;" class="categoryItem ">脉管系统(心血管系)</a>
                            <a href="javascript:;" class="categoryItem ">脉管系统(淋巴系)</a>
                            <a href="javascript:;" class="categoryItem ">感觉器</a>
                            <a href="javascript:;" class="categoryItem ">神经系统</a>
                            <a href="javascript:;" class="categoryItem ">内分泌系统</a>
                        </div>
                    </div>
                    <div class="area"><span class="name">子分类：</span>
                        <div class="categoryGroup">
                            <a href="javascript:;" class="categoryItem j-categoryItem">全部</a>
                            <a href="javascript:;" class="categoryItem j-categoryItem active">骨学</a>
                            <a href="javascript:;" class="categoryItem j-categoryItem">关节学</a>
                            <a href="javascript:;" class="categoryItem j-categoryItem">肌学</a>
                        </div>
                    </div>
                    <%--<div class="sorts">--%>
                    <%--<span class="name">排序：</span>--%>
                    <%--<a href="javascript:;" class="sort sort-default">默认</a>--%>
                    <%--<a href="javascript:;" class="sort sort-price active">--%>
                    <%--<span>价格</span>--%>
                    <%--<div class="icon">--%>
                    <%--<i class="w-icon-arrow arrow-up-gold"></i>--%>
                    <%--<i class="w-icon-arrow arrow-down-gray"></i></div>--%>
                    <%--</a>--%>
                    <%--</div>--%>
                </div>
                <div class="m-content">
                    <ul class="m-itemList f-margin-top-25" id="model">

                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="../public/footer.jsp"/>
<script type="text/javascript" src="${baseurl}/public/js/front_Layui.js"></script>
<script type="text/javascript">
    $(function () {
        //查找信息，并查看是否订阅
        let value = ("${param.id}".split(".jsp")[0]).split("-");
        $.post("${baseurl}/systemDisplay/systemInfo", {
            oneLevel: value[0],
            secondLevel: value[1],
            threeLevel: value[2]
        }, function (data) {
            let subscribe = data.info;
            let _html = "";
            for (let i = 0; i < subscribe.length; i++) {
                let fileLong = subscribe[i].m_thumbnail;
                let file = ("${baseurl}/file/" + fileLong);
                let m_dynamic = subscribe[i].m_dynamic;
                let dynamic = ("${baseurl}/file/" + m_dynamic);
                _html += `<li class="item">
                            <div class="m-product j-product ">
                                <div class="hd">
                                    <a href="#" title="` + subscribe[i].m_name + `" target="_blank">
                                        <img src="` + file + `" alt="` + subscribe[i].m_name + `" class="img"
                                        onmouseover= "this.src='` + dynamic + `'" onmouseout="this.src='` + file + `'" ></a>
                                </div>
                                <div class="bd">
                                    <div class="prdtTags">`
                if (subscribe[i].s_whether == 1) {
                    _html += `<span class=" itemTag attribute" style="cursor:pointer">已订阅</span>`;
                } else {
                    _html += `<span class=" itemTag new" style="cursor:pointer">+订阅</span>`;
                }
                _html += ` <div class="itemTag ">最新</div>
                           <span style="display: none">` + subscribe[i].m_id + `</span>
                                    </div>
                                    <h4 class="name">
                                        <a href="#" title="肝" target="_blank"><span>` + subscribe[i].m_name + `</span>
                                        </a>
                                    </h4>
                                    <p class="price">
                                        <!--<span style="color: gray">原价:¥<span></span>20</span>-->
                                        <span>  价格：¥</span><span>` + subscribe[i].m_price + `</span>
                                    </p>
                                    <div>
                                        <hr>
                                        <p class="desc">简介：<span>` + subscribe[i].m_introduce + `</span></p>
                                    </div>
                                </div>
                            </div>
                        </li>`;
            }
            $("#model").html(_html);
            $(".itemTag").click(function () {
                let hasclazz = $(this).hasClass("new");
                let thiz = $(this);
                let modelId = $(this).siblings('span').text();

                //判断是否有session
                $.post("${baseurl}/CustomLogin/session", function (data) {
                    if (data.haveSession) {
                        let sWhether = 0;
                        let customId = data.user.cId;
                        if (hasclazz) {
                            thiz.text("已订阅").addClass("attribute").removeClass("new");
                            sWhether = 1;
                            layer.msg("订阅成功", {
                                time: 2000
                            });
                        } else {
                            thiz.text("+订阅").addClass("new").removeClass("attribute");
                            sWhether = 2;
                            layer.msg("取消订阅", {
                                time: 2000
                            });
                        }
                        $.post("${baseurl}/CustomLogin/Subscribe", {
                            sWhether: sWhether,
                            customId: customId,
                            modelId: modelId
                        }, function (data) {

                        });
                    } else {
                        location.href = "${baseurl}/page/frontLogin";
                    }
                });
            });
        });
    });

    //等级菜单动态显示
    $(function () {
        let model = (document.location.href).split("=")[1];
        let aModel = model.split("-")[0];
        let bModel = model.split("-")[1];
        let cModel = model.split("-")[2];
        //一级菜单
        let _html = ` <div class="category"><span class="name">分类：</span>
                        <div class="categoryGroup">`;
        $.post("${baseurl}/systemDisplay/modelMenuAClassify", function (data) {
            let AClassify = data.AClassify;
            let model = "";
            for(let i = 0;i<AClassify.length;i++){
                let Amodel = model;
                model +=AClassify[i].a_id;
                let modelHref = "${baseurl}//page/bone?model="+model;
                if(aModel == AClassify[i].a_id){
                    _html += `<a href="`+modelHref+`" class="categoryItem  active">`+AClassify[i].a_name+`</a>`
                }else{
                    _html += `<a href="`+modelHref+`" class="categoryItem ">`+AClassify[i].a_name+`</a>`
                }
                model = Amodel;
            }
            _html += `</div></div> <div class="area"><span class="name">系统：</span><div class="categoryGroup">`;
            //二级菜单
            $.post("${baseurl}/systemDisplay/modelMenuBClassify",{b_aid:aModel},function (data) {

                let BClassify = data.BClassify;
                let modelHrefAll = "${baseurl}//page/bone?model="+aModel;
                if(bModel == null){
                    _html +=`<a href="`+modelHrefAll+`" class="categoryItem active">全部</a>`;
                }else{
                    _html +=`<a href="`+modelHrefAll+`" class="categoryItem ">全部</a>`;
                }
                for(let i = 0;i<BClassify.length;i++) {
                    let Bmodel = model;
                    model +=aModel+"-"+BClassify[i].b_id;
                    let modelHref = "${baseurl}//page/bone?model="+model;
                    if(bModel == BClassify[i].b_id){
                        _html += `<a href="`+modelHref+`" class="categoryItem  active">`+BClassify[i].b_name+`</a>`
                    }else{
                        _html += `<a href="`+modelHref+`" class="categoryItem ">`+BClassify[i].b_name+`</a>`
                    }
                    model = Bmodel;
                };
                _html += `</div></div><div class="area"><span class="name">子分类：</span><div class="categoryGroup">`;
                $.post("${baseurl}/systemDisplay/modelMenuCClassify",{c_bid:bModel},function (data) {
                    let CClassify = data.CClassify;
                    let modelHrefAll = "${baseurl}//page/bone?model="+aModel+"-"+bModel;
                    if(cModel == null){
                        _html +=`<a href="`+modelHrefAll+`" class="categoryItem active">全部</a>`;
                    }else{
                        _html +=`<a href="`+modelHrefAll+`" class="categoryItem ">全部</a>`;
                    }
                    for(let i = 0;i<CClassify.length;i++) {
                        let Bmodel = model;
                        model +=+aModel+"-"+bModel+"-"+CClassify[i].c_id;
                        let modelHref = "${baseurl}//page/bone?model="+model;
                        if(cModel == CClassify[i].c_id){
                            _html += `<a href="`+modelHref+`" class="categoryItem  active">`+CClassify[i].c_name+`</a>`
                        }else{
                            _html += `<a href="`+modelHref+`" class="categoryItem ">`+CClassify[i].c_name+`</a>`
                        }
                        model = Bmodel;
                    };
                    $("#modelMenu").html(_html);
                });

            });
        });

    });
</script>
</body>
</html>