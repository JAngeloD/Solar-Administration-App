package utilities;

import dbutil.PccDB;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.Year;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import models.PCC;

/**
 *
 * @author 821320
 */
public class ReportBuilderv2 {

    public ReportBuilderv2() {

    }

    /*
    * Useful for report 3.
    * Returns an array of months for x values
    * @return array of integers 
    */
    public static int[] getAllMonths() {
        return new int[]{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12};
    }

    /*
    * Useful for report 3
    * Returns an array of months that have happened in the current year for x values
    * March = 2, not 3
    * @return array of integers
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
    * Useful for reports 2 and 4.
    * Returns an array of years for x values.
    * To my understanding it is the current year, and the five years preceding it.
    * @return an array of integers
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
    * Useful for report 1, return the x axis array between two dates.
    * @param startDate, endDate, the starting and end dates to retrieve the array of month ints
    * @return an array of integers
    */
    public static int[] getSpecificMonths(String startDate, String endDate) throws ParseException {

        //All the values we will need
        Date start = new SimpleDateFormat("yyyy-MM-dd").parse(startDate);
        Date end = new SimpleDateFormat("yyyy-MM-dd").parse(endDate);

        //year = 2020
        int startYear = start.getYear() + 1900;
        int endYear = end.getYear() + 1900;

        //Jan = 1
        int startMonth = start.getMonth() + 1;
        int endMonth = end.getMonth() + 1;

        int yearDifference = endYear - startYear;

        //find the total months we will need
        int totalMonths = 0;
        if (yearDifference == 1) {
            for (int i = startMonth; i <= 12; i++) {
                totalMonths++;
            }

            for (int z = 1; z <= endMonth; z++) {
                totalMonths++;
            }
        } else if (yearDifference > 1) {
            for (int i = startMonth; i <= 12; i++) {
                totalMonths++;
            }

            for (int i = 1; i < yearDifference; i++) {
                for (int x = 1; x <= 12; x++) {
                    totalMonths++;
                }
            }

            for (int z = 1; z <= endMonth; z++) {
                totalMonths++;
            }

        } else {
            for (int i = startMonth; i <= endMonth; i++) {
                totalMonths++;
            }
        }

        //System.out.println(totalMonths);
        //start adding the months to the array
        int[] months = new int[totalMonths];
        if (yearDifference == 1) {
            int arrayPlacement = 0;
            for (int i = startMonth; i <= 12; i++) {
                months[arrayPlacement] = i;
                arrayPlacement++;
            }

            for (int z = 1; z <= endMonth; z++) {
                months[arrayPlacement] = z;
                arrayPlacement++;
            }
        } else if (yearDifference > 1) {
            int arrayPlacement = 0;
            for (int i = startMonth; i <= 12; i++) {
                months[arrayPlacement] = i;
                arrayPlacement++;
            }

            for (int i = 1; i < yearDifference; i++) {
                for (int x = 1; x <= 12; x++) {
                    months[arrayPlacement] = x;
                    arrayPlacement++;
                }
            }

            for (int z = 1; z <= endMonth; z++) {
                months[arrayPlacement] = z;
                arrayPlacement++;
            }
        } else {
            int arrayPlacement = 0;
            for (int i = startMonth; i <= endMonth; i++) {
                months[arrayPlacement] = i;
                arrayPlacement++;
            }
        }

        //System.out.println(startYear + " " + startMonth + " "+ " \n" + endYear + " " + endMonth + " ");
        //System.out.println(totalMonths);
        //System.out.println(Arrays.toString(months));
        return months;
    }

    /*
    * Useful for report 1
    * Get the energy values for the specific months specified
    * @param startDate, endDate, the starting and end date 
    * @return an array of doubles
    */
    public static double[] getEnergyForSpecificMonths(String startDate, String endDate) throws ParseException, SQLException {

        //All the values we will need
        Date start = new SimpleDateFormat("yyyy-MM-dd").parse(startDate);
        Date end = new SimpleDateFormat("yyyy-MM-dd").parse(endDate);

        //year = 2020
        int startYear = start.getYear() + 1900;
        int endYear = end.getYear() + 1900;
        int yearDifference = endYear - startYear;

        //Bring in the access to the database
        PccDB pccDB = new PccDB();

        int[] months = getSpecificMonths(startDate, endDate);

        //the energy month totals
        double[] monthlyEnergy = new double[months.length];

        //previous month holder
        int prevMonth = 0;

        //arrayholder
        int arrayHolder = 0;
        //loop for each month
        for (int month : months) {
            Date begin;
            Date finish;

            if (yearDifference > 1) {
                //need to see if the year changes
                if (month < prevMonth) {
                    begin = TimeFactory.getRangeBeginning(endYear - yearDifference + 1, month);
                    finish = TimeFactory.getRangeEnd(endYear - yearDifference + 1, month);
                    //System.out.println(begin);
                    //System.out.println(finish);
                } else {
                    begin = TimeFactory.getRangeBeginning(startYear + yearDifference - 1, month);
                    finish = TimeFactory.getRangeEnd(startYear + yearDifference - 1, month);
                    //System.out.println(begin);
                    //System.out.println(finish);
                }
            } else {
                //need to see if the year changes
                if (month < prevMonth) {
                    begin = TimeFactory.getRangeBeginning(endYear, month);
                    finish = TimeFactory.getRangeEnd(endYear, month);
                    //System.out.println(begin);
                    //System.out.println(finish);
                } else {
                    begin = TimeFactory.getRangeBeginning(startYear, month);
                    finish = TimeFactory.getRangeEnd(startYear, month);
                    //System.out.println(begin);
                    //System.out.println(finish);
                }
            }

            List<PCC> pccList = pccDB.getMonthSearchResults(begin, finish);

            //Go through the list and add up the energy
            double totalEnergy = 0;
            for (PCC pcc : pccList) {
                double energy = pcc.getAcOutputEnergy();
                totalEnergy += energy;
            }

            monthlyEnergy[arrayHolder] = totalEnergy;

            //fix values
            arrayHolder++;
            prevMonth = month;

        }

        //System.out.println(Arrays.toString(monthlyEnergy));
        return monthlyEnergy;
    }

    /*
    * Useful for report 1, y2
    * Cumulate the energy for specific months
    * @param startDate, endDate, the start and end dates
    * @return an array of doubles
    */
    public static double[] getCumulativeEnergyForSpecificMonths(String startDate, String endDate) throws ParseException, SQLException {

        //get the monthly energies
        double[] monthlyEnergies = getEnergyForSpecificMonths(startDate, endDate);

        //get the cumulative energy values
        double[] cumulativeEnergy;

        cumulativeEnergy = new double[monthlyEnergies.length];
        int i = 0;

        for (double month : monthlyEnergies) {
            if (i == 0) {
                cumulativeEnergy[i] = month;
            } else {
                cumulativeEnergy[i] = month + cumulativeEnergy[i - 1];
            }
            i++;
        }
        //System.out.println(Arrays.toString(cumulativeEnergy));
        return cumulativeEnergy;
    }

    /*
    * Useful for report 1. Monthly energy for y axis.
    * Monthly Report where you compare this years months to the same month of previous years.
    *
    * @param year, the year for the energy you'd like to recieve
    * @return an array of doubles
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
    * @return an array of doubles
    */
    public static double[] getTotalEnergyByYears() throws SQLException {

        //get years
        int[] years = getYears();
        //System.out.println(Arrays.toString(years));

        //for each year get the cumulative months energies, then the last value of the energies
        double[] yearEnergy = new double[years.length];
        int i = 0;
        for (int year : years) {
            //get the start and end date from the year
            String start = year + "-01";
            String end = year + "-12";
            double[] monthlyEnergies;
            try {
                monthlyEnergies = ReportBuilderv2.getCumulativeEnergyByYear(year);
                //System.out.println(Arrays.toString(monthlyEnergies));
                yearEnergy[i] = monthlyEnergies[monthlyEnergies.length - 1];
                i++;
            } catch (SQLException ex) {

            }

        }
        //System.out.println(Arrays.toString(yearEnergy));

        return yearEnergy;
    }

    /*
    * Useful for report 3, cumulative energy for y2
    * Get a year cumulative energy
    * @param year, the year to cumulate
    * @return an array of doubles
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
    * Returns the last full month of the current year compared to the past five years.
    * @return an array of doubles
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

        for (int year : years) {

            //get a begin and end range
            Date begin = TimeFactory.getRangeBeginning(year, prevMonth);
            Date end = TimeFactory.getRangeEnd(year, prevMonth);

            //make the query call
            List<PCC> pccList = pccDB.getMonthSearchResults(begin, end);

            totalEnergy = 0;

            for (PCC pcc : pccList) {
                double energy = pcc.getAcOutputEnergy();
                totalEnergy += energy;
            }

            //add it to the array
            monthlyEnergy[i] = totalEnergy;
            i++;
        }

        return monthlyEnergy;
    }

    /*
    * Chops the time off the date.
    * @param date, the date to chop
    * @return String of the chopped date.
    */
    public static String chopTime(String date) {
        return date.substring(0, 10);
    }

}
