package reddit.fat_toad.db.Models;

/**
 *  LastNewsLineModel represents the data model for displaying the latest news feed.
 *  It contains two fields: _status, which is intended to store the status, and _news,
 *  where the text of the latest news is stored.
**/

public class LastNewsLineModel
{
    private String _status;
    private String _news;

    // <--====== Get, Set sector. ======-->
    public void SetStatus(String _status) { this._status = _status; }
    public void SetNews(String _news) { this._news = _news; }

    public String GetStatus() { return _status; }
    public String GetNews() { return _news; }
}