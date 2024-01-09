package reddit.fat_toad.services.hash;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.nio.charset.StandardCharsets;

/**
 *  This class can be used to securely hash strings using the SHA-256
 *  algorithm, which is often used to store hashed passwords in databases.
**/

public class SHA256Hashing
{
    public String HashString(String input)
    {
        try
        {
            MessageDigest digest = MessageDigest.getInstance("SHA-256");
            byte[] hashBytes = digest.digest(input.getBytes(StandardCharsets.UTF_8));
            StringBuilder hexStringBuilder = new StringBuilder();

            for (byte b : hashBytes)
                hexStringBuilder.append(String.format("%02x", b));

            return hexStringBuilder.toString();
        }
        catch (NoSuchAlgorithmException e)
        {
            e.printStackTrace();
            return null;
        }
    }
}
