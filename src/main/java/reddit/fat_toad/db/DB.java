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
import reddit.fat_toad.db.Models.UsersModel;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Date;
import java.util.Objects;

@Singleton
public class DB
{
    private static String _connection_string = "";
    private static MongoClientSettings _settings;
    private static String _base_name = "FAT_TOAD_DATA";
    private static ArrayList<LastNewsLineModel> _last_news_line;
    private static ArrayList<UsersModel> _users;


    public DB()
    {
        SetLatestNews();
        SetUsers();
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

    // <--====== Filling in data sector. ======-->
    private void SetLatestNews()
    {
        BuildConnection();

        ArrayList<LastNewsLineModel> last_news_line = new ArrayList<>();

        try (MongoClient mongo_client = MongoClients.create(_settings))
        {
            try
            {
                MongoDatabase database = mongo_client.getDatabase(_base_name);
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
        _last_news_line = last_news_line;
    }

    private void SetUsers()
    {
        BuildConnection();

        ArrayList<UsersModel> users = new ArrayList<>();

        try (MongoClient mongo_client = MongoClients.create(_settings))
        {
            try
            {
                MongoDatabase database = mongo_client.getDatabase(_base_name);
                MongoCollection<Document> collection = database.getCollection("Users");
                FindIterable<Document> document_users = collection.find();

                for (Document document : document_users)
                {
                    UsersModel user_i = new UsersModel();

                    user_i.SetEmail((String) document.get("email"));
                    user_i.SetNickname((String) document.get("nickname"));
                    user_i.SetPassword((String) document.get("password"));
                    user_i.SetRegistrationDate((Date) document.getDate("registration_date"));
                    user_i.SetLastActivityDate((Date) document.getDate("last_activity_date"));
                    user_i.SetAccountDeletionDate((Date) document.getDate("account_deletion_date"));

                    users.add(user_i);
                }
            }
            catch (Exception ex) { ex.printStackTrace(); }
        }
        _users = users;
    }


    // <--====== Receiving data from the client sector. ======-->
    public static void AddNewUser(UsersModel new_user)
    {
        try (MongoClient mongo_client = MongoClients.create(_settings))
        {
            MongoDatabase database = mongo_client.getDatabase(_base_name);
            MongoCollection<Document> collection = database.getCollection("Users");
            Document new_user_document = new Document()
                    .append("email", new_user.GetEmail())
                    .append("nickname", new_user.GetNickname())
                    .append("password", new_user.GetPassword())
                    .append("registration_date", new_user.GetRegistrationDate())
                    .append("last_activity_date", new_user.GetLastActivityDate())
                    .append("account_deletion_date", new_user.GetAccountDeletionDate());

            _users.add(new_user);
            collection.insertOne(new_user_document);
        }
        catch (Exception ex) { ex.printStackTrace(); }
    }

    // <--====== Issuing data to the client sector. ======-->
    public static ArrayList<LastNewsLineModel> GetLastNewsLine() { return _last_news_line; }
    public static ArrayList<UsersModel> GetUsers() { return _users; }
}