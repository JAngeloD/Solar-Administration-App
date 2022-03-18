package testing;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import utilities.TimeFactory;
import java.math.BigInteger;
import java.text.ParseException;

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

        //Test for start of day ID
        System.out.println("\n\n7. " +  TimeFactory.atStartOfDay());
        System.out.println("8. " + TimeFactory.convertToTimestamp(TimeFactory.atStartOfDay()));
       
        //Test for end of day ID
        System.out.println("\n\n9. " +  TimeFactory.atEndOfDay());
        System.out.println("10. " + TimeFactory.convertToTimestamp(TimeFactory.atEndOfDay()));
    }
}
