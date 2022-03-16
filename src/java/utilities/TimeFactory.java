
package utilities;

import java.sql.Timestamp;
import java.math.BigInteger;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author 821320
 */
public class TimeFactory {

    public TimeFactory() {
    }

    /*
     * Gets a timestamp rounded down to the nearest 10 minute interval
     */
    public static Timestamp getCurrentTimestamp() {

        Timestamp sqlTimestamp = new Timestamp(System.currentTimeMillis());

        //begin rounding down to interval of ten
        String stringTime = sqlTimestamp.toString();
        String roundedDown = "";
        for (int i = 0; i < stringTime.length(); i++) {
            if ( i == 15 || i == 17 || i == 18 || i >= 20){
                roundedDown += "0";
            } else {
                roundedDown += stringTime.charAt(i);
            }
        }
        
        return Timestamp.valueOf(roundedDown);
    }

    /*
     * Converts a timestamp to a long
     */
    public static Long convertToID(Timestamp ts) {

        return ts.getTime();
    }

    /*
     * Converts a long to a timestamp
     */
    public static Timestamp convertToTimestamp(Long ID) throws ParseException {

        return new Timestamp(ID);
    }
}