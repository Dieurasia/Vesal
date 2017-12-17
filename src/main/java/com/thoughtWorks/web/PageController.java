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
}
