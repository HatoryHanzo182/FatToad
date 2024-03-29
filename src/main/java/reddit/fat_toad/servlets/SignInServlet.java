package reddit.fat_toad.servlets;

import com.google.gson.Gson;
import com.google.inject.Singleton;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.security.Keys;
import reddit.fat_toad.db.DB;
import reddit.fat_toad.db.Models.UsersModel;
import reddit.fat_toad.services.hash.SHA256Hashing;
import reddit.fat_toad.services.session.Sessions;
import javax.crypto.SecretKey;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.util.ArrayList;

@Singleton
public class SignInServlet extends HttpServlet
{
    SecretKey _secret_key = Keys.secretKeyFor(SignatureAlgorithm.HS256);

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        req.setAttribute("UsersData", DB.GetUsers());
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
        UsersModel user = gson.fromJson(data, UsersModel.class);

        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");

        if(FindUserByEmail(user.GetEmail()) != null)
        {
            SHA256Hashing hasher = new SHA256Hashing();
            String hashed_password = hasher.HashString(user.GetPassword());

            if (hashed_password.equals(FindUserByEmail(user.GetEmail()).GetPassword()))
            {
                String token = CreateToken(user.GetEmail());
                Sessions new_session = new Sessions();

                new_session.AddSession(token, user.GetEmail());

                resp.getWriter().println("{\"token\": \"" + token + "\", \"message\": \"🍕 Welcome!!\"}");
            }
            else
                resp.getWriter().println("{\"message\": \"⁉ Incorrect password.\"}");
        }
        else
            resp.getWriter().println("{\"message\": \"😫 Sorry, but we did not find such a user in our database, please check if you entered your email correctly\"}");
    }

    private UsersModel FindUserByEmail(String email)  // Method for searching for a user by email.
    {
        ArrayList<UsersModel> users = DB.GetUsers();

        for (UsersModel user : users)
        {
            if (user.GetEmail().equals(email))
                return user;
        }

        return null;
    }

    // <!--=== Tokens sector. ===--!>
    private String CreateToken(String user_email)
    {
        try
        {
            return Jwts.builder().setSubject(user_email).signWith(SignatureAlgorithm.HS256, _secret_key).compact();
        }
        catch (Exception ex)
        {
            System.out.print("Error creating token: " + ex);
            throw ex;
        }
    }
}