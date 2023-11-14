package reddit.fat_toad.ioc;

import com.google.inject.servlet.ServletModule;
import reddit.fat_toad.servlets.HomeServlet;
import reddit.fat_toad.servlets.GamesServlet;

public class RouterModule extends ServletModule
{
    @Override
    protected void configureServlets()
    {
        serve("/").with(HomeServlet.class);
        serve("/home").with(HomeServlet.class);
        serve("/games").with(GamesServlet.class);
    }
}
