package reddit.fat_toad.services.session;

import java.time.Duration;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;

public class Sessions
{
    private static ArrayList<TokenStorage> _sessions = new ArrayList<>();

    private class TokenStorage
    {
        private String _token;
        private Date _date;

        // <--====== Get, Set sector. ======-->
        public String GetToken() { return _token; }
        public Date GetDate() { return _date; }

        public void SetToken(String token) { this._token = token; }
        public void SetDate(Date date) { this._date = date; }
    }

    public void AddSession(String new_token)
    {
        TokenStorage new_cell = new TokenStorage();

        new_cell.SetToken(new_token);
        new_cell.SetDate(new Date());

        _sessions.add(new_cell);
    }

    public boolean ConfirmAvailability(String token_verification)
    {
        if (token_verification == null)
            return false;

        Iterator<TokenStorage> iterator = _sessions.iterator();

        while (iterator.hasNext())
        {
            TokenStorage storage_i = iterator.next();

            if (storage_i.GetToken().equals(token_verification))
            {
                Duration duration = Duration.between(storage_i.GetDate().toInstant(), Instant.now());
                long days = duration.toDays();

                if (days <= 4)
                    return true;
                else
                {
                    iterator.remove();
                    break;
                }
            }
        }

        return false;
    }
}
