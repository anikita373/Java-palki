package com.example.lab2_palka.Commands;

import javax.servlet.http.HttpServletRequest;

public interface ActionCommand {
    default String execute(HttpServletRequest request) {
        return null;
    }
}
