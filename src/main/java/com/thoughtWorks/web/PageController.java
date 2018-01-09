package com.thoughtWorks.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author ubuntu
 */
@Controller
@RequestMapping("page")
public class PageController {

    /**
     * 主页面
     * @return
     */
    @RequestMapping("index")
    public String index(){
        return "front/home/index";
    }

    /**
     * 登录页面
     * @return
     */
    @RequestMapping("frontLogin")
    public String frontLogin(){
        return "front/login";
    }

    /**
     * 个人主页
     * @return
     */
    @RequestMapping("personal")
    public String personal(){
        return "front/personal/personal";
    }

    /**
     * 注册页面
     * @return
     */
    @RequestMapping("register")
    public String register(){
        return "front/register";
    }

    /**
     * 我的订阅
     * @return
     */
    @RequestMapping("subscriptions")
    public String subscriptions(){
        return "front/personal/subscriptions/subscriptions";
    }

    /**
     *  点击菜单显示页面
     * @return
     */
    @RequestMapping("modelShow")
    public String modelShow() {
        return "front/modelShow/model.jsp?id=1-1-1";
    }

    /**
     * 模型列表
     * @param model
     * @return
     */
    @RequestMapping("bone")
    public String bone(String model) {
        return "front/modelShow/model.jsp?id="+model;
    }

    /**
     * 模型详情页面
     * @param id
     * @return
     */
    @RequestMapping("modelDetails")
        public String modelDetails(int id ) {
        return "front/modelShow/details/modelDetails.jsp?id="+id;
    }

    /**
     * 关于我们
     * @return
     */
    @RequestMapping("about")
        public String about() {
        return "front/about/about";
    }

    /**
     * 手绘页面
     * @return
     */
    @RequestMapping("handDrawing")
    public String handDrawing() {
        return "front/handDrawing/handDrawing";
    }
    @RequestMapping("shopping")
    public String shopping() {
        return "front/shopping/shopping";
    }

}
