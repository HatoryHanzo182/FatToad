package reddit.fat_toad.servlets;

import com.google.inject.Singleton;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import com.mongodb.ConnectionString;
import com.mongodb.MongoClientSettings;
import com.mongodb.ServerApi;
import com.mongodb.ServerApiVersion;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.FindIterable;
import org.bson.Document;

@Singleton
public class HomeServlet extends HttpServlet
{
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        String connection_string = "mongodb+srv://FAT_TOAD_ADMIN:hkHj0miSxIog4Lop@fattoadcluster.masziuv.mongodb.net/?retryWrites=true&w=majority";
        ServerApi server_api = ServerApi.builder().version(ServerApiVersion.V1).build();
        MongoClientSettings settings = MongoClientSettings.builder().applyConnectionString(new ConnectionString(connection_string))
                .serverApi(server_api).build();

        try (MongoClient mongo_client = MongoClients.create(settings))
        {
            try
            {
                MongoDatabase database = mongo_client.getDatabase("FAT_TOAD_DATA");
                MongoCollection<Document> collection = database.getCollection("LatestNews");
                FindIterable<Document> documents = collection.find();

                req.setAttribute("LatestNewsData", documents);
            }
            catch (Exception e) { e.printStackTrace(); }

            req.setAttribute("ShowMenu", true);
            req.setAttribute("ShowFooter", true);
            req.setAttribute("page-body", "home.jsp");
            req.getRequestDispatcher("WEB-INF/_layout.jsp").forward(req, resp);
        }
    }
}
