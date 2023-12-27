<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="reddit.fat_toad.db.Models.LastNewsLineModel" %>
<%@ page import="java.util.ArrayList" %>
<%
    String context = request.getContextPath();
%>
<!-- Page Preloder -->
<div id="preloder"><div class="loader"></div></div>
<!-- Latest news section. -->
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
                        <a href="<%=context%>/blogs/single_blog?Id=658b17c516c46489696b9bb9">
                            <div class="recent-game-item">
                                <div class="rgi-thumb set-bg" data-setbg="img/recent-game/1.png">
                                    <div class="cata new">new</div>
                                </div>
                                <div class="rgi-content">
                                    <h5>Amazing solution from NetherRealm Studios</h5>
                                    <p>An interesting and non-standard solution to add new characters from the developers.</p>
                                    <a class="comment">278 Comments</a>
                                    <div class="rgi-extra">
                                        <div class="rgi-star"><img src="img/icons/star.png" alt=""></div>
                                        <div class="rgi-heart"><img src="img/icons/heart.png" alt=""></div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-6">
                        <a href="<%=context%>/blogs/single_blog?Id=658b3c0316c46489696b9bbb">
                            <div class="recent-game-item">
                                <div class="rgi-thumb set-bg" data-setbg="img/recent-game/2.png">
                                    <div class="cata new">new</div>
                                </div>
                                <div class="rgi-content">
                                    <h5>RDR2 - New servers </h5>
                                    <p>Immerse yourself in the world of the wild west on new servers. </p>
                                    <a href="#" class="comment">3 Comments</a>
                                    <div class="rgi-extra">
                                        <div class="rgi-star"><img src="img/icons/star.png" alt=""></div>
                                        <div class="rgi-heart"><img src="img/icons/heart.png" alt=""></div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-6">
                        <a href="<%=context%>/blogs/single_blog?Id=658b441416c46489696b9bbc">
                            <div class="recent-game-item">
                                <div class="rgi-thumb set-bg" data-setbg="img/recent-game/3.png">
                                    <div class="cata new">new</div>
                                </div>
                                <div class="rgi-content">
                                    <h5>PlayStation's users are having their accounts blocked en masse and permanently: what's happening</h5>
                                    <p>Over the past couple of days, many PlayStation users have encountered massive bans. </p>
                                    <a class="comment">3 Comments</a>
                                    <div class="rgi-extra">
                                        <div class="rgi-star"><img src="img/icons/star.png" alt=""></div>
                                        <div class="rgi-heart"><img src="img/icons/heart.png" alt=""></div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-6">
                        <a href="<%=context%>/blogs/single_blog?Id=658b5c2fab01c50ded3d4fcd">
                            <div class="recent-game-item">
                                <div class="rgi-thumb set-bg" data-setbg="img/recent-game/4.png">
                                    <div class="cata new">new</div>
                                </div>
                                <div class="rgi-content">
                                    <h5>S.T.A.L.K.E.R. 2: Heart of Chornobyl</h5>
                                    <p>
                                        Continuation of the popular first-person shooter, a
                                        sandbox in the post-apocalyptic world of Chernobyl.
                                        Players can finally roam a large, open, seamless world containing such iconic elements
                                        of the original trilogy as the Chernobyl Nuclear Power Plant
                                    </p>
                                    <a href="#" class="comment">4003 Comments</a>
                                    <div class="rgi-extra">
                                        <div class="rgi-star"><img src="img/icons/star.png" alt=""></div>
                                        <div class="rgi-heart"><img src="img/icons/heart.png" alt=""></div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-6">
                        <a href="<%=context%>/blogs/single_blog?Id=658b61d9ab01c50ded3d4fcf">
                            <div class="recent-game-item">
                                <div class="rgi-thumb set-bg" data-setbg="img/recent-game/5.png">
                                    <div class="cata new">new</div>
                                </div>
                                <div class="rgi-content">
                                    <h5>GTA 6 </h5>
                                    <p>
                                        Continuation of the cult series of games from Rockstar. In it,
                                        players return to the fan-favorite Vice City - a sunny city surrounded by the ocean.
                                    </p>
                                    <a href="#" class="comment">5321 Comments</a>
                                    <div class="rgi-extra">
                                        <div class="rgi-star"><img src="img/icons/star.png" alt=""></div>
                                        <div class="rgi-heart"><img src="img/icons/heart.png" alt=""></div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-6">
                        <a href="<%=context%>/blogs/single_blog?Id=658b680dab01c50ded3d4fd0">
                            <div class="recent-game-item">
                                <div class="rgi-thumb set-bg" data-setbg="img/recent-game/6.png">
                                    <div class="cata adventure">adventure</div>
                                </div>
                                <div class="rgi-content">
                                    <h5>About the game - The Wolf Among Us 2 </h5>
                                    <p>
                                        The second season of Telltale Games' episodic adventure based on the Fables comic book series.
                                        The action takes place six months after the events of the first season.
                                    </p>
                                    <a href="#" class="comment">84 Comments</a>
                                    <div class="rgi-extra">
                                        <div class="rgi-star"><img src="img/icons/star.png" alt=""></div>
                                        <div class="rgi-heart"><img src="img/icons/heart.png" alt=""></div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-6">
                        <a href="<%=context%>/blogs/single_blog?Id=658c2a7aad081adb939841a1">
                            <div class="recent-game-item">
                                <div class="rgi-thumb set-bg" data-setbg="img/recent-game/7.png">
                                    <div class="cata adventure">adventures</div>
                                </div>
                                <div class="rgi-content">
                                    <h5>About The Witcher 3: Wild Hunt</h5>
                                    <p>
                                        The final part of the trilogy of adventures of Geralt of Rivia. In 2022,
                                        all its owners received a free next-gen update to the Complete Edition - the most complete
                                        edition of The Witcher 3, including all add-ons
                                    </p>
                                    <a href="#" class="comment">815 Comments</a>
                                    <div class="rgi-extra">
                                        <div class="rgi-star"><img src="img/icons/star.png" alt=""></div>
                                        <div class="rgi-heart"><img src="img/icons/heart.png" alt=""></div>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-6">
                        <a href="<%=context%>/blogs/single_blog?Id=658c52aead081adb939841a2">
                            <div class="recent-game-item">
                                <div class="rgi-thumb set-bg" data-setbg="img/recent-game/8.png">
                                    <div class="cata shooter">shooter</div>
                                </div>
                                <div class="rgi-content">
                                    <h5>Doom</h5>
                                    <p>
                                        The next part of the famous series, in which the player, in the role of a space marine,
                                        will go a long way through the corridors of an abandoned space base on Mars in order to
                                        reach Hell itself and destroy as many demons there as possible.
                                    </p>
                                    <a href="#" class="comment">559 Comments</a>
                                    <div class="rgi-extra">
                                        <div class="rgi-star"><img src="img/icons/star.png" alt=""></div>
                                        <div class="rgi-heart"><img src="img/icons/heart.png" alt=""></div>
                                    </div>
                                </div>
                            </div>
                        </a>
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
                    <h4 class="fw-title">Top Posts</h4>
                    <div class="latest-blog">
                        <div class="lb-item">
                            <div class="lb-thumb set-bg" data-setbg="img/latest-blog/1.png"></div>
                            <div class="lb-content">
                                <div class="lb-date">December 12, 2023</div>
                                <p>Mercer and Gall. Best friends. Legendary thieves. Brothers in the Guild and the Nightingale's oath. </p>
                                <a href="#" class="lb-author">By Admin</a>
                            </div>
                        </div>
                        <div class="lb-item">
                            <div class="lb-thumb set-bg" data-setbg="img/latest-blog/2.png"></div>
                            <div class="lb-content">
                                <div class="lb-date">December 12, 2023</div>
                                <p>Completing The Witcher 3 100% is a real test of perseverance. </p>
                                <a href="#" class="lb-author">By Admin</a>
                            </div>
                        </div>
                        <div class="lb-item">
                            <div class="lb-thumb set-bg" data-setbg="img/latest-blog/3.png"></div>
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
                            <div class="tc-thumb set-bg" data-setbg="img/authors/1.jpg"></div>
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
                            <div class="tc-thumb set-bg" data-setbg="img/authors/2.jpg"></div>
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
                            <div class="tc-thumb set-bg" data-setbg="img/authors/3.jpg"></div>
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
                    <div class="feature-item set-bg" data-setbg="img/features/1.jpg">
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
                        <div class="review-cover set-bg" data-setbg="img/review/1.png">
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