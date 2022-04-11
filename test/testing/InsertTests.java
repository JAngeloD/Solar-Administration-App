package testing;

import java.sql.Timestamp;
import java.util.Date;
import models.Facility;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import servlets.TransferDatabase;

public class InsertTests {

    Object insertData = null;

    @After
    public void tearDown() {
        insertData = null;
    }

    @Test
    public void testFacility() {
        insertData = null;
        Timestamp timestamp = new Timestamp(System.currentTimeMillis());

        insertData = new Facility("102310", Long.parseLong("4192"), timestamp, 20.0, 49.0, 24.0, 28.0, 28.0, 28.0);
        TransferDatabase transfer = (TransferDatabase) insertData;
        transfer.PutIntoDatabase();

    }

}
