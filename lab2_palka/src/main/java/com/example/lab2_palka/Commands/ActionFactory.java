package com.example.lab2_palka.Commands;

import javax.servlet.http.HttpServletRequest;
import com.example.lab2_palka.Commands.ActionCommand;
import com.example.lab2_palka.Commands.CommandEnum;
import com.example.lab2_palka.Commands.EmptyCommand;
import com.example.lab2_palka.Resource.MessageManager;

public class ActionFactory {
    public ActionCommand defineCommand(HttpServletRequest request) {
        ActionCommand current = (ActionCommand) new EmptyCommand();
// извлечение имени команды из запроса
        String action = request.getParameter("command");
        if (action == null || action.isEmpty()) {
// если команда не задана в текущем запросе
            return current;
        }
// получение объекта, соответствующего команде
        try {
            CommandEnum currentEnum = CommandEnum.valueOf(action.toUpperCase());
            current = currentEnum.getCurrentCommand();
        } catch (IllegalArgumentException e) {
            request.setAttribute("wrongAction", action
                    + MessageManager.getProperty("message.wrongaction"));
        }
        return current;
    }
}