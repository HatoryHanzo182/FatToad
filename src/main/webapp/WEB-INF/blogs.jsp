<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="reddit.fat_toad.db.Models.LastNewsLineModel" %>
<%@ page import="java.util.ArrayList" %>
<%String context = request.getContextPath();%>
<!-- Page Preloder -->
<div id="preloder"><div class="loader"></div></div>
<!-- Latest news section -->
<div class="latest-news-section">
    <div class="ln-title">Latest News</div>
    <div class="news-ticker">
        <div class="news-ticker-contant">
            <%
                ArrayList<LastNewsLineModel> latest_news_line_data = (ArrayList<LastNewsLineModel>) request.getAttribute("LatestNewsData");

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
<section class="page-info-section set-bg" data-setbg="img/page-top-bg/1.png">
    <div class="pi-content">
        <div class="container">
            <div class="row">
                <div class="col-xl-5 col-lg-6 text-white">
                    <h2>Blog Gallery</h2>
                    <p>
                        Every post here is an immersion into a new world where games turn into art and game characters become real heroes.
                        We explore fascinating stories, test the most advanced technologies and make immersion in gaming universes
                        an unforgettable experience.
                    </p>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Page section -->
<section class="page-section recent-game-page spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="row">
                    <div class="col-md-6">
                        <div class="recent-game-item">
                            <div class="rgi-thumb set-bg" data-setbg="img/recent-game/1.jpg">
                                <div class="cata new">racing</div>
                            </div>
                            <div class="rgi-content">
                                <h5>BLIZZARD</h5>
                                <p>BLIZZCON 2023 TICKETS ON-SALE JULY 8 AND JULY 22!</p>
                                <a href="#" class="comment">3 Comments</a>
                                <div class="rgi-extra">
                                    <div class="rgi-star"><img src="img/icons/star.png" alt=""></div>
                                    <div class="rgi-heart"><img src="img/icons/heart.png" alt=""></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="recent-game-item">
                            <div class="rgi-thumb set-bg" data-setbg="img/recent-game/2.jpg">
                                <div class="cata racing">racing</div>
                            </div>
                            <div class="rgi-content">
                                <h5>Doom </h5>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisc ing ipsum dolor sit amet, consectetur elit. </p>
                                <a href="#" class="comment">3 Comments</a>
                                <div class="rgi-extra">
                                    <div class="rgi-star"><img src="img/icons/star.png" alt=""></div>
                                    <div class="rgi-heart"><img src="img/icons/heart.png" alt=""></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="recent-game-item">
                            <div class="rgi-thumb set-bg" data-setbg="img/recent-game/3.jpg">
                                <div class="cata adventure">Adventure</div>
                            </div>
                            <div class="rgi-content">
                                <h5>Doom</h5>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisc ing ipsum dolor sit amet, consectetur elit. </p>
                                <a href="#" class="comment">3 Comments</a>
                                <div class="rgi-extra">
                                    <div class="rgi-star"><img src="img/icons/star.png" alt=""></div>
                                    <div class="rgi-heart"><img src="img/icons/heart.png" alt=""></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="recent-game-item">
                            <div class="rgi-thumb set-bg" data-setbg="img/recent-game/4.jpg">
                                <div class="cata new">racing</div>
                            </div>
                            <div class="rgi-content">
                                <h5>World of Warcraft</h5>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisc ing ipsum dolor sit amet, consectetur elit. </p>
                                <a href="#" class="comment">3 Comments</a>
                                <div class="rgi-extra">
                                    <div class="rgi-star"><img src="img/icons/star.png" alt=""></div>
                                    <div class="rgi-heart"><img src="img/icons/heart.png" alt=""></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="recent-game-item">
                            <div class="rgi-thumb set-bg" data-setbg="img/recent-game/5.jpg">
                                <div class="cata racing">racing</div>
                            </div>
                            <div class="rgi-content">
                                <h5>Blizzard </h5>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisc ing ipsum dolor sit amet, consectetur elit. </p>
                                <a href="#" class="comment">3 Comments</a>
                                <div class="rgi-extra">
                                    <div class="rgi-star"><img src="img/icons/star.png" alt=""></div>
                                    <div class="rgi-heart"><img src="img/icons/heart.png" alt=""></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="recent-game-item">
                            <div class="rgi-thumb set-bg" data-setbg="img/recent-game/6.jpg">
                                <div class="cata adventure">Adventure</div>
                            </div>
                            <div class="rgi-content">
                                <h5>GTA5 online </h5>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisc ing ipsum dolor sit amet, consectetur elit. </p>
                                <a href="#" class="comment">3 Comments</a>
                                <div class="rgi-extra">
                                    <div class="rgi-star"><img src="img/icons/star.png" alt=""></div>
                                    <div class="rgi-heart"><img src="img/icons/heart.png" alt=""></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="recent-game-item">
                            <div class="rgi-thumb set-bg" data-setbg="img/recent-game/7.jpg">
                                <div class="cata new">racing</div>
                            </div>
                            <div class="rgi-content">
                                <h5>PUBG is it already??</h5>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisc ing ipsum dolor sit amet, consectetur elit. </p>
                                <a href="#" class="comment">3 Comments</a>
                                <div class="rgi-extra">
                                    <div class="rgi-star"><img src="img/icons/star.png" alt=""></div>
                                    <div class="rgi-heart"><img src="img/icons/heart.png" alt=""></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="recent-game-item">
                            <div class="rgi-thumb set-bg" data-setbg="img/recent-game/8.jpg">
                                <div class="cata racing">racing</div>
                            </div>
                            <div class="rgi-content">
                                <h5>Doom hotfix</h5>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisc ing ipsum dolor sit amet, consectetur elit. </p>
                                <a href="#" class="comment">3 Comments</a>
                                <div class="rgi-extra">
                                    <div class="rgi-star"><img src="img/icons/star.png" alt=""></div>
                                    <div class="rgi-heart"><img src="img/icons/heart.png" alt=""></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="site-pagination">
                    <span class="active">01.</span>
                    <a href="#">02.</a>
                    <a href="#">03.</a>
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
                    <h4 class="widget-title">Latest Posts</h4>
                    <div class="latest-blog">
                        <div class="lb-item">
                            <div class="lb-thumb set-bg" data-setbg="img/latest-blog/1.jpg"></div>
                            <div class="lb-content">
                                <div class="lb-date">June 21, 2018</div>
                                <p>Ipsum dolor sit amet, consectetur adipisc ing consecips</p>
                                <a href="#" class="lb-author">By Admin</a>
                            </div>
                        </div>
                        <div class="lb-item">
                            <div class="lb-thumb set-bg" data-setbg="img/latest-blog/2.jpg"></div>
                            <div class="lb-content">
                                <div class="lb-date">June 21, 2018</div>
                                <p>Ipsum dolor sit amet, consectetur adipisc ing consecips</p>
                                <a href="#" class="lb-author">By Admin</a>
                            </div>
                        </div>
                        <div class="lb-item">
                            <div class="lb-thumb set-bg" data-setbg="img/latest-blog/3.jpg"></div>
                            <div class="lb-content">
                                <div class="lb-date">June 21, 2018</div>
                                <p>Ipsum dolor sit amet, consectetur adipisc ing consecips</p>
                                <a href="#" class="lb-author">By Admin</a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- widget -->
                <div class="widget-item">
                    <h4 class="widget-title">Top Comments</h4>
                    <div class="top-comment">
                        <div class="tc-item">
                            <div class="tc-thumb set-bg" data-setbg="img/authors/1.jpg"></div>
                            <div class="tc-content">
                                <p><a href="#">James Smith</a> <span>on</span> Lorem consec ipsum dolor sit amet, co</p>
                                <div class="tc-date">June 21, 2018</div>
                            </div>
                        </div>
                        <div class="tc-item">
                            <div class="tc-thumb set-bg" data-setbg="img/authors/2.jpg"></div>
                            <div class="tc-content">
                                <p><a href="#">Michael James</a> <span>on</span>Cras sit amet sapien aliquam</p>
                                <div class="tc-date">June 21, 2018</div>
                            </div>
                        </div>
                        <div class="tc-item">
                            <div class="tc-thumb set-bg" data-setbg="img/authors/3.jpg"></div>
                            <div class="tc-content">
                                <p><a href="#">Justin More</a> <span>on</span> Lorem ipsum dolor consecsit amet, co</p>
                                <div class="tc-date">June 21, 2018</div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- widget -->
                <div class="widget-item">
                    <div class="feature-item set-bg" data-setbg="img/features/1.jpg">
                        <span class="cata new">new</span>
                        <div class="fi-content text-white">
                            <h5><a href="#">Suspendisse ut justo tem por, rutrum</a></h5>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. </p>
                            <a href="#" class="fi-comment">3 Comments</a>
                        </div>
                    </div>
                </div>
                <!-- widget -->
                <div class="widget-item">
                    <div class="review-item">
                        <div class="review-cover set-bg" data-setbg="img/review/1.jpg">
                            <div class="score yellow">9.3</div>
                        </div>
                        <div class="review-text">
                            <h5>Assasin’’s Creed</h5>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisc ing ipsum dolor sit ame.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>