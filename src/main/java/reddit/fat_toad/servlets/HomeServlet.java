package reddit.fat_toad.servlets;

import com.google.inject.Singleton;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Singleton
public class HomeServlet extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        req.setAttribute("page-body", "home.jsp");
        req.setAttribute("ShowMenuAndFooter", true);
        req.getRequestDispatcher("WEB-INF/_layout.jsp").forward(req, resp);
    }
}