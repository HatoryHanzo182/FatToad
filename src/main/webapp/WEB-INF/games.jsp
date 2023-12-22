<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="reddit.fat_toad.db.Models.LastNewsLineModel" %>
<%@ page import="java.util.ArrayList" %>
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
<section class="page-info-section set-bg" data-setbg="img/page-top-bg/3.jpg">
    <div class="pi-content">
        <div class="container">
            <div class="row">
                <div class="col-xl-5 col-lg-6 text-white">
                    <h2>Game reviews</h2>
                    <p>
                        Dive into the latest game reviews. Discover thrilling adventures and captivating stories that will keep
                        you on the edge of your seat. Explore new worlds, face epic challenges, and unleash your gaming potential.
                    </p>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Page section -->
<section class="page-section review-page spad">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="review-item">
                    <div class="review-cover set-bg" data-setbg="img/review/5.png">
                        <div class="score yellow">8.6</div>
                    </div>
                    <div class="review-text">
                        <h4>Resident Evil 4 Remake - Two paths</h4>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star is-fade"></i>
                        </div>
                        <p>
                            In the Separate Ways add-on, players will enjoy familiar gameplay with a minimum of changes.
                            The only DLC feature is Ada's grappling hook, with which she can overcome some obstacles.
                            This item can only be used in specially designated areas. Otherwise, this is still the same Resident Evil 4.
                            Below we have answered some questions that may arise as you progress.
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="review-item">
                    <div class="review-cover set-bg" data-setbg="img/review/6.png">
                        <div class="score green">9.8</div>
                    </div>
                    <div class="review-text">
                        <h4>Baldur's Gate 3</h4>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star is-fade"></i>
                        </div>
                        <p>
                            Baldur's Gate III is a turn-based role-playing video game and the third installment in the Baldur's Gate series.
                            It was announced on June 6, 2019 by its developer Larian Studios at the presentation of the Google Stadia cloud
                            service. As confirmed by Wizards of the Coast, the rights holders for the Dungeons & Dragons setting in the
                            games, Baldur's Gate III will officially be the "new chapter in the legendary series."
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="review-item">
                    <div class="review-cover set-bg" data-setbg="img/review/7.png">
                        <div class="score purple">4.2</div>
                    </div>
                    <div class="review-text">
                        <h4>Redfall</h4>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star is-fade"></i>
                            <i class="fa fa-star is-fade"></i>
                            <i class="fa fa-star is-fade"></i>
                        </div>
                        <p>
                            Redfall isn't bad - it's apocalyptically terrible. On the one hand,
                            this makes the critic’s job easier, but often even bad games can be praised for their plot,
                            design, gameplay elements, or at least music. But this is not the case.
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="review-item">
                    <div class="review-cover set-bg" data-setbg="img/review/8.png">
                        <div class="score black">8.9</div>
                    </div>
                    <div class="review-text">
                        <h4>Genshin Impact</h4>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star is-fade"></i>
                        </div>
                        <p>
                            I think Genshin Impact needs no introduction, but for those who don’t know,
                            it’s a free-to-play adventure game with RPG elements in an open world from the Chinese studio Mihoyo.
                            When Genshin Impact was announced, I, like many, expected another mobile garbage dump from Chinese developers.
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="review-item">
                    <div class="review-cover set-bg" data-setbg="img/review/9.png">
                        <div class="score pink">10</div>
                    </div>
                    <div class="review-text">
                        <h4>God of War Ragnarök</h4>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <p>
                            God of War Ragnarok continues and ends the “Nordic” saga of Kratos.
                            We'll tell you how the finale of the conflict between the Spartans and the gods of Scandinavia,
                            so expected by many players, turned out.
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="review-item">
                    <div class="review-cover set-bg" data-setbg="img/review/10.png">
                        <div class="score yellow">8.7</div>
                    </div>
                    <div class="review-text">
                        <h4>Sekiro: Shadows Die Twice</h4>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star is-fade"></i>
                        </div>
                        <p>
                            Sekiro: Shadows Die Twice is a very controversial milestone in the history of the Japanese
                            studio From Software. Game of the Year according to The Game Awards 2019, which is criticized
                            by many for being “excessively complex.”
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="text-center pt-4">
            <button class="site-btn btn-sm">Load More</button>
        </div>
    </div>
</section>
<!-- Review section -->
<section class="review-section review-dark spad set-bg" data-setbg="img/recent-game-bg.png">
    <div class="container">
        <div class="section-title text-white">
            <div class="cata new">new</div>
            <h2>Recent Reviews</h2>
        </div>
        <div class="row text-white">
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