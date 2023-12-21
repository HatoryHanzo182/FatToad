package reddit.fat_toad.servlets;

import com.google.inject.Singleton;
import reddit.fat_toad.db.DB;
import reddit.fat_toad.db.Models.UsersModel;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@Singleton
public class SignInServlet extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        req.setAttribute("UsersData", DB.GetUsers());
        req.setAttribute("ShowMenu", false);
        req.setAttribute("ShowFooter", true);
        req.setAttribute("page-body", "sign_in.jsp");

        ArrayList<UsersModel> users = DB.GetUsers();
        System.out.println("Number of users: " + users.size());

        for (UsersModel user_i : users) {
            System.out.print(user_i.GetEmail() + " " + user_i.GetNickname() + " " + user_i.GetPassword());
        }

        req.getRequestDispatcher("WEB-INF/_layout.jsp").forward(req, resp);
    }
}