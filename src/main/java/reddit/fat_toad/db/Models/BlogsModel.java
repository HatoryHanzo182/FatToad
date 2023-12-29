package reddit.fat_toad.db.Models;

import org.bson.types.ObjectId;

public class BlogsModel
{
    private ObjectId _id;
    private String _page_top_bg;
    private String _title;
    private String _small_text_title;
    private String _recent_game;
    private String _blog_title;
    private String _blog_article;
    private String _status;

    // <--====== Get, Set sector. ======-->
    public String GetId() { return _id.toString(); }
    public String GetPageTopBg() { return _page_top_bg; }
    public String GetTitle() { return _title; }
    public String GetSmallTextTitle() { return _small_text_title; }
    public String GetRecentGame() { return _recent_game; }
    public String GetBlogTitle() { return _blog_title; }
    public String GetBlogArticle() { return _blog_article; }
    public String GetStatus() { return _status; }

    public void SetId(ObjectId id) { this._id = id; }
    public void SetPageTopBg(String page_top_bg) { this._page_top_bg = page_top_bg; }
    public void SetTitle(String title) { this._title = title; }
    public void SetSmallTextTitle(String small_text_title) { this._small_text_title = small_text_title; }
    public void SetRecentGame(String _recent_game) { this._recent_game = _recent_game; }
    public void SetBlogTitle(String blog_title) { this._blog_title = blog_title; }
    public void SetBlogArticle(String blog_article) { this._blog_article = blog_article; }
    public void SetStatus(String status) { this._status = status; }
}
