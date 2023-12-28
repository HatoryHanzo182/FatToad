<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String context = request.getContextPath();
    String page_body = (String) request.getAttribute("page-body");
    String context_culture = context + "/" + request.getAttribute("culture");
%>
<html lang="zxx">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Game Warrior Template">
    <meta name="keywords" content="warrior, game, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Favicon. -->
    <link rel="icon" href="<%=context%>/img/favicon.ico" type="image/x-icon"/>
    <!-- Google Fonts. -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,400i,500,500i,700,700i" rel="stylesheet">
    <!-- Stylesheets. -->
    <link rel="stylesheet" href="<%=context%>/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="<%=context%>/css/font_awesome.min.css"/>
    <link rel="stylesheet" href="<%=context%>/css/owl.carousel.css"/>
    <link rel="stylesheet" href="<%=context%>/css/style.css"/>
    <link rel="stylesheet" href="<%=context%>/css/animate.css"/>
    <link rel="stylesheet" href="<%=context%>/css/signin_up.css">
    <title>Fat toad</title>
</head>
<!-- Header section. -->
<% if (request.getAttribute("ShowMenu") != null && (Boolean) request.getAttribute("ShowMenu"))
{ %>
    <header class="header-section">
        <div class="container">
            <!-- Logo. -->
            <a class="site-logo" href="<%=context%>/home">
                <img src="<%=context%>/img/FatToadTitle.gif" alt="logo"/>
            </a>
            <h1>@FAT_TOAD</h1>
            <div class="user-panel"><a href="<%=context%>/signin">Sign in</a></div>
            <!-- Responsive. -->
            <div class="nav-switch"><i class="fa fa-bars"></i></div>
            <!-- Menu. -->
            <nav class="main-menu">
                <ul>
                    <li><a href="<%=context%>/home">Home</a></li>
                    <li><a href="<%=context%>/games">Games</a></li>
                    <li><a href="<%=context%>/blogs">Blog</a></li>
                    <li><a href="<%=context%>/forums">Forums</a></li>
                    <li><a href="<%=context%>/contact">Contact</a></li>
                </ul>
            </nav>
        </div>
    </header>
<% }%>
<body>
    <jsp:include page="<%=page_body%>"/>
</body>
<!-- Footer section. -->
<% if (request.getAttribute("ShowFooter") != null && (Boolean) request.getAttribute("ShowFooter"))
{ %>
    <footer class="footer-section">
        <div class="container">
            <ul class="footer-menu">
                <li><a href="<%=context%>/">Home</a></li>
                <li><a href="<%=context%>/games">Games</a></li>
                <li><a href="<%=context%>/blogs">Blog</a></li>
                <li><a href="<%=context%>/forums">Forums</a></li>
                <li><a href="<%=context%>/contact">Contact</a></li>
            </ul>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            <p class="copyright">
                Coursework &copy;2024 / For computer academy
                <i class="fa fa-heart-o" aria-hidden="true"></i>
                <a href="https://poltava.itstep.org/?gclid=Cj0KCQiAyKurBhD5ARIsALamXaE6FzK6yQEpyvukcvDa0CBz9MNHpE_bRvWqcc1L9d8D3dCYRhxCRuoaArCwEALw_wcB" target="_blank">StepIT</a>
            </p>
        </div>
    </footer>
<% }%>
<!--====== Javascripts & Jquery ======-->
<script src="<%=context%>/js/jquery-3.2.1.min.js"></script>
<script src="<%=context%>/js/bootstrap.min.js"></script>
<script src="<%=context%>/js/owl.carousel.min.js"></script>
<script src="<%=context%>/js/jquery.marquee.min.js"></script>
<script src="<%=context%>/js/main.js"></script>
<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</html>