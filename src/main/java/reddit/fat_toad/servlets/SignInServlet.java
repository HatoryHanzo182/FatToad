package reddit.fat_toad.servlets;

import com.google.gson.Gson;
import com.google.inject.Singleton;
import reddit.fat_toad.db.DB;
import reddit.fat_toad.db.Models.UsersModels;
import reddit.fat_toad.services.hash.SHA256Hashing;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;

@Singleton
public class SignInServlet extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        req.setAttribute("ShowMenu", false);
        req.setAttribute("ShowFooter", true);
        req.setAttribute("page-body", "sign_in.jsp");
        req.getRequestDispatcher("WEB-INF/_layout.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        StringBuilder buffer = new StringBuilder();
        BufferedReader reader = req.getReader();
        String line;

        while ((line = reader.readLine()) != null)
            buffer.append(line);

        String data = buffer.toString();
        Gson gson = new Gson();
        UsersModels users = gson.fromJson(data, UsersModels.class);

        System.out.println("Email: " + users.GetEmail());
        System.out.println("Nickname: " + users.GetNickname());
        System.out.println("Password: " + users.GetPassword());
        System.out.println("Registration: " + users.GetRegistrationDate());
        System.out.println("LastActivityDate: " + users.GetLastActivityDate());
        System.out.println("AccountDeletionDate: " + users.GetAccountDeletionDate());

        DataHashing(users);

        System.out.println("\nHash: ");
        System.out.println("Password hash: " + users.GetPassword());

        DB.AddNewUser(users);
    }

    // <--====== Build connection sector. ======-->
    private void DataHashing(UsersModels users_data)
    {
        SHA256Hashing sha256 = new SHA256Hashing();

        users_data.SetPassword(sha256.HashString(users_data.GetPassword()));
    }
}