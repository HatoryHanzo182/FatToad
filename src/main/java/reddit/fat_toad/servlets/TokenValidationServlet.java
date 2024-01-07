package reddit.fat_toad.servlets;

import com.google.inject.Singleton;
import reddit.fat_toad.services.session.Sessions;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Singleton
public class TokenValidationServlet extends HttpServlet
{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        String token = req.getParameter("Id");

        System.out.println(token);

        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");

        if (NoticeToken(token))
            resp.getWriter().println("{\"status\": true}");
        else
            resp.getWriter().println("{\"status\": false}");
    }

    private boolean NoticeToken(String token)
    {
        Sessions sessions = new Sessions();

        return sessions.ConfirmAvailability(token);
    }
}
