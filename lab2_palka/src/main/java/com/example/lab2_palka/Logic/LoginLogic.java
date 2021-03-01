package com.example.lab2_palka.Logic;

public class LoginLogic {
    private final static String USER_LOGIN = "user";
    private final static String USER_PASS = "123";

    public static boolean checkLogin(String enterLogin, String enterPass) {
        return USER_LOGIN.equals(enterLogin) && USER_PASS.equals(enterPass);
    }
}
