package reddit.fat_toad.ioc;

import com.google.inject.servlet.ServletModule;
import reddit.fat_toad.servlets.*;
import reddit.fat_toad.filters.*;

public class RouterModule extends ServletModule
{
    @Override
    protected void configureServlets()
    {
        filter("/*").through(CultureFilter.class);
        serve("/home").with(HomeServlet.class);
        serve("/games").with(GamesServlet.class);
        serve("/blogs").with(BlogsServlet.class);
        serve("/blogs/single_blog").with(SingleBlogServlet.class);
        serve("/forums").with(ForumsServlet.class);
        serve("/contact").with(ContactServlet.class);
        serve("/signin").with(SignInServlet.class);
        serve("/signup").with(SignUpServlet.class);
        serve("/VT_").with(TokenValidationServlet.class);
        serveRegex("/(\\w\\w)/home").with(HomeServlet.class);
        serveRegex("/(\\w\\w)/games").with(GamesServlet.class);
        serveRegex("/(\\w\\w)/blogs").with(BlogsServlet.class);
        serveRegex("/(\\w\\w)/blogs/single_blog").with(SingleBlogServlet.class);
        serveRegex("/(\\w\\w)/forums").with(ForumsServlet.class);
        serveRegex("/(\\w\\w)/contact").with(ContactServlet.class);
    }
}