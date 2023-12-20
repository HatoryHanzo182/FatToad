<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String context = request.getContextPath();
    String page_body = (String) request.getAttribute("page-body");
%>
<div class="marking">
    <!-- Registration. -->
    <div class="registration-block">
        <form class="form">
            <div class="flex-column"><label>Email</label></div>
            <div class="inputForm">
                <svg height="20" viewBox="0 0 32 32" width="20" xmlns="http://www.w3.org/2000/svg">
                    <g id="Layer_3" data-name="Layer 3">
                        <path d="m30.853 13.87a15 15 0 0 0 -29.729 4.082 15.1 15.1 0 0 0 12.876 12.918 15.6 15.6 0 0 0 2.016.13 14.85 14.85 0 0 0 7.715-2.145 1 1 0 1 0 -1.031-1.711 13.007 13.007 0 1 1 5.458-6.529 2.149 2.149 0 0 1 -4.158-.759v-10.856a1 1 0 0 0 -2 0v1.726a8 8 0 1 0 .2 10.325 4.135 4.135 0 0 0 7.83.274 15.2 15.2 0 0 0 .823-7.455zm-14.853 8.13a6 6 0 1 1 6-6 6.006 6.006 0 0 1 -6 6z"></path>
                    </g>
                </svg>
                <input id="id-input-email" type="text" class="input" placeholder="Enter your Email">
            </div>
            <div class="error-message"><p id="id-error-email-message"></p></div>
            <div class="flex-column"><label>Nickname</label></div>
            <div class="inputForm">
                <ion-icon name="happy-outline"></ion-icon>
                <input id="id-input-nickname" type="text" class="input" placeholder="Enter your Nickname">
            </div>
            <div class="error-message"><p id="id-error-nickname-message"></p></div>
            <div class="flex-column"><label>Password</label></div>
            <div class="inputForm">
                <ion-icon name="finger-print-outline"></ion-icon>
                <input id="id-input-password" type="password" class="input" placeholder="Enter your Password">
                <svg viewBox="0 0 576 512" height="1em" xmlns="http://www.w3.org/2000/svg"><path d="M288 32c-80.8 0-145.5 36.8-192.6 80.6C48.6 156 17.3 208 2.5 243.7c-3.3 7.9-3.3 16.7 0 24.6C17.3 304 48.6 356 95.4 399.4C142.5 443.2 207.2 480 288 480s145.5-36.8 192.6-80.6c46.8-43.5 78.1-95.4 93-131.1c3.3-7.9 3.3-16.7 0-24.6c-14.9-35.7-46.2-87.7-93-131.1C433.5 68.8 368.8 32 288 32zM144 256a144 144 0 1 1 288 0 144 144 0 1 1 -288 0zm144-64c0 35.3-28.7 64-64 64c-7.1 0-13.9-1.2-20.3-3.3c-5.5-1.8-11.9 1.6-11.7 7.4c.3 6.9 1.3 13.8 3.2 20.7c13.7 51.2 66.4 81.6 117.6 67.9s81.6-66.4 67.9-117.6c-11.1-41.5-47.8-69.4-88.6-71.1c-5.8-.2-9.2 6.1-7.4 11.7c2.1 6.4 3.3 13.2 3.3 20.3z"></path></svg>
            </div>
            <div class="error-message"><p id="id-error-password-message"></p></div>
            <button id="id-signup-button" class="button-submit">Sign Up</button>
            <p class="p">Already in our ranks?
                <%= "sign_in.jsp".equals(page_body) ? "" : ""%><a href="<%=context%>/signin">Sign In</a>
            </p>
        </form>
    </div>
    <!-- Art. -->
    <div class="art-block">
        <div class="hero-slider owl-carousel">
            <div class="hs-item set-bg" data-setbg="img/ToadBackgroundSignin.jpg">
                <div class="hs-text">
                    <div class="container">
                        <h2><span>Join</span> the @Fat_Toad</h2>
                        <p class="greeting-text">
                            Dive into the world of exciting games! Discover the latest releases, read reviews,<br>
                            and join discussions with other players. Do you like action, adventure or<br>
                            strategy games, our platform has something for every gaming enthusiast. stay tuned<br>
                            Find out news about upcoming games and plunge into the gaming universe.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="<%=context%>/js/signup.js"></script>