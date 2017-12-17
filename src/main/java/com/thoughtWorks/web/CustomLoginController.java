package com.thoughtWorks.web;

import com.thoughtWorks.dao.CustomLoginDao;
import com.thoughtWorks.entity.Custom;
import com.thoughtWorks.service.CustomLoginService;
import com.thoughtWorks.util.Constant;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

/**
 * @author ubuntu
 */
@Controller
@RequestMapping("/CustomLogin")
public class CustomLoginController {
    @Autowired
    private CustomLoginService customLoginService;

    @RequestMapping(value = "login")
    @ResponseBody
    private Map<String, Object> login(Custom custom,HttpServletRequest request) {
            Map<String, Object> data = new HashMap<>();
        try {
            Custom custom1 = customLoginService.login(custom);
            if(custom1!= null){
                request.getSession().setAttribute("custom", custom1);
                data.put("result", true);
            }else{
                data.put("result", false);
                data.put("msg", Constant.ACCOUNT_OR_PWD_ERROR);
            }
        } catch (UnknownAccountException e) {
            data.put("result", false);
            data.put("msg", Constant.ACCOUNT_NOT_EXIST);
        } catch (LockedAccountException e) {
            data.put("result", false);
            data.put("msg", Constant.ACCOUNT_IS_LOCK);
        } catch (Exception e) {
            data.put("result", false);
            data.put("msg", Constant.ACCOUNT_OR_PWD_ERROR);
        }

        return data;
    }

    @RequestMapping(value = "loginOut")
    @ResponseBody
    private Map<String, Object> loginOut(HttpServletRequest request) {
        Map<String, Object> data = new HashMap<>();
        request.getSession().removeAttribute("custom");
        data.put("result",true);
        data.put("msg",Constant.LOGIN_OUT);
        return data;
    }
    //判断是否有session
    @RequestMapping("/session")
    @ResponseBody
    public Map<String, Object> session(HttpSession session) {
        Map<String, Object> data = new HashMap<String, Object>();
        try {
            Custom user = (Custom) session.getAttribute("custom");
            if(user != null){
                data.put("haveSession",true);
                data.put("user",user);
            }else{
                data.put("haveSession",false);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return data;
    }
    //订阅和取消订阅
    @RequestMapping("/Subscribe")
    @ResponseBody
    public Map<String, Object> Subscribe(HttpSession session) {
        Map<String, Object> data = new HashMap<String, Object>();
        try {

        } catch (Exception e) {
            e.printStackTrace();
        }

        return data;
    }

}
