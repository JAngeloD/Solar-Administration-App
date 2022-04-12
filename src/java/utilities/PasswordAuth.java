package utilities;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/**
 * Class used to hash passwords for storage
 * 
 * Using MD5 for hashing passwords may be changed to PBKDF2
 * @author Darshil
 */
public class PasswordAuth {
    
    /**
     * Method used to hash passwords using MD5 algorithm
     * 
     * @param password takes in a un-hashed password
     * @return a hashed password
     */
    public static String hashPassword(String password) {
        
        String hashedPassword;
        
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            
            md.update(password.getBytes());
            
            // get hash's bytes in decimal format
            byte[] bytes = md.digest();
            
            // convert bytes into hexadecimal format
            StringBuilder sb = new StringBuilder();
            for ( int i = 0; i < bytes.length; i++ ) {
                sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
            }
            
            hashedPassword = sb.toString();
        } catch (NoSuchAlgorithmException e) {
            // if for some reason the algorithm doesn't work 
            return password;
        }
        
        return hashedPassword;
    }
    
}
