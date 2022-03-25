package utilities;

import dbutil.PccDB;
import java.sql.SQLException;
import java.text.ParseException;
import java.time.Year;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import models.PCC;
import servlets.PCCDetailServlet;

/**
 * A class that will return an array for various different data points.
 *
 * @author 821320
 */
public class ReportBuilder {

    public ReportBuilder() {

    }

    /*
    * Useful for reports 2 and 4.
    * Returns an array of years for x values.
    * To my understanding it is the current year, and the five years preceding it.
     */
    public static int[] getYears() {

        int[] years = new int[6];

        //get the current year and add it to the end of array
        int current = Year.now().getValue();
        years[5] = current;

        //add the years to the array, starting with the oldest year working back to current.
        int z = 1;
        for (int i = 4; i != -1; i--) {
            years[i] = current - z;
            z++;
        }

        return years;
    }

    /*
    * Useful for reports 1 and 3.
    * Returns an array of months for x values
     */
    public static int[] getAllMonths() {
        return new int[]{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12};
    }

    /*
    * Useful for report 3
    * Returns an array of months that have happened in the current year for x values
    * March = 2, not 3
     */
    public static int[] getMonths() {
        //Get the current year and month
        Date current = new Date();
        int month = current.getMonth();

        //Initialize array
        int months[] = new int[month + 1];

        for (int i = 0; i <= month; i++) {
            months[i] = i + 1;
        }

        return months;
    }

    /*
    * Useful for report 1. Monthly energy for y axis.
    * Monthly Report where you compare this years months to the same month of previous years.
    *
    * @param year, the year for the energy you'd like to recieve
     */
    public static double[] getEnergyByYear(int year) throws SQLException {
        //Bring in the access to the database
        PccDB pccDB = new PccDB();

        int[] months = getAllMonths();

        //the energy month totals
        double[] monthlyEnergy = new double[12];

        //Loop through months and get the energy output
        for (int month : months) {
            try {
                //Get the PCC list for the month 
                Date begin = TimeFactory.getRangeBeginning(year, month);
                Date end = TimeFactory.getRangeEnd(year, month);

                //System.out.println(begin);
                //System.out.println(end);
                List<PCC> pccList = pccDB.getMonthSearchResults(begin, end);

                //Go through the list and add up the energy
                double totalEnergy = 0;
                for (PCC pcc : pccList) {
                    double energy = pcc.getAcOutputEnergy();
                    totalEnergy += energy;
                }

                monthlyEnergy[month - 1] = totalEnergy;

            } catch (ParseException ex) {
                System.out.println("Parse");
            } catch (SQLException ex) {
                System.out.println("SQLEXEEEEEEEEE");
            }

            //System.out.println(Arrays.toString(monthlyEnergy));            
        }

        return monthlyEnergy;
    }

    /*
    * Useful for report 2.
    * Get cumulative monthly energy value for a year.
     */
    public static double[] getTotalEnergyByYears() throws SQLException {

        //get years
        int[] years = getYears();
        //System.out.println(Arrays.toString(years));

        //for each year get the cumulative months energies, then the last value of the energies
        double[] yearEnergy = new double[years.length];
        int i = 0;
        for (int year : years) {
            double[] monthlyEnergies;
            try {
                monthlyEnergies = ReportBuilder.getCumulativeEnergyByYear(year);
                //System.out.println(Arrays.toString(monthlyEnergies));
                yearEnergy[i] = monthlyEnergies[monthlyEnergies.length - 1];
                i++;
            } catch (SQLException ex) {
                Logger.getLogger(PCCDetailServlet.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        //System.out.println(Arrays.toString(yearEnergy));

        return yearEnergy;
    }

    /*
    * Useful for report 1, cumulative energy for y2
     */
    public static double[] getCumulativeEnergyByYear(int year) throws SQLException {

        //get the monthly energies
        double[] monthlyEnergies = getEnergyByYear(year);

        //get the cumulative energy values
        double[] cumulativeEnergy;
        
        //Dont cumulate months that havent happened yet
        if (year == Year.now().getValue()) {
            int[] currentYearMonths = getMonths();
            cumulativeEnergy = new double[currentYearMonths.length];
            
            for (int z = 0; z < currentYearMonths.length; z++) {
                if (z == 0) {
                    cumulativeEnergy[z] = monthlyEnergies[z];
                } else {
                    cumulativeEnergy[z] = monthlyEnergies[z] + cumulativeEnergy[z - 1];
                }
            }
        } else {
            cumulativeEnergy = new double[12];
            int i = 0;
            
            for (double month : monthlyEnergies) {
                if (i == 0) {
                    cumulativeEnergy[i] = month;
                } else {
                    cumulativeEnergy[i] = month + cumulativeEnergy[i - 1];
                }
                i++;
            }
        }
        //System.out.println(Arrays.toString(cumulativeEnergy));
        return cumulativeEnergy;
    }
    
    /*
    * Useful report 4
    * Returns the last full month of the current year compared to the past five years
    */
    public static double[] getMonthEnergyPastYears() throws ParseException, SQLException {
        
        //PccDB
        PccDB pccDB = new PccDB();
        
        //get the last full month of the year, this will return 2 for february
        // Be weary for december though so we will minus one and add one, because the way im
        // storing my month values store january as 1 at 0.
        Date date = new Date();
        int month = date.getMonth() - 1;
        int prevMonth = month + 1;
        
        //get the years
        int[] years = getYears();
        
        int i = 0;
        double totalEnergy;
        double[] monthlyEnergy = new double[years.length];
        
        for (int year: years) {
        
            //get a begin and end range
            Date begin = TimeFactory.getRangeBeginning(year, prevMonth);
            Date end = TimeFactory.getRangeEnd(year, prevMonth);
            
            //make the query call
            List<PCC> pccList = pccDB.getMonthSearchResults(begin, end);
            
            totalEnergy = 0;
            
            for (PCC pcc: pccList) {
                double energy = pcc.getAcOutputEnergy();
                totalEnergy += energy;
            }
            
            //add it to the array
            monthlyEnergy[i] = totalEnergy;
            i++;
        }
        
        return monthlyEnergy;
    }

}
