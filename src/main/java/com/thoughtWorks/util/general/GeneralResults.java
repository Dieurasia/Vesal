package com.thoughtWorks.util.general;

/**
 * @author 马欢欢
 * @date 18-1-10
 * 前端页面返回值
 */
public class GeneralResults {
    private Object data;
    private String msg = "";
    private boolean results;

    /**
     * 成功返回信息
     * @param data 返回的数据
     * @param msg 返回的提示信息
     * @return 返回封装对象
     */
    public static GeneralResults success(Object data, String msg) {
        GeneralResults generalResults = new GeneralResults();
        generalResults.data = data;
        generalResults.msg = msg;
        generalResults.results = true;
        return generalResults;
    }

    /**
     * 成功返回信息
     * @param data 返回的值
     * @return 返回封装对象
     */
    public static GeneralResults success(Object data) {
        GeneralResults generalResults = new GeneralResults();
        generalResults.data = data;
        generalResults.results = true;
        return generalResults;
    }

    /**
     * 成功返回信息
     * @param msg 返回提示信息
     * @return 返回封装对象
     */
    public static GeneralResults success(String msg) {
        GeneralResults generalResults = new GeneralResults();
        generalResults.msg = msg;
        generalResults.results = true;
        return generalResults;
    }

    /**
     * 成功返回信息
     * @return 返回封装对象
     */
    public static GeneralResults success() {
        GeneralResults generalResults = new GeneralResults();
        generalResults.results = true;
        return generalResults;
    }

    /**
     * 失败返回信息
     * @param msg 返回提示信息
     * @return 返回封装对象
     */
    public static GeneralResults failure(String msg) {
        GeneralResults generalResults = new GeneralResults();
        generalResults.msg = msg;
        generalResults.results = false;
        return generalResults;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public boolean isResults() {
        return results;
    }

    public void setResults(boolean results) {
        this.results = results;
    }

}
