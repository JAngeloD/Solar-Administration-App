package utilities;

import java.sql.Timestamp;
import java.math.BigInteger;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

/**
 * @author 821320
 */
public class TimeFactory {

    public TimeFactory() {
    }

    public static Timestamp getCurrentTimestamp() {
        SimpleDateFormat gmtDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        gmtDateFormat.setTimeZone(TimeZone.getTimeZone("Canada/Mountain"));

        return Timestamp.valueOf(gmtDateFormat.format(new Date()));
    }

    /*
     * Gets a timestamp rounded down to the nearest 10 minute interval
     */
    public static Timestamp getCurrentTimestampInterval() {

        SimpleDateFormat gmtDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        gmtDateFormat.setTimeZone(TimeZone.getTimeZone("Canada/Mountain"));

        Timestamp sqlTimestamp = Timestamp.valueOf(gmtDateFormat.format(new Date()));

        //begin rounding down to interval of ten
        String stringTime = sqlTimestamp.toString();
        String roundedDown = "";
        for (int i = 0; i < stringTime.length(); i++) {
            if (i == 15 || i == 17 || i == 18 || i >= 20) {
                roundedDown += "0";
            } else {
                roundedDown += stringTime.charAt(i);
            }
        }

        return Timestamp.valueOf(roundedDown);
    }

    public static long atStartOfDay(String date) {
        Timestamp timestamp = Timestamp.valueOf(LocalDate.parse(date).atStartOfDay());
        return convertToID(timestamp);
    }

    public static long atEndOfDay(String date) {
        Timestamp timestamp = Timestamp.valueOf(LocalDate.parse(date).atTime(23, 59, 59));
        return convertToID(timestamp);
    }

    public static long getCurrentID() {

        return convertToID(getCurrentTimestampInterval());
    }

    /*
     * Converts a timestamp to a long
     */
    public static long convertToID(Timestamp ts) {

        return ts.getTime();
    }

    /*
     * Converts a long to a timestamp
     */
    public static Timestamp convertToTimestamp(Long ID) throws ParseException {

        return new Timestamp(ID);
    }
}
