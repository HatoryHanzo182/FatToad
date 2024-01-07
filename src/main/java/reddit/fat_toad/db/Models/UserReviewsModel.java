package reddit.fat_toad.db.Models;

import java.util.Date;

public class UserReviewsModel
{
    private String _owner_email;
    private String _message;
    private Date _departure_date;

    // <--====== Get, Set sector. ======-->
    public String GetOwnerEmail() { return _owner_email; }
    public String GetMessage() { return _message; }
    public Date GetDepartureDate() { return _departure_date; }

    public void SetOwnerEmail(String owner_email) { this._owner_email = owner_email; }
    public void SetMessage(String message) { this._message = message; }
    public void SetDepartureDate(Date departure_date) { this._departure_date = departure_date; }
}
