package reddit.fat_toad.db.Models;

import com.google.gson.annotations.SerializedName;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Objects;

public class UsersModel
{
    @SerializedName("email")
    private String _email;
    @SerializedName("nickname")
    private String _nickname;
    @SerializedName("password")
    private String _password;
    @SerializedName("registration_date")
    private Date _registration_date;
    @SerializedName("last_activity_date")
    private Date _last_activity_date;
    @SerializedName("account_deletion_date")
    private Date _account_deletion_date;

    // <--====== Get, Set sector. ======-->
    public String GetEmail() { return _email; }
    public String GetNickname() { return _nickname; }
    public String GetPassword() { return _password; }
    public Date GetRegistrationDate() { return _registration_date; }
    public Date GetLastActivityDate() { return _last_activity_date; }
    public Date GetAccountDeletionDate() { return _account_deletion_date; }

    public void SetEmail(String email) { this._email = email; }
    public void SetNickname(String nickname) { this._nickname = nickname; }
    public void SetPassword(String password) { this._password = password; }
    public void SetRegistrationDate(String registration_date)
    {
        try
        {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSX");
            String formattedDate = sdf.format(registration_date);

            this._registration_date = sdf.parse(formattedDate);
        }
        catch (ParseException ex) { ex.printStackTrace(); }
    }
    public void SetLastActivityDate(String last_activity_date)
    {
        if (!Objects.equals(last_activity_date, "null"))
        {
            try
            {
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSX");
                this._last_activity_date = sdf.parse(last_activity_date);
            }
            catch (ParseException | NumberFormatException ex) { ex.printStackTrace(); }
        }
    }
    public void SetAccountDeletionDate(String account_deletion_date)
    {
        if (!Objects.equals(account_deletion_date, "null"))
        {
            try
            {
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSX");
                this._account_deletion_date = sdf.parse(account_deletion_date);
            }
            catch (ParseException | NumberFormatException ex) { ex.printStackTrace(); }
        }
    }
}