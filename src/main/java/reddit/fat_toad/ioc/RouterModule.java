package reddit.fat_toad.ioc;

import com.google.inject.servlet.ServletModule;
import reddit.fat_toad.servlets.MainServlet;

public class RouterModule extends ServletModule
{
    @Override
    protected void configureServlets()
    {
        serve("/").with(MainServlet.class);
    }
}
