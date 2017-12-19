package com.thoughtWorks.service.impl;

import com.thoughtWorks.dao.SystemDisplayDao;
import com.thoughtWorks.entity.Level;
import com.thoughtWorks.entity.Model;
import com.thoughtWorks.service.SystemDisplayService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * @author 马欢欢
 * @date 2017/12/15
 */
@Service
public class SystemDisplayServiceImpl implements SystemDisplayService {

    @Resource
    private SystemDisplayDao systemDisplayDao;

    @Override
    public List<Map<String, Object>> systemInfo(Level level) throws Exception {
        List<Map<String, Object>> data = systemDisplayDao.systemInfo(level);
        for (Map<String, Object> map : data) {
            String m_thumbnail = (String) map.get("m_thumbnail");
            String m_dynamic = (String) map.get("m_dynamic");
            map.put("m_thumbnail",m_thumbnail.replaceAll("\\\\","/"));
            map.put("m_dynamic",m_dynamic.replaceAll("\\\\","/"));
        }
        return data;
    }
}
