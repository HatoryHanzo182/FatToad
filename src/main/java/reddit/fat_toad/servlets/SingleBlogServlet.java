package reddit.fat_toad.servlets;

import com.google.inject.Singleton;
import reddit.fat_toad.db.DB;
import reddit.fat_toad.db.Models.BlogsModel;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

@Singleton
public class SingleBlogServlet extends HttpServlet
{
    private BlogsModel _this_article;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        String blog_id = req.getParameter("Id");

        if (ViewBlog(blog_id))
        {
            req.setAttribute("BlogsData", _this_article);
            req.setAttribute("BlogArticle", GetBlogArticle("articles/" + _this_article.GetBlogArticle()));
        }

        req.setAttribute("LatestNewsData", DB.GetLastNewsLine());
        req.setAttribute("ShowMenu", true);
        req.setAttribute("ShowFooter", true);
        req.setAttribute("page-body", "single_blog.jsp");
        req.getRequestDispatcher("/WEB-INF/_layout.jsp").forward(req, resp);
    }

    private boolean ViewBlog(String blog_id)
    {
        for (BlogsModel blog : DB.GetBlogs())
        {
            if (blog_id.equals(blog.GetId()))
            {
                _this_article = blog;
                return true;
            }
        }
        return false;
    }

    private String GetBlogArticle(String id)
    {
        InputStream inputStream = getClass().getClassLoader().getResourceAsStream(id);

        if (inputStream != null)
        {
            try (BufferedReader reader = new BufferedReader(new InputStreamReader(inputStream)))
            {
                StringBuilder content = new StringBuilder();
                String line;

                while ((line = reader.readLine()) != null)
                    content.append(line).append("\n");

                return content.toString();
            }
            catch (IOException e) { throw new RuntimeException(e); }
        }
        return "NULL";
    }
}
