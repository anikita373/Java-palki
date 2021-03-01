package com.example.lab2_palka.Commands;
import javax.servlet.http.HttpServletRequest;
import com.example.lab2_palka.Resource.ConfigurationManager;

public class LogoutCommand  implements ActionCommand {
    @Override
    public String execute(HttpServletRequest request) {
        String page = ConfigurationManager.getProperty("path.page.index");
// уничтожение сессии
        request.getSession().invalidate();
        return page;
    }
}
