package models;

/**
 *
 * @author 821320
 */
public class Output {
    public int x;
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
    /*
    * Get the the array of output objects for the jsp reports 1 and 3
    */
    public Output[] getOutputArray(int[] x, double[] y1, double[] y2) {
        int length;
        if (y2.length != x.length) {
            length = y2.length;
        } else {
            length = x.length;
        }
        
        Output[] outputArray = new Output[length];
        
        for (int i = 0; i < length; i++) {
            int xValue = x[i];
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
