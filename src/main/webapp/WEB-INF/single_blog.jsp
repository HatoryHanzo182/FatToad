<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="reddit.fat_toad.db.Models.LastNewsLineModel" %>
<%@ page import="java.util.ArrayList" %>
<%
    String context = request.getContextPath();
%>
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
<section class="page-info-section set-bg" data-setbg="<%=context%>/img/page-top-bg/2.png">
    <div class="pi-content">
        <div class="container">
            <div class="row">
                <div class="col-xl-5 col-lg-6 text-white">
                    <h2>PACK ROSTER</h2>
                    <p>
                        Mortal Kombat 1 - Official Kombat Pack: Unleashing the Ultimate Combat Experience.
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
                <div class="blog-thumb set-bg" data-setbg="<%=context%>/img/recent-game/big1.png">
                    <div class="cata new">new</div>
                    <div class="rgi-extra">
                        <div class="rgi-star"><img src="img/icons/star.png" alt=""></div>
                        <div class="rgi-heart"><img src="img/icons/heart.png" alt=""></div>
                    </div>
                </div>
                <div class="blog-content">
                    <h3>Amazing solution from NetherRealm Studios</h3>
                    <a class="meta-comment">278 comment</a>
                    <p>
                        Mortal Kombat, the iconic fighting game franchise, has been synonymous with brutal, intense battles since its
                        inception. The original Mortal Kombat game, released in 1992, laid the foundation for the series and became a
                        cornerstone of the fighting game genre. Now, the legend continues with the announcement of the "Mortal Kombat 1 -
                        Official Kombat Pack."<br><br>

                        Prepare to see your favorite characters like never before. The Kombat Pack introduces revamped versions
                        of classic fighters, complete with updated visuals, movesets, and fatalities. Whether you're a
                        Scorpion enthusiast or a fan of Sub-Zero's icy maneuvers, the Kombat Pack breathes new life into these
                        iconic warriors. Alongside the familiar faces, the Kombat Pack introduces new characters to the Mortal
                        Kombat universe. These newcomers bring unique fighting styles and fatalities, adding an extra layer of
                        strategy to the already intense battles. Get ready to master their special moves and unleash devastating combos.
                        Customization has always been a key aspect of Mortal Kombat, and the Kombat Pack takes it to the next level.
                        Unlock exclusive skins, gear, and fatalities for your favorite characters, allowing you to personalize your
                        fighters and stand out in the arena.<br><br>

                        Delve deeper into the Mortal Kombat lore with enhanced storylines for each character. Learn more
                        about the backgrounds, rivalries, and motivations that drive the fighters to participate in the
                        deadly tournament. The Kombat Pack promises a narrative experience that immerses players in the rich world
                        of Mortal Kombat. <br><br>

                        To embark on this thrilling journey, Mortal Kombat enthusiasts can acquire the
                        "Mortal Kombat 1 - Official Kombat Pack" through various platforms.
                        Check the official Mortal Kombat website or your preferred gaming store for information on availability,
                        pricing, and release dates.<br><br>

                        <iframe width="760" height="315" src="https://www.youtube.com/embed/eT-3vhCl6N4?si=o_gFwMih540vlkG1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

                        <br><br>One of the highlights of the "Mortal Kombat 1 - Official Kombat Pack" is the revitalization of classic
                        characters. Prepare to witness your favorite fighters from the original Mortal Kombat game reimagined with
                        cutting-edge graphics and animations. The Kombat Pack brings a modern touch to these beloved characters while
                        staying true to the essence that made them iconic.
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