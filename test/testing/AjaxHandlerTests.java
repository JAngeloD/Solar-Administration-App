package testing;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.lang.reflect.InvocationTargetException;
import java.util.logging.Level;
import java.util.logging.Logger;
import models.Facility;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

import static org.junit.Assert.*;
import utilities.AjaxHandler;
import utilities.CSVParser;

/**
 *
 * @author 856622
 */
public class AjaxHandlerTests {

    CSVParser csv = new CSVParser();

    @Before
    public void setUp() {
        ajax = new AjaxHandler();
    }

    @After
    public void tearDown() {
    }
    
    @Test
    public void test() {
        
        double actualValue = 32;
        
        Facility fac = new Facility();
        fac.setSolarIrridinaceGHI(actualValue);
        
        double testData = 0;
        try {
            testData = csv.getData(fac, "getSolarIrridinaceGHI");
        } catch (Exception e) {
            System.out.println(e.toString());
        }
        
        System.out.println("Testing getData() method results:" + "\n" +
                                      "actual value: " + actualValue + "\n" +
                                      "output value: " + testData);
        
        assertEquals(testData, actualValue, 0);
    }
}
