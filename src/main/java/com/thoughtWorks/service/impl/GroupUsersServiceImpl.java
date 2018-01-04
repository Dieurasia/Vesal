package com.thoughtWorks.service.impl;

import com.thoughtWorks.common.ServerResponse;
import com.thoughtWorks.dao.GroupUsersDao;
import com.thoughtWorks.service.GroupUsersService;
import com.thoughtWorks.util.MD5Util;
import com.thoughtWorks.util.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.*;

@Service
public class GroupUsersServiceImpl implements GroupUsersService {

    @Autowired
    GroupUsersDao groupUsersDao;

    @Override
    public ServerResponse<String> addAccount(Integer userNumber, String usernamePrefix, HttpServletRequest request, String userName) {
        Map<String, Object> checkInfo = new HashMap<>();
        checkInfo.put("parentAccount", userName);
        checkInfo.put("prefix", usernamePrefix);
        int prefixNameIsRepeated = groupUsersDao.checkPrefix(checkInfo);
        if (prefixNameIsRepeated != 0) {
            return ServerResponse.createByErrorMessage("该前缀名以存在，请换一个");
        }
        List<Map<String, String>> userInfo = new ArrayList<>();
        for (int i = 0; i < userNumber; i++) {
            Map<String, String> data = new HashMap<>();
            String name = usernamePrefix + ((Math.random() * 9 + 1) * 100000);

            String pwd = (Math.random() * 9 + 1) * 100000 + "";

            data.put("name", name.split("\\.")[0] + i);
            data.put("pwd", MD5Util.MD5EncodeUtf8(pwd.split("\\.")[0] + i));
            data.put("pwd2", pwd.split("\\.")[0] + i);
            data.put("groupUserPrefix", usernamePrefix);
            data.put("parentAccount", userName);

            userInfo.add(data);
        }

        groupUsersDao.addAccount(userInfo);

        return ServerResponse.createBySuccess();
    }

    @Override
    public List<Map<String, Object>> selectAccount(PageUtil pageUtil, String userName) {
        Map<String, Object> data = new HashMap<>();
        data.put("start", (pageUtil.getCurrentIndex() - 1) * pageUtil.getPageSize());
        data.put("size", pageUtil.getPageSize());
        data.put("parentAccount", userName);

        pageUtil.setTotalSize(groupUsersDao.selectAccountTotalSize(userName));

        return groupUsersDao.selectAccount(data);
    }

    @Override
    public ServerResponse<String> deleteAccount(Integer id) {
        try {
            groupUsersDao.deleteAccount(id);

            return ServerResponse.createBySuccess();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return ServerResponse.createByError();
    }

}
