<%@ page contentType="text/html;charset=UTF-8" %>
<%String context = request.getContextPath();%>
<%
    String page_body = (String) request.getAttribute("page-body");
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
    <link rel="stylesheet" href="<%=context%>/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="<%=context%>/css/owl.carousel.css"/>
    <link rel="stylesheet" href="<%=context%>/css/style.css"/>
    <link rel="stylesheet" href="<%=context%>/css/animate.css"/>
    <title>Fat toad</title>
</head>
<!-- Header section. -->
<header class="header-section">
    <div class="container">
        <!-- Logo. -->
        <a class="site-logo" href="<%=context%>/">
            <img src="<%=context%>/img/FatToadTitle.gif" alt="logo"/>
        </a>
        <h1>@FAT_TOAD</h1>
        <div class="user-panel"><a href="#">Sign in</a></div>
        <!-- Responsive. -->
        <div class="nav-switch"><i class="fa fa-bars"></i></div>
        <!-- Menu. -->
        <nav class="main-menu">
            <ul>
                <li><%= "home.jsp".equals(page_body) ? "" : ""%><a href="<%=context%>/home">Home</a></li>
                <li><%= "games.jsp".equals(page_body) ? "" : ""%><a href="<%=context%>/games">Games</a></li>
                <li><a href="categories.html">Blog</a></li>
                <li><a href="community.html">Forums</a></li>
                <li><a href="contact.html">Contact</a></li>
            </ul>
        </nav>
    </div>
</header>
<body>
    <jsp:include page="<%=page_body%>"/>
</body>
<!-- Footer section. -->
<footer class="footer-section">
    <div class="container">
        <ul class="footer-menu">
            <li><%= "home.jsp".equals(page_body) ? "" : ""%><a href="<%=context%>/">Home</a></li>
            <li><%= "games.jsp".equals(page_body) ? "" : ""%><a href="<%=context%>/games">Games</a></li>
            <li><a href="categories.html">Blog</a></li>
            <li><a href="community.html">Forums</a></li>
            <li><a href="contact.html">Contact</a></li>
        </ul>
        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
        <p class="copyright">
            Copyright &copy;<script>document.write(new Date().getFullYear());</script>
            All rights reserved | This template is made with
            <i class="fa fa-heart-o" aria-hidden="true"></i> by
            <a href="https://colorlib.com" target="_blank">Colorlib</a>
        </p>
    </div>
</footer>
<!--====== Javascripts & Jquery ======-->
<script src="<%=context%>/js/jquery-3.2.1.min.js"></script>
<script src="<%=context%>/js/bootstrap.min.js"></script>
<script src="<%=context%>/js/owl.carousel.min.js"></script>
<script src="<%=context%>/js/jquery.marquee.min.js"></script>
<script src="<%=context%>/js/main.js"></script>
</html>