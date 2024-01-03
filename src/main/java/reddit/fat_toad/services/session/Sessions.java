package reddit.fat_toad.services.session;

import java.util.ArrayList;

public class Sessions
{
    private static ArrayList<TokenStorage> _sessions = new ArrayList<>();

    private class TokenStorage
    {
        private String _token;

        // <--====== Get, Set sector. ======-->
        public String GetToken() { return _token; }

        public void SetToken(String token) { this._token = token; }
    }

    public void AddSession(String new_token)
    {
        TokenStorage new_cell = new TokenStorage();

        new_cell.SetToken(new_token);

        _sessions.add(new_cell);
    }

    public boolean ConfirmAvailability(String token_verification)
    {
        if (token_verification == null)
            return false;

        for (TokenStorage storage_i : _sessions)
        {
            if (storage_i.GetToken().equals(token_verification))
                return true;
        }

        return false;
    }
}
