package reddit.fat_toad.servlets;

import com.google.inject.Singleton;
import reddit.fat_toad.db.DB;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Singleton
public class SingleBlogServlet extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        String blogId = req.getParameter("blogId");

        System.out.print("ID: " + blogId);

        req.setAttribute("LatestNewsData", DB.GetLastNewsLine());
        req.setAttribute("ShowMenu", true);
        req.setAttribute("ShowFooter", true);
        req.setAttribute("page-body", "single_blog.jsp");
        req.getRequestDispatcher("/WEB-INF/_layout.jsp").forward(req, resp);
    }
}
