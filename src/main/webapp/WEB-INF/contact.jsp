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
                <span class="cata <%= news_line_i.GetStatus() %>"><%= news_line_i.GetStatus() %></span>
                <%= news_line_i.GetNews() %>
            </div>
            <%
                }
            %>
        </div>
    </div>
</div>
<!-- Page info section -->
<section class="page-info-section set-bg" data-setbg="<%=context%>/img/page-top-bg/5.png">
    <div class="pi-content">
        <div class="container">
            <div class="row">
                <div class="col-xl-5 col-lg-6 text-white">
                    <h2>Contact us</h2>
                    <p>
                        If you have questions, suggestions, or just want to share your opinion,
                        we are always glad to hear from you. Contact us using the form below and let's share our passion
                        for global gaming. Your opinion is important to us, and we are always ready for new adventures
                        with you!”
                    </p>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Page section -->
<section class="page-section spad contact-page">
    <div class="container">
        <div class="map" id="map-canvas">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6948.106288922985!2d30.728545892556447!3d46.485889602686704!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40c631965dfc29b9%3A0xcb38625fe2099a1e!2zSVQgU1RFUCBBY2FkZW15IC0g0J7QtNC10YHQsA!5e0!3m2!1suk!2sua!4v1701559296483!5m2!1suk!2sua" width="1200" height="515" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
        <div class="row">
            <div class="col-lg-4 mb-5 mb-lg-0">
                <h4 class="comment-title">Contact us</h4>
                <p>
                    We are open for communication 24/7. Your opinion shapes our community, so let's create something
                    successful together. Write to us and let the conversation begin!”
                </p>
                <div class="row">
                    <div class="col-md-9">
                        <ul class="contact-info-list">
                            <li><div class="cf-left">Address</div><div class="cf-right">Sadova street, 3, Odessa, Odeska region</div></li>
                            <li><div class="cf-left">Phone</div><div class="cf-right">+380 00 000 0000</div></li>
                            <li><div class="cf-left">E-mail</div><div class="cf-right">FAT_TOAD@gmail.com</div></li>
                        </ul>
                    </div>
                </div>
                <div class="social-links">
                    <a href="#"><i class="fa fa-pinterest"></i></a>
                    <a href="#"><i class="fa fa-facebook"></i></a>
                    <a href="#"><i class="fa fa-twitter"></i></a>
                    <a href="#"><i class="fa fa-dribbble"></i></a>
                    <a href="#"><i class="fa fa-behance"></i></a>
                    <a href="#"><i class="fa fa-linkedin"></i></a>
                </div>
            </div>
            <div class="col-lg-8">
                <div class="contact-form-warp">
                    <h4 class="comment-title">Leave a Reply</h4>
                    <form class="comment-form">
                        <div class="row">
                            <div class="col-lg-12">
                                <textarea id="id-message-for-admin_toad" placeholder="Message"></textarea>
                                <button id="id-button-send-message" class="site-btn btn-sm">Send</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<script src="<%=context%>/js/contact.js"></script>