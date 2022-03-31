package models;

/**
 *
 * @author 821320
 */
public class Output {

    public int x;
    public String xString;
    public double y1;
    public double y2;

    public Output() {

    }

    public Output(int x, double y1) {
        this.x = x;
        this.y1 = y1;
    }

    public Output(int x, double y1, double y2) {
        this.x = x;
        this.y1 = y1;
        this.y2 = y2;
    }
    
    public Output(String x, double y1, double y2) {
        this.xString = x;
        this.y1 = y1;
        this.y2 = y2;
    }

    /*
    * Get the the array of output objects for the jsp reports 1 and 3
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

    /*
    * Get the the array of output objects for the jsp reports 2 and 4
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

    public String getxString() {
        return xString;
    }

    /*
    * Convert int to month String
     */
    public String[] getMonthStrings(int[] x) {

        int length = x.length;
        String[] stringArray = new String[length];
        
        int prevMonth = 0;
        for (int i = 0; i < length; i++) {
            String monthString = "";
            int xValue = x[i];
            
            if (prevMonth > xValue) {
                monthString = "| ";
            }
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

    public int getX() {
        return x;
    }

    public double getY1() {
        return y1;
    }

    public double getY2() {
        return y2;
    }
}
