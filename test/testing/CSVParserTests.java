package testing;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.util.ArrayList;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;
import utilities.CSVParser;

/**
 *
 * @author 856622
 */
public class CSVParserTests {
    CSVParser parser = null;
     
    @Before
    public void setUp() {
        CSVParser parser = new CSVParser();
//        try {
//            parser = new CSVParser("Complied Data.csv");
//        }
//        catch (Exception e) {
//            System.out.println(e.toString());
//        }
    }
    
    @After
    public void tearDown() {
    }

//    @Test
//    public void testConstructor() {
//         double actualValue = 0;
//        try {
//            CSVParser parser = new CSVParser("web\\resources\\Complied Data.csv");
//            actualValue = parser.getPcc("getAcOutputLifeTimeEnergy");
//        }
//        catch (Exception e) {
//            System.out.println(e.toString());
//        }
//        
//        System.out.print(actualValue + "\n");
//    }
    
    @Test
    public void testGetData() {
        String[] test = {"Pcc_Get_AcOutputRealPower", "Pcc_Get_AcOutputPhaseCCurrent", "Facility_Get_BackOfPanelTemperature1"};
        ArrayList<String[]> list = CSVParser.getData(test);
    }
}
