package utilities;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;

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

    /**
     * Generates a list of timestamps between startDate and endDate using 10 minute timestamps
     *
     * @param startDate - Start date (YYYY-MM-DD HH-MM-SS)
     * @param endDate - end date
     * @return - a list of timestamps (unix epoch)
     * @author - Angelo De Vera 
     */
    public static ArrayList<Long> getTimeStampsInBetween(String startDate, String endDate) {

        ArrayList<Long> list = new ArrayList<>();

        Timestamp start = Timestamp.valueOf(startDate);
        Timestamp end = Timestamp.valueOf(endDate);

        if (end.getTime() - start.getTime() > 0) {
            while (!start.equals(end)) {
                Long timestamp = convertToID(start);
                list.add(timestamp);
                start.setTime(start.getTime() + TimeUnit.MINUTES.toMillis(10));
            }
        }

        return list;
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

    /*
    * Get the beginning value of the long range
    *
     */
    public static Date getRangeBeginning(int year, int month) throws ParseException {

        Date begin = new SimpleDateFormat("yyyy-MM-dd").parse(year + "-" + month + "-01");
        Timestamp beginTs = new Timestamp(begin.getTime());

        return beginTs;
    }

    /*
    * Get the end value of the long range
    *
     */
    public static Date getRangeEnd(int year, int month) throws ParseException {

        //get the end of the month by getting the start of the next month
        if (month == 12) {
            month = 1;
            year++;
        } else {
            month++;
        }

        Date end = new SimpleDateFormat("yyyy-MM-dd").parse(year + "-" + month + "-01");
        Timestamp endTs = new Timestamp(end.getTime());

        return endTs;
    }
}
