package com.eutwStudio.service;

import com.eutwStudio.entity.ActiveUser;
import com.eutwStudio.entity.OperLog;
import com.eutwStudio.entity.Role;
import com.eutwStudio.utils.PageUtil;
import org.aspectj.lang.JoinPoint;

import java.util.List;
import java.util.Map;

public interface RoleService {

    void insertLog(OperLog log); // 插入日志

    void saveByJoinPoint(JoinPoint joinPoint, Exception e);

    List<Role> queryList(PageUtil page) throws Exception;

    void add(Role role) throws Exception;

    Map<String, Object> viewPermission(String roleId) throws Exception;

    void deletePermission(String roleId) throws Exception;

    Role query(String roleId) throws Exception;

    void update(Role role) throws Exception;

    void updateRolePermissions(String hasPers, String updatePers, String roleId) throws Exception;

    void updateAvailable(Role role) throws Exception;

    List<Map<String, String>> queryUserRoleList(PageUtil page, String name) throws Exception;

    List<Role> queryAll() throws Exception;

    void updateUserRole(ActiveUser user) throws Exception;

}
