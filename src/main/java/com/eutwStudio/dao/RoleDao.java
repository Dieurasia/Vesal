package com.eutwStudio.dao;

import com.eutwStudio.entity.ActiveUser;
import com.eutwStudio.entity.Permission;
import com.eutwStudio.entity.Role;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface RoleDao {
    List<Role> queryList(Map<String, Object> page);

    Long queryTotalCount();

    void add(Role role);

    List<Permission> queryAllPermission();

    List<String> queryPermissionByRoleId(String roleId);

    Role query(String roleId);

    void update(Role role);

    void deletePermission(String roleId);

    void deleteRolePermissions(@Param("shouldDelete") List<String> shouldDelete, @Param("roleId") String roleId);

    void addRolePermissions(@Param("shouldInsert") List<String> shouldInsert, @Param("roleId") String roleId);

    void updateAvailable(Role role);

    long queryUserRoleTotalCount(String name);

    List<Map<String,String>> queryUserRoleList(Map<String, Object> data);

    List<Role> queryAll();

    void updateUserRole(ActiveUser user);

    List<Permission> queryFirstMenus();
}
