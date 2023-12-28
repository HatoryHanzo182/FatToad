package reddit.fat_toad.servlets;

import com.google.inject.Singleton;
import reddit.fat_toad.db.DB;
import javax.servlet.ServletException;
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
        System.out.println("Request for /home with culture: " + req.getAttribute("culture"));
        req.setAttribute("LatestNewsData", DB.GetLastNewsLine());
        req.setAttribute("ShowMenu", true);
        req.setAttribute("ShowFooter", true);
        req.setAttribute("page-body", "home.jsp");
        req.getRequestDispatcher("WEB-INF/_layout.jsp").forward(req, resp);
    }
}