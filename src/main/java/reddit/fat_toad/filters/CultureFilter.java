package reddit.fat_toad.filters;

import com.google.inject.Singleton;
import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *  The CultureFilter class is designed to determine the culture (language) based
 *  on a URI and set the appropriate attribute in the request before passing control to the next filters or servlet.
**/

@Singleton
public class CultureFilter implements Filter
{
    private FilterConfig _filter_config;

    @Override
    public void init(FilterConfig filter_config) throws ServletException
    {
        this._filter_config = filter_config;
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException
    {
        HttpServletRequest http_request = (HttpServletRequest) request;
        String uri = http_request.getServletPath();
        Matcher matcher = Pattern.compile("^/(\\w\\w)/(.*)$").matcher(uri);
        String culture = "en";

        if (matcher.matches())
            culture = matcher.group(1);

        request.setAttribute("culture", culture);
        chain.doFilter(request, response);
    }

    @Override
    public void destroy()
    {
        _filter_config = null;
    }
}