package testing;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

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
    CSVParser parser = new CSVParser();
     
    @Before
    public void setUp() {
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

    @Test
    public void testConstructor() {
         double actualValue = 0;
        try {
            CSVParser parser = new CSVParser("web\\resources\\Complied Data.csv");
            actualValue = parser.getPcc("getAcOutputLifeTimeEnergy");
        }
        catch (Exception e) {
            System.out.println(e.toString());
        }
        
        System.out.print(actualValue + "\n");
    }
}
