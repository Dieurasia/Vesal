package com.thoughtWorks.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author ubuntu
 */
@Controller
@RequestMapping("page")
public class PageController {

    @RequestMapping("index")
    public String index(){
        return "front/home/index";
    }

    @RequestMapping("frontLogin")
    public String frontLogin(){
        return "front/login";
    }
    @RequestMapping("personal")
    public String personal(){
        return "front/personal/personal";
    }
    @RequestMapping("register")
    public String register(){
        return "front/register";
    }
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
    @RequestMapping("bone")
    public String bone(String model) {
        return "front/modelShow/model.jsp?id="+model;
    }

    @RequestMapping("modelDetails")
        public String modelDetails() {
        return "front/modelShow/details/modelDetails";
    }

}
