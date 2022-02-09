/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testing;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;
import utilities.AjaxChartHandler;

/**
 *
 * @author 856622
 */
public class AjaxChartHandlerTests {

    AjaxChartHandler charting = new AjaxChartHandler();

    @Before
    public void setUp() {
        charting = new AjaxChartHandler();
    }

    @After
    public void tearDown() {
        charting = null;
    }

    @Test
    public void jsonTemplateStringTest() {

        int[] x
                = new int[]{5, 3, 6, 2};

        int[] y
                = new int[]{1, 2, 3, 4};

        String output = charting.jsonTemplateString(x, y, "lines");
        
        System.out.println(output);
    }
}
