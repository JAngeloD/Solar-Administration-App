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
import models.PCC;
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

    CSVParser parser = new CSVParser();

    @Before
    public void setUp() {
        parser = new CSVParser();
    }

    @After
    public void tearDown() {
    }
    
    @Test
    public void testGetDataFacility() {
        
//        double actualValue = 32;
//        
//        Facility fac = new Facility();
//        fac.setSolarIrridinaceGHI(actualValue);
//        
//        double testData = 0;
//        try {
//            testData = parser.getData(fac, "getSolarIrridinaceGHI");
//        } catch (Exception e) {
//            System.out.println(e.toString());
//        }
        
//        System.out.println("Testing getData() method results:" + "\n" +
//                                      "actual value: " + actualValue + "\n" +
//                                      "output value: " + testData);
        
//        assertEquals(testData, actualValue, 0);
    }
    
//    @Test
    public void testSubstring() {
        
        String requestedData = "FacilitygetWindSpeed";
        String modelName = requestedData.substring(0, requestedData.indexOf("get"));
        String getterMethod = requestedData.substring(requestedData.indexOf("get"));
        
        System.out.println("modelName: " + modelName + "\n" +
                                     "getterMethod: " + getterMethod);
        
        assertEquals(modelName, "Facility");
        assertEquals(getterMethod, "getWindSpeed");
    }
    
    @Test
    public void testMatch() {
        //Will store the id of the caller and splits it into the model type and the getter function
        String requestedData = "FeedergetAcOutputPhaseAverageVoltage2";
        String modelName = "get" + requestedData.substring(0, requestedData.indexOf("get"));
        String getterMethod = requestedData.substring(requestedData.indexOf("get"));
        
        if(getterMethod.substring(getterMethod.length() - 1).matches("[0-9]+")) {
            getterMethod = getterMethod.substring(0, getterMethod.length() - 1);
        }
        
        System.out.println(getterMethod);
    }
}
