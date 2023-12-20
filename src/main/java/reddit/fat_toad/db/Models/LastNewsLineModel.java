package reddit.fat_toad.db.models;

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