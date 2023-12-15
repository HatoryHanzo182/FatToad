package reddit.fat_toad.ioc;

import com.google.inject.Guice;
import com.google.inject.Injector;
import com.google.inject.servlet.GuiceServletContextListener;
import reddit.fat_toad.db.DB;

public class GuiceServletConfig extends GuiceServletContextListener
{
    @Override
    protected Injector getInjector()
    {
        DB db = new DB();

        return Guice.createInjector(new RouterModule());
    }
}
