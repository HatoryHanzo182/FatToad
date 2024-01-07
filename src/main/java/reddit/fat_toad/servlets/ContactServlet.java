package reddit.fat_toad.servlets;

import com.google.inject.Singleton;
import reddit.fat_toad.db.DB;
import reddit.fat_toad.services.session.Sessions;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;

@Singleton
public class ContactServlet extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        req.setAttribute("LatestNewsData", DB.GetLastNewsLine());
        req.setAttribute("ShowMenu", true);
        req.setAttribute("ShowFooter", true);
        req.setAttribute("page-body", "contact.jsp");
        req.getRequestDispatcher("/WEB-INF/_layout.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        BufferedReader reader = req.getReader();
        StringBuilder stringBuilder = new StringBuilder();
        String line;

        while ((line = reader.readLine()) != null)
            stringBuilder.append(line);

        String message = stringBuilder.toString();
        String token = req.getHeader("TOKEN");

        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");

        if (token == null)
            resp.getWriter().println("{\"message\": \"You cannot send us a message as a guest.\nTo get started you need to log in.\"}");
        else
        {
            Sessions sessions = new Sessions();

            String owner_message = sessions.GetOwnerByToken(token);

            if(owner_message == null)
                resp.getWriter().println("{\"message\": \"🙁 We have not found evidence that you are currently logged in. Log in to get started.\"}");
            else
            {
                resp.getWriter().println("{\"message\": \"🐸 Thank you for your feedback, we will take a look at it and respond to you by email as soon as possible.\"}");
            }
        }

    }
}