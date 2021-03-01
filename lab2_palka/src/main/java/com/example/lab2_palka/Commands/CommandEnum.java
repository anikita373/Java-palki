package com.example.lab2_palka.Commands;
import com.example.lab2_palka.Commands.LoginCommand;

public enum CommandEnum {
    LOGIN {
        {
            this.command = (ActionCommand) new LoginCommand();
        }
    },
    LOGOUT {
        {
            this.command = (ActionCommand) new LogoutCommand();
        }
    };
    ActionCommand command;
    public ActionCommand getCurrentCommand() {
        return command;
    }
}