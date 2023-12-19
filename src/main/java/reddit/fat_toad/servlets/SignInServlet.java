package reddit.fat_toad.servlets;

import com.google.gson.Gson;
import com.google.inject.Singleton;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.Console;
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
/*        StringBuilder buffer = new StringBuilder();
        BufferedReader reader = req.getReader();
        String line;

        while ((line = reader.readLine()) != null) {
            buffer.append(line);
        }

        String data = buffer.toString();
        System.out.println("Received data: " + data);

        // Теперь вы можете использовать библиотеку JSON (например, Gson) для преобразования строки JSON в объект
        // Пример с использованием Gson:
        Gson gson = new Gson();
        YourClassType yourObject = gson.fromJson(data, YourClassType.class);

        String email = yourObject.getEmail();
        String nickname = yourObject.getNickname();
        String password = yourObject.getPassword();

        System.out.println("Email: " + email);
        System.out.println("Nickname: " + nickname);
        System.out.println("Password: " + password);*/
    }
}