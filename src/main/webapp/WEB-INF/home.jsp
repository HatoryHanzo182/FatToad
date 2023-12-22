<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="reddit.fat_toad.db.Models.LastNewsLineModel" %>
<%@ page import="java.util.ArrayList" %>
<%
    String context = request.getContextPath();
%>
<!-- Page Preloaded. -->
<div id="preloder"><div class="loader"></div></div>
<!-- Hero section. -->
<section class="hero-section">
    <div class="hero-slider owl-carousel">
        <div class="hs-item set-bg" data-setbg="img/Slider1ForHomePage.png">
            <div class="hs-text">
                <div class="container">
                    <h2>The Best <span>Games</span> Out There</h2>
                    <p>
                        Stay up-to-date with the latest gaming news, reviews, and discussions.<br>
                        Join our community to share your gaming experiences, discover new titles, and connect with fellow gamers.<br>
                        Whether you're a casual player or a hardcore enthusiast, our forum<br>
                        has something for everyone. Let the gaming adventure begin!
                    </p>
                    <a href="#" class="site-btn">Read More</a>
                </div>
            </div>
        </div>
        <div class="hs-item set-bg" data-setbg="img/Slider2ForHomePage.png">
            <div class="hs-text">
                <div class="container">
                    <h2>The Best <span>Games</span> Out There</h2>
                    <p>
                        Dive into the world of exciting games! Discover the latest releases, read reviews,<br>
                        and join discussions with other players. Do you like action, adventure or<br>
                        strategy games, our platform has something for every gaming enthusiast. stay tuned<br>
                        Find out news about upcoming games and plunge into the gaming universe.<br>
                    </p>
                    <a href="#" class="site-btn">Read More</a>
                </div>
            </div>
        </div>
        <div class="hs-item set-bg" data-setbg="img/Slider3ForHomePage.png">
            <div class="hs-text">
                <div class="container">
                    <h2>The Best <span>Games</span> Out There</h2>
                    <p>
                        Let's discuss games, share impressions and find new friends for the player.<br>
                        Welcome to our virtual community!
                    </p>
                    <a href="#" class="site-btn">Read More</a>
                </div>
            </div>
        </div>
    </div>
</section>
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
<!-- Feature section. -->
<section class="feature-section spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6 p-0">
                <div class="feature-item set-bg" data-setbg="img/features/1.jpg">
                    <span class="cata adventure">adventures</span>
                    <div class="fi-content text-white">
                        <h5><a href="#">World of warcraft</a></h5>
                        <p>Hit the road and level up your characters up to level 20 for FREE!. </p>
                        <a href="#" class="fi-comment">0 Comments</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 p-0">
                <div class="feature-item set-bg" data-setbg="img/features/2.png">
                    <span class="cata new">new</span>
                    <div class="fi-content text-white">
                        <h5><a href="#">THE WAR HAS CHANGED</a></h5>
                        <p>In the direct sequel to the legendary game Call of Duty: Modern Warfare II, Captain Price and OTG-141 confront the most terrible threat.</p>
                        <a href="#" class="fi-comment">2 Comments</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 p-0">
                <div class="feature-item set-bg" data-setbg="img/features/3.png">
                    <span class="cata adventure">adventures</span>
                    <div class="fi-content text-white">
                        <h5><a href="#">Uncharted 4</a></h5>
                        <p>This is the finale of the Nathan Drake saga, so the details of the story are kept in the strictest confidence. “But the most important thing to say right now is that Uncharted 4 is a story about family,” Eric says.</p>
                        <a href="#" class="fi-comment">22 Comments</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 p-0">
                <div class="feature-item set-bg" data-setbg="img/features/4.png">
                    <span class="cata fighting">fighting</span>
                    <div class="fi-content text-white">
                        <h5><a href="#">IT'S IN OUR BLOOD!</a></h5>
                        <p>Discover for yourself the revival of the entire world of Mortal Kombat, created by the god of fire Liu Kang. Mortal Kombat 1 begins a new era of the cult franchise with a new combat system, attack modes and finishing moves!</p>
                        <a href="#" class="fi-comment">12 Comments</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Recent game articles section  -->
<section class="recent-game-section spad set-bg" data-setbg="img/review-bg-2.png">
    <div class="container">
        <div class="section-title text-white">
            <div class="cata new">new</div>
            <h2>Recent Gaming Articles</h2>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-6">
                <div class="recent-game-item">
                    <div class="rgi-thumb set-bg" data-setbg="img/recent-game/1.png">
                        <div class="cata new">new</div>
                    </div>
                    <div class="rgi-content">
                        <h5>Amazing solution from NetherRealm Studios</h5>
                        <p>An interesting and non-standard solution to add new characters from the developers.</p>
                        <a href="#" class="comment">278 Comments</a>
                        <div class="rgi-extra">
                            <div class="rgi-star"><img src="<%=context%>/img/icons/star.png" alt=""></div>
                            <div class="rgi-heart"><img src="<%=context%>/img/icons/heart.png" alt=""></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="recent-game-item">
                    <div class="rgi-thumb set-bg" data-setbg="img/recent-game/2.png">
                        <div class="cata new">new</div>
                    </div>
                    <div class="rgi-content">
                        <h5>RDR2 - New servers</h5>
                        <p>Immerse yourself in the world of the wild west on new servers.</p>
                        <a href="#" class="comment">3 Comments</a>
                        <div class="rgi-extra">
                            <div class="rgi-star"><img src="<%=context%>/img/icons/star.png" alt=""></div>
                            <div class="rgi-heart"><img src="<%=context%>/img/icons/heart.png" alt=""></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="recent-game-item">
                    <div class="rgi-thumb set-bg" data-setbg="img/recent-game/3.png">
                        <div class="cata new">new</div>
                    </div>
                    <div class="rgi-content">
                        <h5>PlayStation's users are having their accounts blocked en masse and permanently: what's happening</h5>
                        <p>Over the past couple of days, many PlayStation users have encountered massive bans. </p>
                        <a href="#" class="comment">3 Comments</a>
                        <div class="rgi-extra">
                            <div class="rgi-star"><img src="<%=context%>/img/icons/star.png" alt=""></div>
                            <div class="rgi-heart"><img src="<%=context%>/img/icons/heart.png" alt=""></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Tournaments section. -->
<section class="tournaments-section spad">
    <div class="container">
        <div class="tournament-title">Tournaments</div>
        <div class="row">
            <div class="col-md-6">
                <div class="tournament-item mb-4 mb-lg-0">
                    <div class="ti-notic">Premium Tournament</div>
                    <div class="ti-content">
                        <div class="ti-thumb set-bg" data-setbg="img/tournament/1.png"></div>
                        <div class="ti-text">
                            <h4>Dota2</h4>
                            <ul>
                                <li><span>Tournament Beggins:</span> 11.12.2023</li>
                                <li><span>Tounament Ends:</span> 26.12.2023</li>
                                <li><span>Participants:</span>11 teams</li>
                                <li><span>Tournament Author:</span>European Pro League Season 15</li>
                            </ul>
                            <p><span>Prizes:</span> 1st place $20000, 2nd place: $10000, 3rd place: $5000</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="tournament-item">
                    <div class="ti-notic">Premium Tournament</div>
                    <div class="ti-content">
                        <div class="ti-thumb set-bg" data-setbg="img/tournament/2.png"></div>
                        <div class="ti-text">
                            <h4>Warcraft III</h4>
                            <ul>
                                <li><span>Tournament Beggins:</span> 04.10.23 </li>
                                <li><span>Tounament Ends:</span> 04.12.23 </li>
                                <li><span>Participants:</span> 6 teams</li>
                                <li><span>Tournament Author:</span> Esports</li>
                            </ul>
                            <p><span>Prizes:</span> 1st place $2000, 2nd place: $1000, 3rd place: $500</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Review section. -->
<section class="review-section spad set-bg" data-setbg="img/review-bg.png">
    <div class="container">
        <div class="section-title">
            <div class="cata new">new</div>
            <h2>Recent Reviews</h2>
        </div>
        <div class="row">
            <div class="col-lg-3 col-md-6">
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
            <div class="col-lg-3 col-md-6">
                <div class="review-item">
                    <div class="review-cover set-bg" data-setbg="img/review/2.png">
                        <div class="score purple">9.0</div>
                    </div>
                    <div class="review-text">
                        <h5>Mortal Kombat 1</h5>
                        <p>
                            As for the story campaign, everything is relatively traditional.
                            You shouldn’t expect any revelations from her, but it’s interesting to see what kind of mess
                            they’ve stirred up there once again.
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="review-item">
                    <div class="review-cover set-bg" data-setbg="img/review/3.png">
                        <div class="score green">8.9</div>
                    </div>
                    <div class="review-text">
                        <h5>Resident Evil 4</h5>
                        <p>The release was a great success, with players responding generally positively.
                            What has changed in these 17 years.
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="review-item">
                    <div class="review-cover set-bg" data-setbg="img/review/4.png">
                        <div class="score pink">7.6</div>
                    </div>
                    <div class="review-text">
                        <h5>Hogwarts Legacy</h5>
                        <p>
                            An exciting open-world role-playing game set in the magical world first introduced in the
                            Harry Potter books.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Footer top section -->
<section class="footer-top-section">
    <div class="container">
        <div class="footer-top-bg">
            <img src="<%=context%>/img/footer-top-bg.png" alt="">
        </div>
        <div class="row">
            <div class="col-lg-4">
                <div class="footer-logo text-white">
                    <img src="<%=context%>/img/footer-logo.png" alt="">
                    <p>
                        We would like to express our deep gratitude to you for your dedication and interest in
                        our publications. Thanks to you, our blog becomes a place where like-minded people
                        who appreciate the world of video games and are deeply immersed in gaming culture gather.
                    </p>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="footer-widget mb-5 mb-md-0">
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
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="footer-widget">
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
                        <div class="tc-item">
                            <div class="tc-thumb set-bg" data-setbg="img/authors/4.jpg"></div>
                            <div class="tc-content">
                                <p>
                                    <a href="#">Jared Smith</a>
                                    <span>on</span>
                                    Honestly, I'm disappointed with my experience with Ubisoft games.
                                    Recent releases tend to come out with a lot of bugs and technical problems.
                                </p>
                                <div class="tc-date">December 12, 2023</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>