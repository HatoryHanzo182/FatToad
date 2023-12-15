package reddit.fat_toad.db;

import com.google.inject.Singleton;
import com.mongodb.ConnectionString;
import com.mongodb.MongoClientSettings;
import com.mongodb.ServerApi;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.mongodb.ServerApiVersion;
import com.mongodb.client.*;
import org.bson.Document;
import reddit.fat_toad.db.Models.LastNewsLineModel;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Objects;

@Singleton
public class DB_Connect
{
    private static String _connection_string = "";
    private static MongoClientSettings _settings;
    private static ArrayList<LastNewsLineModel> _last_news_line;

    public DB_Connect()
    {
        BuildConnection();

        _last_news_line = GetLatestNews();
    }

    // <--====== Build connection sector. ======-->
    private void BuildConnection()
    {
        if (CheckConnection())
        {
            ParseJsonConnectionsToTheDatabase();

            ServerApi _server_api = ServerApi.builder().version(ServerApiVersion.V1).build();
            _settings = MongoClientSettings.builder().applyConnectionString(new ConnectionString(_connection_string)).serverApi(_server_api).build();
        }
    }

    private Boolean CheckConnection()
    {
        if (_connection_string.isEmpty())
            return true;
        return false;
    }

    private void ParseJsonConnectionsToTheDatabase()
    {
        try (Reader reader = new InputStreamReader(Objects.requireNonNull(this.getClass().getClassLoader().getResourceAsStream("db_config.json"))))
        {
            JsonObject json_object = JsonParser.parseReader(reader).getAsJsonObject();

            _connection_string = json_object.getAsJsonObject("DataProviders").getAsJsonObject("MongoDB").get("uri").getAsString();
        }
        catch (Exception ex) { ex.printStackTrace(); }
    }

    // <--====== Data distribution block from the database sector. ======-->
    public ArrayList<LastNewsLineModel> GetLatestNews()
    {
        ArrayList<LastNewsLineModel> last_news_line = new ArrayList<>();

        try (MongoClient mongo_client = MongoClients.create(_settings))
        {
            try
            {
                MongoDatabase database = mongo_client.getDatabase("FAT_TOAD_DATA");
                MongoCollection<Document> collection = database.getCollection("LatestNews");
                FindIterable<Document> document_LatestNews = collection.find();

                for (Document document : document_LatestNews)
                {
                    LastNewsLineModel last_news_line_i = new LastNewsLineModel();

                    last_news_line_i.SetStatus(document.getString("status"));
                    last_news_line_i.SetNews(document.getString("news"));

                    last_news_line.add(last_news_line_i);
                }
            }
            catch (Exception ex) { ex.printStackTrace(); }
        }
        return last_news_line;
    }
}