package com.thoughtWorks.web.custom;

import com.thoughtWorks.common.Constant;
import com.thoughtWorks.common.ServerResponse;
import com.thoughtWorks.dto.Result;
import com.thoughtWorks.entity.Custom;
import com.thoughtWorks.entity.Subscribe;
import com.thoughtWorks.service.CustomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author ubuntu
 */
@Controller
@RequestMapping("/CustomLogin/")
public class CustomController {
    @Autowired
    private CustomService customService;

    /**
     * 用户登录
     *
     * @param custom
     * @return
     */
    @RequestMapping(value = "login")
    @ResponseBody
    private ServerResponse<Custom> login(Custom custom, HttpSession session) {
        Map<String, Object> data = new HashMap<>();
        try {
            ServerResponse<Custom> response = customService.login(custom);
            if (response.isSuccess()) {
                session.setAttribute(Constant.CURRENT_USER, response.getData());
            }
            return response;
        } catch (Exception e) {
            e.printStackTrace();
        }

        return ServerResponse.createByErrorMessage("登录失败");
    }

    /**
     * 注销登录
     *
     * @param request
     * @return
     */
    @RequestMapping(value = "loginOut")
    @ResponseBody
    private Map<String, Object> loginOut(HttpServletRequest request) {
        Map<String, Object> data = new HashMap<>();
        request.getSession().removeAttribute("custom");
        data.put("result", true);
        data.put("msg", Constant.LOGIN_OUT);
        return data;
    }

    /**
     * 判断是否有session
     *
     * @param session
     * @return
     */
    @RequestMapping("/session")
    @ResponseBody
    public Map<String, Object> session(HttpSession session) {
        Map<String, Object> data = new HashMap<String, Object>();
        try {
            Custom user = (Custom) session.getAttribute("custom");
            if (user != null) {
                data.put("haveSession", true);
                data.put("user", user);
            } else {
                data.put("haveSession", false);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return data;
    }

    /**
     * 订阅和取消订阅
     *
     * @param subscribe
     * @return
     */
    @RequestMapping("/Subscribe")
    @ResponseBody
    public Map<String, Object> Subscribe(Subscribe subscribe) {
        Map<String, Object> data = new HashMap<String, Object>();
        try {
            customService.subscribe(subscribe);
            data.put("result", true);
            data.put("msg", Constant.SUBSCRIBE_SUCCESS);
        } catch (Exception e) {
            data.put("msg", Constant.UPDATE_FAILURE);
            e.printStackTrace();
        }
        return data;
    }

    /**
     * 用户查找个人订阅
     *
     * @param custom
     * @return
     */
    @RequestMapping("/personal")
    @ResponseBody
    public Map<String, Object> personalSubscription(Custom custom, HttpSession session) {
        Map<String, Object> data = new HashMap<>();
        Custom user = (Custom) session.getAttribute("custom");
        try {
            custom.setcId(user.getcId());
            List<Map<String, Object>> customs = customService.personalSubscription(custom);
            data.put("customs", customs);
            data.put("result", true);
            data.put("msg", Constant.SEARCH_SUCCESS);
        } catch (Exception e) {
            data.put("msg", Constant.SEARCH_FAILURE);
            e.printStackTrace();
        }

        return data;
    }

    @RequestMapping(value = "/queryCustomByName")
    @ResponseBody
    public Map<String, Object> queryCustomByName(String cName) {
        Map<String, Object> data = new HashMap<>();
        try {
            boolean result = customService.queryCustomByName(cName);
            data.put("result", result);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return data;
    }

    @RequestMapping(value = "/customRegister")
    @ResponseBody
    public Result customRegister(Custom custom, HttpServletRequest request) {
        try {
            String ip = getLocalIp(request);
            custom.setcIp(ip);
            customService.customRegister(custom);

            return Result.success(null, Constant.SEARCH_SUCCESS);
        } catch (Exception e) {
            e.printStackTrace();

            return Result.failure(null, Constant.SEARCH_FAILURE);
        }
    }

    /**
     * 获取IP
     *
     * @param request
     * @return
     */
    public static String getLocalIp(HttpServletRequest request) {
        String remoteAddr = request.getRemoteAddr();
        String forwarded = request.getHeader("X-Forwarded-For");
        String realIp = request.getHeader("X-Real-IP");

        String ip = null;
        if (realIp == null) {
            if (forwarded == null) {
                ip = remoteAddr;
            } else {
                ip = remoteAddr + "/" + forwarded.split(",")[0];
            }
        } else {
            if (realIp.equals(forwarded)) {
                ip = realIp;
            } else {
                if (forwarded != null) {
                    forwarded = forwarded.split(",")[0];
                }
                ip = realIp + "/" + forwarded;
            }
        }
        return ip;
    }
}
