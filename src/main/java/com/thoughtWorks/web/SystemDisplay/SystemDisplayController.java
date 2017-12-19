package com.thoughtWorks.web.SystemDisplay;

import com.thoughtWorks.entity.Custom;
import com.thoughtWorks.entity.Level;
import com.thoughtWorks.entity.Model;
import com.thoughtWorks.service.SystemDisplayService;
import com.thoughtWorks.util.Constant;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author 马欢欢
 * @date 2017/12/15
 */
@Component
@RequestMapping("/systemDisplay")
public class SystemDisplayController {
    @Resource
    private SystemDisplayService systemDisplayService;

    /**
     * 根据所有的级别 查找模型信息
     * @param level 级别信息
     * @param session 取出用户id 方便在v_subscribe查出用户订阅的信息
     * @return
     */
    @RequestMapping("/systemInfo")
    @ResponseBody
    public Map<String, Object> systemInfo(Level level, HttpSession session) {
        Map<String, Object> data = new HashMap<String, Object>();
        Custom user = (Custom) session.getAttribute("custom");
        try {
            if(user != null){
                level.setCustomId(user.getcId());
            }
            List<Map<String,Object>> list = systemDisplayService.systemInfo(level);
            data.put("info", list);
            data.put("result", true);
            data.put("msg", Constant.SEARCH_SUCCESS);
        } catch (Exception e) {
            data.put("result", false);
            data.put("msg", Constant.SEARCH_FAILURE);
            e.printStackTrace();
        }
        return data;
    }
}