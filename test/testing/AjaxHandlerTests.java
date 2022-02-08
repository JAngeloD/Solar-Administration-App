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

/**
 *
 * @author 856622
 */
public class AjaxHandlerTests {

    AjaxHandler ajax = new AjaxHandler();

    @Before
    public void setUp() {
        ajax = new AjaxHandler();
    }

    @After
    public void tearDown() {
    }
    
    @Test
    public void test() {
        
        double actualValue = 0;
        
        Facility fac = new Facility();
        fac.setSolarIrridinaceGHI(actualValue);
        
        double testData = 0;
        try {
            testData = ajax.getData(fac, "getSolarIrridinaceGHI");
        } catch (IllegalArgumentException ex) {
            Logger.getLogger(AjaxHandlerTests.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(AjaxHandlerTests.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InvocationTargetException ex) {
            Logger.getLogger(AjaxHandlerTests.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        System.out.println("actual value: " + actualValue);
        System.out.println("output value: " + testData);
        
        assertEquals(testData, actualValue, 0);
    }
}
