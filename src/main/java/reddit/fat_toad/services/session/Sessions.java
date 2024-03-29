package reddit.fat_toad.services.session;

import java.time.Duration;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;

/**
 *  This class is useful for managing user sessions,
 *  issuing and validating authentication tokens, and tracking session lifetimes.
 *  It uses the _sessions collection to store session data.
**/

public class Sessions
{
    private static ArrayList<TokenStorage> _sessions = new ArrayList<>();

    private class TokenStorage
    {
        /**
         *  Nested inner class representing the storage of session information (token, owner, creation date).
         *  It has methods for getting (GetToken(), GetOwner(), GetDate()) and setting
         *  (SetToken(), SetOwner(), SetDate()) values.
        **/

        private String _token;
        private String _owner;
        private Date _date;

        // <--====== Get, Set sector. ======-->
        public String GetToken() { return _token; }
        public String GetOwner() { return _owner; }
        public Date GetDate() { return _date; }

        public void SetToken(String token) { this._token = token; }
        public void SetOwner(String owner) { this._owner = owner; }
        public void SetDate(Date date) { this._date = date; }
    }

    public void AddSession(String new_token, String new_owner)  // Creates a new TokenStorage object.
    {                                                          // Sets the token, owner, and current date for an object.
                                                              //Adds an object to the sessions collection.
        TokenStorage new_cell = new TokenStorage();

        new_cell.SetToken(new_token);
        new_cell.SetOwner(new_owner);
        new_cell.SetDate(new Date());

        _sessions.add(new_cell);
    }

    public boolean ConfirmAvailability(String token_verification)  // Checks the availability (validity) of the token.
    {                                                             // Accepts a token for verification. Uses an iterator to iterate through a collection of sessions.
                                                                 // If there is a session with a matching token: Checks if less than 4 days have passed since the session was created.
                                                                // If yes, returns true. If not, deletes the session and returns false.
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

    public String GetOwnerByToken(String token)  // Returns the owner of the session for the given token.
    {                                           // Uses an iterator to iterate through a collection of sessions.
        if (token == null)
            return null;

        Iterator<TokenStorage> iterator = _sessions.iterator();

        while (iterator.hasNext())
        {
            TokenStorage storage_i = iterator.next();

            if (storage_i.GetToken().equals(token))
                return storage_i.GetOwner();
        }

        return null;
    }
}
