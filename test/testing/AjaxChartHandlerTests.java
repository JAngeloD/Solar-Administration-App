/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testing;

import java.util.Random;
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
    public void jsonTemplateStringTestLineGraph() {
        
        String output = "";
        
        //Testing only
        Random rd = new Random();
        int[] y = new int[9];
        for (int i = 0; i < y.length; i++) {
            y[i] = rd.nextInt(100);
        }

        String[] x = new String[]{"\"2022-02-09 03:00:00\"", "\"2022-02-09 05:00:00\"", "\"2022-02-09 07:00:00\"", "\"2022-02-09 09:00:00\"", "\"2022-02-09 11:00:00\"",
            "\"2022-02-09 13:00:00\"", "\"2022-02-09 15:00:00\"", "\"2022-02-09 17:00:00\"", "\"2022-02-09 19:00:00\""};
        
        //output = charting.buildLineGraphFromJSON(800, 500, x, y, "GRAPH TITLE", "X TITLE", "Y TITLE", "2022-02-09", "2022-02-10");
        
        System.out.println(output);
    }
    
    @Test
    public void jsonTemplateStringTestBarGraph() {
        
        String output = "";
        
        
        String[] y = new String[]{"\"Sungrow SG125HV#1\"", "\"Sungrow SG125HV#2\"", "\"Sungrow SG125HV#3\""};
        
        //Testing only
        Random rd = new Random();
        int[] x = new int[3];
        for (int i = 0; i < y.length; i++) {
            x[i] = rd.nextInt(100);
        }

        //output = charting.buildBarGraphFromJSON(800, 500, x, y, "GRAPH TITLE", "X TITLE", "Y TITLE");
        
//        System.out.println(output);
    }
    
//    @Test
    public void convertJSONToString() {
        
        try {
            String output = charting.convertFileIntoString("test\\testing\\LineGraphTemplate.json");
            System.out.println(output);
        }
        catch (Exception e) {
            System.out.println(e.toString());
        }
        
    }
}
