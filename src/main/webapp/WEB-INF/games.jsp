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
                    <div class="review-cover set-bg" data-setbg="img/review/5.jpg">
                        <div class="score yellow">9.3</div>
                    </div>
                    <div class="review-text">
                        <h4>Overwatch Halloween</h4>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star is-fade"></i>
                        </div>
                        <p>
                            Immerse yourself in the spooky atmosphere of Overwatch Halloween. This thrilling event brings a perfect
                            blend of chills and excitement. Join the action-packed adventure, where heroes face off against supernatural foes.
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="review-item">
                    <div class="review-cover set-bg" data-setbg="img/review/6.jpg">
                        <div class="score yellow">9.3</div>
                    </div>
                    <div class="review-text">
                        <h4>Grand Theft Auto</h4>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star is-fade"></i>
                        </div>
                        <p>
                            Immerse yourself in the thrilling world of Grand Theft Auto.
                            This iconic game series has set the standard for open-world action and adventure.
                            Experience the adrenaline-pumping missions, intricate storylines, and the vast sandbox of opportunities.
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="review-item">
                    <div class="review-cover set-bg" data-setbg="img/review/7.jpg">
                        <div class="score yellow">9.3</div>
                    </div>
                    <div class="review-text">
                        <h4>Avatar</h4>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star is-fade"></i>
                        </div>
                        <p>
                            Immerse yourself in the extraordinary world of Avatar. This visually stunning masterpiece takes you
                            on a breathtaking journey through the lush landscapes of Pandora. Explore the unique culture, encounter exotic
                            creatures, and become part of an epic adventure. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                            Nulla vel imperdiet libero. Ut auctor justo vitae ex convallis, vitae malesuada lacus mattis.
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="review-item">
                    <div class="review-cover set-bg" data-setbg="img/review/8.jpg">
                        <div class="score yellow">9.3</div>
                    </div>
                    <div class="review-text">
                        <h4>Anthem</h4>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star is-fade"></i>
                        </div>
                        <p>
                            Immerse yourself in the captivating world of Anthem. This action-packed game takes you to the skies as
                            you don a powerful exosuit, exploring a vast and dynamic landscape. Engage in epic battles, unravel a rich narrative,
                            and team up with friends for an unforgettable gaming experience. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="review-item">
                    <div class="review-cover set-bg" data-setbg="img/review/9.jpg">
                        <div class="score yellow">9.3</div>
                    </div>
                    <div class="review-text">
                        <h4>Cyberpunk 2077</h4>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star is-fade"></i>
                        </div>
                        <p>
                            Dive into the heart of the cyberpunk metropolis, where neon lights flicker and intrigue lurks around every corner.
                            Cyberpunk Adventure offers an immersive experience, blending high-tech futurism with gritty urban landscapes.
                            Uncover corporate conspiracies, enhance your abilities with cybernetic implants, and navigate a city that never sleeps.
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="review-item">
                    <div class="review-cover set-bg" data-setbg="img/review/10.jpg">
                        <div class="score yellow">9.3</div>
                    </div>
                    <div class="review-text">
                        <h4>Spiderman</h4>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star is-fade"></i>
                        </div>
                        <p>
                            Swing into action with the spectacular world of Spiderman.
                            This high-flying game brings the iconic superhero to life in an open-world adventure.
                            Traverse the skyscrapers of New York City, battle notorious villains, and experience the thrill of being the friendly
                            neighborhood Spider-Man.
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