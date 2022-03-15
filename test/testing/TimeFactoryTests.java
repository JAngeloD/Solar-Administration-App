package testing;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import utilities.TimeFactory;
import java.math.BigInteger;

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

    @Test
    public void testCurrentTime() {
        
        //Test for current Time
        //System.out.println(TimeFactory.getCurrentTime());
        
        //Test for convertToID
        //System.out.println(TimeFactory.convertToID(TimeFactory.getCurrentTime()));

        //Test for convertToTimestamp
        // Big Integer needs the value as a string when creating one
        // but if big int is stored as the datatype in the database we should be good
        BigInteger bi = new BigInteger("202203141440000496606");
        System.out.println(TimeFactory.convertToTimestamp(bi));
    }
}
