package testing;

import java.util.Arrays;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import utilities.ReportBuilder;

/**
 *
 * @author 821320
 */
public class ReportBuilderTests {

    @Before
    public void setUp() {

    }

    @After
    public void tearDown() {

    }
    
    @Test
    public void documentation() {
        System.out.println("----Report Builder Alamanac----");
        System.out.println("------------");
        System.out.println("Report 1: Annual Report / Month Comparison");
        System.out.println("x: ReportBuilder.getAllMonths(), return int[]");
        System.out.println("y1: ReportBuilder.getEnergyByYear(int year), return double[]");
        System.out.println("y2: ReportBuilder.getCumulativeEnergyByYear(int year), returns double[]");
        System.out.println("------------");
        System.out.println("Report 2: Annual Report / Year Comparison");
        System.out.println("x: ReportBuilder.getYears(), return int[]");
        System.out.println("y: ReportBuilder.getTotalEnergyByYears(), return double[]");
        System.out.println("------------");
        System.out.println("Report 3: Annual Report / Current Year");
        System.out.println("x: ReportBuilder.getAllMonths(), return int[]");
        System.out.println("y1: ReportBuilder.getEnergyByYear(int year), return double[]");
        System.out.println("y2: ReportBuilder.getCumulativeEnergyByYear(int year), returns double[]");
        System.out.println("------------");
        System.out.println("------------");
        System.out.println("Report 4: Monthly Report / Compared to Months of Previous years");
        System.out.println("x: ReportBuilder.getYears(), return int[]");
        System.out.println("y: ReportBuilder.getMonthEnergyPastYears(), return double[]");
        System.out.println("------------");
        
        System.out.println("");
        System.out.println("---------------");
        
    }

    @Test
    public void testMonths() {
        System.out.println("");
        
        //Test months for the current year
        int[] months = ReportBuilder.getMonths();
        System.out.println("Months that have happened in current year. getMonths(): " + Arrays.toString(months));
        
        //Check the value matches to the timestamp format, 01 == 1.
        //if (01 == months[0]){
            //System.out.println("01 will match to 1");
        //}
    }
    
    @Test
    public void testAllMonths() {
        System.out.println("");

        //Test all months
        int[] allMonths = ReportBuilder.getAllMonths();
        System.out.println("Months in a year. getAllMonths(): " + Arrays.toString(allMonths));
        
    }
    
    @Test
    public void testYears() {
        //System.out.println("");
        
        //Test years
        int[] years = ReportBuilder.getYears();
        System.out.println("Years. Returns an array of the 5 previous years to the current year. getYears(): " + Arrays.toString(years));
    }
               
}

