<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="reddit.fat_toad.db.Models.LastNewsLineModel" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="reddit.fat_toad.db.Models.BlogsModel" %>
<%
    String context = request.getContextPath();
    ArrayList<LastNewsLineModel> latest_news_line_data = (ArrayList<LastNewsLineModel>)request.getAttribute("LatestNewsData");
    BlogsModel blog_data = (BlogsModel)request.getAttribute("BlogsData");
    String blog_article = (String)request.getAttribute("BlogArticle");
%>
<div id="preloder"><div class="loader"></div></div>
<!-- Latest news section. -->
<div class="latest-news-section">
    <div class="ln-title">Latest News</div>
    <div class="news-ticker">
        <div class="news-ticker-contant">
            <%
                for (LastNewsLineModel news_line_i : latest_news_line_data)
                {
            %>
            <div class="nt-item">
                <span class="<%= news_line_i.GetStatus() %>"><%= news_line_i.GetStatus() %></span>
                <%= news_line_i.GetNews() %>
            </div>
            <%
                }
            %>
        </div>
    </div>
</div>
<!-- Page info section -->
<section class="page-info-section set-bg" data-setbg="<%=context%>/img/page-top-bg/<%=blog_data.GetPageTopBg()%>">
    <div class="pi-content">
        <div class="container">
            <div class="row">
                <div class="col-xl-5 col-lg-6 text-white">
                    <h2><%=blog_data.GetTitle()%></h2>
                    <p>
                        <%=blog_data.GetSmallTextTitle()%>
                    </p>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Page section -->
<section class="page-section single-blog-page spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="blog-thumb set-bg" data-setbg="<%=context%>/img/recent-game/<%=blog_data.GetRecentGame()%>">
                    <div class="cata new">new</div>
                    <div class="rgi-extra">
                        <div class="rgi-star"><img src="<%=context%>/img/icons/star.png" alt=""></div>
                        <div class="rgi-heart"><img src="<%=context%>/img/icons/heart.png" alt=""></div>
                    </div>
                </div>
                <div class="blog-content">
                    <h3><%=blog_data.GetBlogTitle()%></h3>
                    <a class="meta-comment"><%=blog_data.GetComments()%> comment</a>
                    <p>
                        <%=blog_article%>
                    </p>
                </div>
                <div class="comment-warp">
                    <h4 class="comment-title">Coments</h4>
                    <ul class="comment-list">
                        <li>
                            <div class="comment">
                                <div class="comment-avator set-bg" data-setbg="<%=context%>/img/authors/1.jpg"></div>
                                <div class="comment-content">
                                    <h5>James Smith <span>June 21, 2023</span></h5>
                                    <p>
                                        The leaks from that same Amazon store turned out to be so true).
                                    </p>
                                    <a href="" class="reply">Reply</a>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="comment">
                                <div class="comment-avator set-bg" data-setbg="<%=context%>/img/authors/2.jpg"></div>
                                <div class="comment-content">
                                    <h5>Donald Trump <span>June 21, 2023</span></h5>
                                    <p>
                                        Open pre-order in Turkey.
                                    </p>
                                    <a href="" class="reply">Reply</a>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="comment-form-warp">
                    <h4 class="comment-title">Leave Your Comment</h4>
                    <form class="comment-form">
                        <div class="row">
                            <div class="col-md-6">
                                <input type="text" placeholder="Name">
                            </div>
                            <div class="col-md-6">
                                <input type="email" placeholder="Email">
                            </div>
                            <div class="col-lg-12">
                                <input type="text" placeholder="Subject">
                                <textarea placeholder="Message"></textarea>
                                <button class="site-btn btn-sm">Send</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <!-- sidebar -->
            <div class="col-lg-4 col-md-7 sidebar pt-5 pt-lg-0">
                <!-- widget -->
                <div class="widget-item">
                    <form class="search-widget">
                        <input type="text" placeholder="Search">
                        <button><i class="fa fa-search"></i></button>
                    </form>
                </div>
                <!-- widget -->
                <div class="widget-item">
                    <h4 class="fw-title">Top Posts</h4>
                    <div class="latest-blog">
                        <div class="lb-item">
                            <div class="lb-thumb set-bg" data-setbg="<%=context%>/img/latest-blog/1.png"></div>
                            <div class="lb-content">
                                <div class="lb-date">December 12, 2023</div>
                                <p>Mercer and Gall. Best friends. Legendary thieves. Brothers in the Guild and the Nightingale's oath. </p>
                                <a href="#" class="lb-author">By Admin</a>
                            </div>
                        </div>
                        <div class="lb-item">
                            <div class="lb-thumb set-bg" data-setbg="<%=context%>/img/latest-blog/2.png"></div>
                            <div class="lb-content">
                                <div class="lb-date">December 12, 2023</div>
                                <p>Completing The Witcher 3 100% is a real test of perseverance. </p>
                                <a href="#" class="lb-author">By Admin</a>
                            </div>
                        </div>
                        <div class="lb-item">
                            <div class="lb-thumb set-bg" data-setbg="<%=context%>/img/latest-blog/3.png"></div>
                            <div class="lb-content">
                                <div class="lb-date">December 12, 2023</div>
                                <p>The first truly cool Spider-Man game in many years.</p>
                                <a href="#" class="lb-author">By Admin</a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- widget -->
                <div class="widget-item">
                    <h4 class="fw-title">Top Comments</h4>
                    <div class="top-comment">
                        <div class="tc-item">
                            <div class="tc-thumb set-bg" data-setbg="<%=context%>/img/authors/1.jpg"></div>
                            <div class="tc-content">
                                <p>
                                    <a href="#">James Smith</a>
                                    <span>on</span>
                                    “I just finished another quest in Fallout and I can say that my character now feels
                                    like a real survivor in a post-apocalyptic world. In real life,
                                    I started looking at every empty can as a potential resource for crafting.
                                </p>
                                <div class="tc-date">December 12, 2023</div>
                            </div>
                        </div>
                        <div class="tc-item">
                            <div class="tc-thumb set-bg" data-setbg="<%=context%>/img/authors/2.jpg"></div>
                            <div class="tc-content">
                                <p>
                                    <a href="#">Donald Trump</a>
                                    <span>on</span>
                                    I finished Uncharted and honestly,
                                    I feel like a mixture of Indiana Jones and a superhero.
                                </p>
                                <div class="tc-date">December 12, 2023</div>
                            </div>
                        </div>
                        <div class="tc-item">
                            <div class="tc-thumb set-bg" data-setbg="<%=context%>/img/authors/3.jpg"></div>
                            <div class="tc-content">
                                <p><a href="#">James Staitment</a>
                                    <span>on</span>
                                    I've completed a few races in Need for Speed, and to be honest,
                                    my car in real life now doesn't seem fast enough to me.
                                </p>
                                <div class="tc-date">December 12, 2023</div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- widget -->
                <div class="widget-item">
                    <div class="feature-item set-bg" data-setbg="<%=context%>/img/features/1.jpg">
                        <span class="cata adventure">adventures</span>
                        <div class="fi-content text-white">
                            <h5><a href="#">World of warcraft</a></h5>
                            <p>Hit the road and level up your characters up to level 20 for FREE!. </p>
                            <a href="#" class="fi-comment">0 Comments</a>
                        </div>
                    </div>
                </div>
                <!-- widget -->
                <div class="widget-item">
                    <div class="review-item">
                        <div class="review-cover set-bg" data-setbg="<%=context%>/img/review/1.png">
                            <div class="score yellow">8.3</div>
                        </div>
                        <div class="review-text">
                            <h5>Alan Wake 2</h5>
                            <p>
                                Popular New York writer Alan Wake went missing in 2010. Vacationing with his wife, Alice Wake,
                                in the Pacific Northwest
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>