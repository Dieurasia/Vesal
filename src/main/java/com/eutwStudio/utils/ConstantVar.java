package com.eutwStudio.utils;

public class ConstantVar {
    public static final String LOGIN_USER = "loginUser";

    public enum OPER_LOG_STATUS {
        OPER_LOG_STATUS_SUCCESS_4ENUM(1),
        OPER_LOG_STATUS_FAIL_4ENUM(2);

        private int value;

        private OPER_LOG_STATUS(int value){
            this.value = value;
        }

        public int getValue() {
            return value;
        }
    }

    public static String getLoginUser() {
        return LOGIN_USER;
    }
}
