package com.eutwStudio.service.impl;

import com.eutwStudio.annotation.Log;
import com.eutwStudio.dao.OperLogMapper;
import com.eutwStudio.dao.RoleDao;
import com.eutwStudio.entity.*;
import com.eutwStudio.service.RoleService;
import com.eutwStudio.utils.ConstantVar;
import com.eutwStudio.utils.IPAddressUtil;
import com.eutwStudio.utils.PageUtil;
import org.apache.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.aspectj.lang.JoinPoint;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.*;

@Service
public class RoleServiceImpl implements RoleService {

    @Resource
    private RoleDao roleDao;

    private static final Logger LOG = Logger.getLogger(RoleServiceImpl.class);

    @Autowired
    private OperLogMapper operLogMapper;
    @Autowired
    private HttpServletRequest request;

    @Override
    public void insertLog(OperLog operLog) {
        operLogMapper.insertSelective(operLog);
    }

    @Override
    public void saveByJoinPoint(JoinPoint joinPoint, Exception e) {
        OperLog operLog = new OperLog();
        StringBuffer operEvent = new StringBuffer();

        try {
            String targetName = joinPoint.getTarget().getClass().getName(); // 请求类名称
            String methodName = joinPoint.getSignature().getName(); // 请求方法
            Object[] arguments = joinPoint.getArgs();
            Class<?> targetClass = null;
            targetClass = Class.forName(targetName);

            Method[] methods = targetClass.getMethods();
            for (Method method : methods) {
                if (method.getName().equals(methodName)) {
                    Class[] clazzs = method.getParameterTypes();
                    if (clazzs.length == arguments.length) {
                        if(method.getAnnotation(Log.class) != null){ // 如果包含注解@log()
                            operEvent.append(method.getAnnotation(Log.class).value());
                            operEvent.append("。");
                            break;
                        }
                    }
                }
            }

            if(joinPoint.getArgs().length > 0){
                operEvent.append("该方法实际入参为：");
                for (int i = 0; i < joinPoint.getArgs().length; i++) {
                    operEvent.append(joinPoint.getArgs()[i]);
                    operEvent.append(",");
                }
                operEvent.deleteCharAt(operEvent.length()-1); //删除最后一个 ","
                operEvent.append("。");
            }
            if(e != null){
                operEvent.append("Exception类型为：");
                operEvent.append(e.getClass());
                operLog.setLogDesc("具体Exception信息为："+ createExceptionDetail(e));
            }

            Subject curUser = SecurityUtils.getSubject();
            if (request.getRequestURI().contains("/logout")
                    && "logout".equalsIgnoreCase(joinPoint.getSignature().getName())) {
                // 退出日志
//                String userId = (String) arguments[0];
//                operLog.setUserId(userId);
            }
            if(curUser.getPrincipal()!=null){
                //从session中获取当前登录用户的User对象
                User loginUser = (User) curUser.getSession().getAttribute(ConstantVar.LOGIN_USER);
                operLog.setUserName(loginUser.getUserName());
                operLog.setUserId(loginUser.getId());
            }
            operLog.setClientIp(IPAddressUtil.getIpAddress(request));
        }catch (ClassNotFoundException e1) {
            e1.printStackTrace();
            LOG.error("实例化失败：ClassNotFoundException");
        }catch (IOException e2) {
            e2.printStackTrace();
            operLog.setClientIp("未知IP：IOException");
        }catch (Exception e3){
            e3.printStackTrace();
        }

        operLog.setReqUrl(request.getRequestURI());
        operLog.setMethod(joinPoint.getSignature().getDeclaringTypeName()+","+joinPoint.getSignature().getName());
        operLog.setOperEvent((operEvent.toString()).length()>255?(operEvent.toString()).substring(0,255):operEvent.toString());
        if(e != null){
            operLog.setOperStatus(ConstantVar.OPER_LOG_STATUS.OPER_LOG_STATUS_FAIL_4ENUM.getValue());
        }else{
            operLog.setOperStatus(ConstantVar.OPER_LOG_STATUS.OPER_LOG_STATUS_SUCCESS_4ENUM.getValue());
        }
        operLogMapper.insertSelective(operLog);
    }

    /**
     * 异常数组转成字符串
     */
    private String createExceptionDetail(Exception e) {
        e.printStackTrace();
        StackTraceElement[] stackTraceArray = e.getStackTrace();
        StringBuilder detail = new StringBuilder();
        for (int i = 0; i < stackTraceArray.length; i++) {
            //255位，此处是考虑数据库相应字段的大小限制
            if((detail.toString()+stackTraceArray[i]).length() > 255){
                return detail.toString();
            }
            detail.append(stackTraceArray[i] + "\r\n");
        }
        return detail.toString();
    }

    @Override
    public List<Role> queryList(PageUtil page) throws Exception {
        Map<String, Object> data = new HashMap<>();
        data.put("start", (page.getCurrentIndex() - 1) * page.getPageSize());
        data.put("end", page.getPageSize());
        page.setTotalSize(roleDao.queryTotalCount());

        return roleDao.queryList(data);
    }

    @Override
    public void add(Role role) throws Exception {
        roleDao.add(role);
    }

    @Override
    public Role query(String roleId) throws Exception {
        return roleDao.query(roleId);
    }

    @Override
    public void update(Role role) throws Exception {
        roleDao.update(role);
    }
    @Override
    public void deletePermission(String roleId) throws Exception {
        roleDao.deletePermission(roleId);
    }

    @Override
    public void updateRolePermissions(String hasPers, String updatePers, String roleId) throws Exception {
        List<String> oldPermissions = Arrays.asList(hasPers.split(","));
        List<String> newPermissions = Arrays.asList(updatePers.split(","));
        List<String> shouldDelete = shouldDeletePers(oldPermissions, newPermissions);
        List<String> shouldInsert = shouldInsertPers(oldPermissions, newPermissions);

        if (shouldDelete.size() != 0) {
            roleDao.deleteRolePermissions(shouldDelete, roleId);
        }
        if (shouldInsert.size() != 0 && !"".equals(shouldInsert.get(0))) {
            roleDao.addRolePermissions(shouldInsert, roleId);
        }
    }

    @Override
    public void updateAvailable(Role role) throws Exception {
        roleDao.updateAvailable(role);
    }

    @Override
    public List<Map<String, String>> queryUserRoleList(PageUtil page, String name) throws Exception {
        Map<String, Object> data = new HashMap<>();
        data.put("start", (page.getCurrentIndex() - 1) * page.getPageSize());
        data.put("end", page.getPageSize());
        data.put("name", "%" + name + "%");
        page.setTotalSize(roleDao.queryUserRoleTotalCount("%" + name + "%"));

        return roleDao.queryUserRoleList(data);
    }

    @Override
    public List<Role> queryAll() throws Exception {
        return roleDao.queryAll();
    }

    private List<String> shouldInsertPers(List<String> oldPermissions, List<String> newPermissions) {
        List<String> shouldInsert = new ArrayList<>();
        for (String permission : newPermissions) {
            if (!oldPermissions.contains(permission)) {
                shouldInsert.add(permission);
            }
        }

        return shouldInsert;
    }

    @Override
    public void updateUserRole(ActiveUser user) throws Exception {
        roleDao.updateUserRole(user);
    }


    private List<String> shouldDeletePers(List<String> oldPermissions, List<String> newPermissions) {
        List<String> shouldDelete = new ArrayList<>();
        for (String permission : oldPermissions) {
            if (!newPermissions.contains(permission)) {
                shouldDelete.add(permission);
            }
        }

        return shouldDelete;
    }

    @Override
    public Map<String, Object> viewPermission(String roleId) {
        Map<String, Object> result = new HashMap<>();
        Map<String, Object> nodes = new HashMap<>();
        List<Permission> permissions = roleDao.queryAllPermission();
        List<String> hasPermissions = roleDao.queryPermissionByRoleId(roleId);

        changePermissionState(nodes, permissions, hasPermissions);

        Collection<Object> topMenus = removeMapKey(nodes);
        result.put("permissions", topMenus);
        result.put("hasPermissions", hasPermissions);

        return result;
    }

    private Collection<Object> removeMapKey(Map<String, Object> nodes) {
        Collection<Object> topMenus = nodes.values();
        Iterator<Object> iterator = topMenus.iterator();
        while (iterator.hasNext()) {
            Map<String, Object> next = (Map<String, Object>) iterator.next();
            Collection<Object> sideMenus = ((Map<String, Object>) next.get("children")).values();
            next.put("children", sideMenus);
            Iterator<Object> iterator1 = sideMenus.iterator();
            while (iterator1.hasNext()) {
                Map<String, Object> next1 = (Map<String, Object>) iterator1.next();
                Collection<Object> permission = ((Map<String, Object>) next1.get("children")).values();
                next1.put("children", permission);
            }
        }

        return topMenus;
    }

    private void changePermissionState(Map<String, Object> nodes, List<Permission> permissions, List<String> hasPermissions) {
        for (Permission permission : permissions) {
            String[] deep = permission.getParentIds().split("/");
            Map<String, Object> node = new HashMap<>();
            node.put("id", permission.getId());
            node.put("name", permission.getName());

            if (hasPermissions.contains(permission.getId().toString())) { //判断是否有该权限
                node.put("has", true);
            }
            if (deep.length == 2) { // 一级菜单
                node.put("children", new HashMap<String, Map<String, String>>());
                nodes.put(permission.getId() + "", node);
            } else if (deep.length == 3) {//二级菜单
                node.put("children", new HashMap<String, Map<String, String>>());
                ((Map<String, Object>) ((Map<String, Object>) nodes.get(deep[2])).get("children")).put(permission.getId() + "", node);
            } else if (deep.length == 4) {//权限
                Map<String, Object> children = (Map<String, Object>) ((Map<String, Object>) ((Map<String, Object>) nodes.get(deep[2])).get("children")).get(deep[3]);
                ((Map<String, Object>) children.get("children")).put(permission.getId() + "", node);
            }
        }
    }
}
