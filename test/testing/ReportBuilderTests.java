package testing;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

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
        System.out.println("x: ReportBuilderv2.getSpecificMonths(ReportBuilderv2.chopTime(startDate), ReportBuilderv2.chopTime(endDate))");
        System.out.println("y1: ReportBuilderv2.getEnergyForSpecificMonths(ReportBuilderv2.chopTime(startDate), ReportBuilderv2.chopTime(endDate))");
        System.out.println("y2: ReportBuilderv2.getCumulativeEnergyForSpecificMonths(ReportBuilderv2.chopTime(startDate), ReportBuilderv2.chopTime(endDate))");
        System.out.println("------------");
        System.out.println("Report 2: Annual Report / Year Comparison");
        System.out.println("x: ReportBuilderv2.getYears(), return int[]");
        System.out.println("y: ReportBuilderv2.getTotalEnergyByYears(), return double[]");
        System.out.println("------------");
        System.out.println("Report 3: Annual Report / Current Year");
        System.out.println("x: ReportBuilderv2.getAllMonths(), return int[]");
        System.out.println("y1: ReportBuilderv2.getEnergyByYear(int year), return double[]");
        System.out.println("y2: ReportBuilderv2.getCumulativeEnergyByYear(int year), returns double[]");
        System.out.println("------------");
        System.out.println("------------");
        System.out.println("Report 4: Monthly Report / Compared to Months of Previous years");
        System.out.println("x: ReportBuilderv2.getYears(), return int[]");
        System.out.println("y: ReportBuilderv2.getMonthEnergyPastYears(), return double[]");
        System.out.println("------------");
        
        System.out.println("");
        System.out.println("---------------");
        
    }
               
}

