package reddit.fat_toad.db.Models;

import java.util.Date;

/**
 *  The UserReviewsModel class represents the data model for user reviews.
 *  It contains three fields: _owner_email for storing the email owner of the review,
 *  _message for the text of the review itself, and _departure_date for the date the review was sent.
 *  The GetOwnerEmail, GetMessage and GetDepartureDate methods are intended to obtain the values
 *  of the corresponding fields, and the SetOwnerEmail, SetMessage and SetDepartureDate methods
 *  are intended to set the values of these fields.
**/

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
