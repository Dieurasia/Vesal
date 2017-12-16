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
    private Map<String, Object> login(Custom custom) {
        HttpServletRequest request = null;
        Map<String, Object> data = new HashMap<>();
        try {
            Custom custom1 = customLoginService.login(custom);
            request.getSession().setAttribute("custom", custom1);
            data.put("result", true);
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

}
