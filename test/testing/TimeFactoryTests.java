package testing;

import java.sql.Timestamp;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import utilities.TimeFactory;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.concurrent.TimeUnit;

/**
 *
 * @author 821320
 */
public class TimeFactoryTests {

    @Before
    public void setUp() {

    }

    @After
    public void tearDown() {

    }

    public void testCurrentTime() throws ParseException {

        //Test for current Time
        System.out.println("1. " + TimeFactory.getCurrentTimestamp());

        //Test for convertToID
        System.out.println("2. " + TimeFactory.convertToID(TimeFactory.getCurrentTimestamp()));

        //Test for convertToTimestamp
        // Big Integer needs the value as a string when creating one
        // but if big int is stored as the datatype in the database we should be good
        System.out.println("3. " + TimeFactory.convertToTimestamp(TimeFactory.convertToID(TimeFactory.getCurrentTimestamp())));

        System.out.println("");
        System.out.println("");

        //switch the order
        //Test for current Time
        System.out.println("4. " + TimeFactory.getCurrentTimestamp());

        //Test for convertToTimestamp
        // Big Integer needs the value as a string when creating one
        // but if big int is stored as the datatype in the database we should be good
        System.out.println("5. " + TimeFactory.convertToTimestamp(TimeFactory.convertToID(TimeFactory.getCurrentTimestamp())));

        //Test for convertToID
        System.out.println("6. " + TimeFactory.convertToID(TimeFactory.getCurrentTimestamp()));

        System.out.println("");
        System.out.println("");

        //Test getting the long range for month in a year
        System.out.println("Long Range Tests");

        Date begin = TimeFactory.getRangeBeginning(2021, 01);
        Date finish = TimeFactory.getRangeEnd(2021, 01);

        System.out.println("begin: " + begin);
        System.out.println("finish: " + finish);

        //If you ever need to get timestamp Id's for mocks, replace date in next line and use below: 
        Date date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse("2020-02-22 17:04:47.0");
        Timestamp ts = new Timestamp(date.getTime());
        System.out.println("Timestamp: " + ts);
        System.out.println("ID: " + TimeFactory.convertToID(ts));
    }

    @Test
    public void getTimeStampsInBetweenTest() {
        String start = "2022-04-04 00:00:00";
        String end = "2022-04-04 24:00:00";

        List<Long> list = TimeFactory.getTimeStampsInBetween(start, end);

        for (long val : list) {
            System.out.println(val + ",");
        }

        System.out.println(list.size());
    }

    
    public void timeStampMath() {
        Timestamp start = Timestamp.valueOf("2022-04-04 00:00:00");
        Timestamp end = Timestamp.valueOf("2022-04-04 24:00:00");

        System.out.println(end.getTime() - start.getTime());
        
    }
}
