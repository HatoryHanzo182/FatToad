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
<section class="page-info-section set-bg" data-setbg="img/page-top-bg/4.jpg">
  <div class="pi-content">
    <div class="container">
      <div class="row">
        <div class="col-xl-5 col-lg-6 text-white">
          <h2>Our Community</h2>
          <p>
            "Are there any favorable discounts on Steam? Battle Royale or MMO - which is top today?
            How do you rate the latest release? Get ready, friends, for a virtual storm of comments!
            Discussions begin here, and your every word can become a reason for heated debate.
          </p>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Page section -->
<section class="page-section community-page set-bg" data-setbg="img/community-bg.jpg">
  <div class="community-warp spad">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <h3 class="community-top-title">All Members (344)</h3>
        </div>
        <div class="col-md-6 text-lg-right">
          <form class="community-filter">
            <label for="fdf5">Show</label>
            <select id="fdf5">
              <option value="#">Everything</option>
              <option value="#">Everything</option>
            </select>
          </form>
        </div>
      </div>
      <ul class="community-post-list">
        <li>
          <div class="community-post">
            <div class="author-avator set-bg" data-setbg="img/authors/1.jpg"></div>
            <div class="post-content">
              <h5>James Smith<span>posted an update</span></h5>
              <div class="post-date">June 21, 2018</div>
              <p>
                Lorem ipsum dolor sit amet, cdictum nisl onsectetur adipisc ing ipsum dolor sit ame. Lorem ipsum dolor sit amet,
                consectetur adipisc ing ipsum dolor sit ame.Donec venenatis at eros sit amet aliquam. Donec vel orci efficitur, dictum nisl
                vitae, scelerisque nibh. Curabitur eget ipsum pulvinar nunc gravida interdum.
              </p>
            </div>
          </div>
        </li>
        <li>
          <div class="community-post">
            <div class="author-avator set-bg" data-setbg="img/authors/8.jpg"></div>
            <div class="post-content">
              <h5>Partik Williams<span>posted an update</span></h5>
              <div class="post-date">June 21, 2018</div>
              <p>
                Lorem ipsum dolor sit amet, cdictum nisl onsectetur adipisc ing ipsum dolor sit ame. Lorem ipsum dolor sit amet,
                consectetur adipisc ing ipsum dolor sit ame.Donec venenatis at eros sit amet aliquam. Donec vel orci efficitur,
                dictum nisl vitae, scelerisque nibh. Curabitur eget ipsum pulvinar nunc gravida interdum.
              </p>
              <div class="attachment-file">
                <img src="img/attachment.jpg" alt="">
              </div>
            </div>
          </div>
        </li>
        <li>
          <div class="community-post">
            <div class="author-avator set-bg" data-setbg="img/authors/5.jpg"></div>
            <div class="post-content">
              <h5>Cris The Man<span>posted an update</span></h5>
              <div class="post-date">June 21, 2018</div>
              <p>Lorem ipsum dolor sit amet, cdictum nisl onsectetur adipisc ing ipsum dolor sit ame. Lorem ipsum dolor sit amet,
                consectetur adipisc ing ipsum dolor sit ame.Donec venenatis at eros sit amet aliquam. Donec vel orci efficitur, dictum nisl vitae,
                scelerisque nibh. Curabitur eget ipsum pulvinar nunc gravida interdum.
              </p>
            </div>
          </div>
        </li>
        <li>
          <div class="community-post">
            <div class="author-avator set-bg" data-setbg="img/authors/1.jpg"></div>
            <div class="post-content">
              <h5>James Smith<span>posted an update</span></h5>
              <div class="post-date">June 21, 2018</div>
              <p>
                Lorem ipsum dolor sit amet, cdictum nisl onsectetur adipisc ing ipsum dolor sit ame. Lorem ipsum dolor sit amet,
                consectetur adipisc ing ipsum dolor sit ame.Donec venenatis at eros sit amet aliquam. Donec vel orci efficitur, dictum nisl vitae,
                scelerisque nibh. Curabitur eget ipsum pulvinar nunc gravida interdum.
              </p>
            </div>
          </div>
        </li>
        <li>
          <div class="community-post">
            <div class="author-avator set-bg" data-setbg="img/authors/4.jpg"></div>
            <div class="post-content">
              <h5>Cris The Man<span>posted an update</span></h5>
              <div class="post-date">June 21, 2018</div>
              <p>
                Lorem ipsum dolor sit amet, cdictum nisl onsectetur adipisc ing ipsum dolor sit ame. Lorem ipsum dolor sit amet, consectetur adipisc
                ing ipsum dolor sit ame.Donec venenatis at eros sit amet aliquam. Donec vel orci efficitur, dictum nisl vitae, scelerisque nibh.
                Curabitur eget ipsum pulvinar nunc gravida interdum.
              </p>
            </div>
          </div>
        </li>
        <li>
          <div class="community-post">
            <div class="author-avator set-bg" data-setbg="img/authors/6.jpg"></div>
            <div class="post-content">
              <h5>James Smith<span>posted an update</span></h5>
              <div class="post-date">June 21, 2018</div>
              <p>
                Lorem ipsum dolor sit amet, cdictum nisl onsectetur adipisc ing ipsum dolor sit ame. Lorem ipsum dolor sit amet,
                consectetur adipisc ing ipsum dolor sit ame.Donec venenatis at eros sit amet aliquam. Donec vel orci efficitur, dictum nisl vitae,
                scelerisque nibh. Curabitur eget ipsum pulvinar nunc gravida interdum.
              </p>
            </div>
          </div>
        </li>
        <li>
          <div class="community-post">
            <div class="author-avator set-bg" data-setbg="img/authors/7.jpg"></div>
            <div class="post-content">
              <h5>Maria Doe<span>posted an update</span></h5>
              <div class="post-date">June 21, 2018</div>
              <p>
                Lorem ipsum dolor sit amet, cdictum nisl onsectetur adipisc ing ipsum dolor sit ame. Lorem ipsum dolor sit amet,
                consectetur adipisc ing ipsum dolor sit ame.Donec venenatis at eros sit amet aliquam. Donec vel orci efficitur, dictum nisl
                vitae, scelerisque nibh. Curabitur eget ipsum pulvinar nunc gravida interdum.
              </p>
            </div>
          </div>
        </li>
      </ul>
      <div class="site-pagination sp-style-2">
        <span class="active">01.</span>
        <a href="#">02.</a>
        <a href="#">03.</a>
      </div>
    </div>
  </div>
</section>