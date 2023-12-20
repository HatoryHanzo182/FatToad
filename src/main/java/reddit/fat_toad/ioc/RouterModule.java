package reddit.fat_toad.ioc;

import com.google.inject.servlet.ServletModule;
import reddit.fat_toad.servlets.*;

public class RouterModule extends ServletModule
{
    @Override
    protected void configureServlets()
    {
        serve("/").with(HomeServlet.class);
        serve("/home").with(HomeServlet.class);
        serve("/games").with(GamesServlet.class);
        serve("/blogs").with(BlogsServlet.class);
        serve("/forums").with(ForumsServlet.class);
        serve("/contact").with(ContactServlet.class);
        serve("/signin").with(SignInServlet.class);
        serve("/signup").with(SignUpServlet.class);
    }
}