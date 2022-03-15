
package utilities;

import java.sql.Timestamp;
import java.math.BigInteger;

/**
 *
 * @author 821320
 */
public class TimeFactory {

    public TimeFactory() {
    }

    public static Timestamp getCurrentTime() {

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
     * The int order return is YearMonthDayHourMinuteSecond
     * The data type for the timestampID will have to be BIGINT instead of INT
     */
    public static BigInteger convertToID(Timestamp ts) {

        String timeStamp = ts.toString();
        String esotericInt = "";
        for (int i = 0; i < timeStamp.length(); i++) {
            char inQuestion = timeStamp.charAt(i);
            if ('-' == inQuestion || '.' == inQuestion || ':' == inQuestion || ' ' == inQuestion) {
                continue;
            }
            esotericInt += inQuestion;
        }
        //System.out.println(esotericInt);
        
        int random = (int) (Math.random() * 1000000);
        String randomString = Integer.toString(random);

        return new BigInteger(esotericInt + randomString);
    }

    /*
     * Converts a bigdecimal back into a timestamp
     * The timestamp loses its uniqueness so dont put it back in
     */
    public static Timestamp convertToTimestamp(BigInteger ID) {

        String id = ID.toString();
        String forConversion = "";

        // year
        for (int i = 0; i < 4; i++) {
            forConversion += id.charAt(i);
        }

        forConversion += "-";

        // month
        for (int i = 4; i < 6; i++) {
            forConversion += id.charAt(i);
        }

        forConversion += "-";

        // day
        for (int i = 6; i < 8; i++) {
            forConversion += id.charAt(i);
        }

        forConversion += " ";

        // hour
        for (int i = 8; i < 10; i++) {
            forConversion += id.charAt(i);
        }

        forConversion += ":";

        // minute
        for (int i = 10; i < 12; i++) {
            forConversion += id.charAt(i);
        }

        forConversion += ":";

        // second
        for (int i = 10; i < 12; i++) {
            forConversion += id.charAt(i);
        }

        forConversion += ".";

        // nanosecond
        for (int i = 12; i < 15; i++) {
            forConversion += id.charAt(i);
        }

        //System.out.println(forConversion);

        return Timestamp.valueOf(forConversion);
    }
}