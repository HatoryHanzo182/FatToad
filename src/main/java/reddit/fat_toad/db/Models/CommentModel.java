package reddit.fat_toad.db.Models;

import org.bson.types.ObjectId;

public class CommentModel
{
    private ObjectId _id;
    private String _sender;
    private String _sender_avatar;
    private String _date;
    private String _comment;
    private ObjectId _who_owns;

    public String GetIid() { return _id.toString(); }
    public String GetSender() { return _sender; }
    public String GetSenderAvatar() { return _sender_avatar; }
    public String GetDate() { return _date; }
    public String GetComment() { return _comment; }
    public String GetWhoOwns() { return _who_owns.toString(); }

    public void SetId(ObjectId id) { this._id = id; }
    public void SetSender(String sender) { this._sender = sender; }
    public void SetSenderAvatar(String sender_avatar) { this._sender_avatar = sender_avatar; }
    public void SetDate(String date) { this._date = date; }
    public void SetComment(String comment) { this._comment = comment; }
    public void SetWhoOwns(ObjectId who_owns) { this._who_owns = who_owns; }
}