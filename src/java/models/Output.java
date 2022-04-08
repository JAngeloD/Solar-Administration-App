package models;

/**
 * A class that constructs an Output object and make the
 * necessary adjustments to the data it holds 
 * @author Therin Mody
 */
public class Output {

    public int x;
    public String xString;
    public double y1;
    public double y2;

    /**
     * Default constructor
     */
    public Output() {

    }

    /**
     * Constructor for an output object without a y2 axis
     * @param x The x axis attribute
     * @param y1 The y1 attribute
     */
    public Output(int x, double y1) {
        this.x = x;
        this.y1 = y1;
    }

    /**
     * Constructor for an output object with two y-axis
     * @param x The x axis attribute
     * @param y1 The y1 axis attribute
     * @param y2  The y2 axis attribute
     */
    public Output(int x, double y1, double y2) {
        this.x = x;
        this.y1 = y1;
        this.y2 = y2;
    }

    /**
     * A constructor for an Output object to hold the x-axis
     * value as its adjacent String value
     * @param x the x axis attribute
     * @param y1 the y1 axis attribute
     * @param y2 the y2 axis attribute
     */
    public Output(String x, double y1, double y2) {
        this.xString = x;
        this.y1 = y1;
        this.y2 = y2;
    }

    /**
     * A method to create a array of Output objects to use for Report use case 1 & 3
     * I.e. the ones where the x axis is in months
     * @param x an array of integers for the x axis
     * @param y1 an array of doubles for the y1 axis
     * @param y2 an array of doubles for the y2 axis
     * @return outputArray the Output[] that holds the values for the reportOutput table
     */
    public Output[] getOutputArray(int[] x, double[] y1, double[] y2) {
        int length;
        String[] xString1 = getMonthStrings(x);

        if (y2.length != x.length) {
            length = y2.length;
        } else {
            length = x.length;
        }

        Output[] outputArray = new Output[length];

        for (int i = 0; i < length; i++) {
            String xValue = xString1[i];
            double y1Value = y1[i];
            double y2Value = y2[i];

            Output o = new Output(xValue, y1Value, y2Value);
            outputArray[i] = o;
        }

        return outputArray;
    }

    /**
     * A method that will get the outputArray values for the reports 2 and 4
     * i.e any report with years as the x-axis
     * @param x an int[] of x values
     * @param y1 an double[] of y values
     * @return outputArray the Output[] that holds all the Output objects you will need.
     */
    public Output[] getOutputArray(int[] x, double[] y1) {

        int length = x.length;
        Output[] outputArray = new Output[length];

        for (int i = 0; i < length; i++) {
            int xValue = x[i];
            double y1Value = y1[i];

            Output o = new Output(xValue, y1Value);
            outputArray[i] = o;
        }

        return outputArray;
    }
    
    /**
     * A method with convert an array of integers into their corresponding month String
     * @param x The array of integers
     * @return stringArray the resulting stringArray converted from integers
     */
    public String[] getMonthStrings(int[] x) {

        int length = x.length;
        String[] stringArray = new String[length];
        int yearCount = 0;
        int prevMonth = 0;

        for (int i = 0; i < length; i++) {
            String monthString = "";
            int xValue = x[i];

            if (prevMonth > xValue) {
                yearCount++;
            }

            for (int z = 0; z < yearCount; z++) {
                monthString += "|";
            }
            monthString += " ";
            
            //before judgment lol, need custom month string values
            switch (xValue) {
                case 1:
                    monthString += "Jan";
                    break;
                case 2:
                    monthString += "Feb";
                    break;
                case 3:
                    monthString += "Mar";
                    break;
                case 4:
                    monthString += "Apr";
                    break;
                case 5:
                    monthString += "May";
                    break;
                case 6:
                    monthString += "Jun";
                    break;
                case 7:
                    monthString += "July";
                    break;
                case 8:
                    monthString += "Aug";
                    break;
                case 9:
                    monthString += "Sept";
                    break;
                case 10:
                    monthString += "Oct";
                    break;
                case 11:
                    monthString += "Nov";
                    break;
                case 12:
                    monthString += "Dec";
                    break;
                default:
                    monthString = "Invalid month";
                    break;
            }
            prevMonth = xValue;
            stringArray[i] = monthString;
        }

        return stringArray;
    }

    /**
     * Simple getter for X
     * @return x
     */
    public int getX() {
        return x;
    }

    /**
     * Simple getter for y1
     * @return y1
     */
    public double getY1() {
        return y1;
    }

    /**
     * Simple getter for y2
     * @return y2
     */
    public double getY2() {
        return y2;
    }
    
    /**
     * Simple getter for xString
     * @return xString
     */
    public String getxString() {
        return xString;
    }
}
