/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utilities;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
import models.*;

/**
 *
 * @author Andrew
 */
public class DataGenerator {

    private String recordID = "100000000";
    private Integer timeStampID = 4193;
    private SimpleDateFormat formatter = new SimpleDateFormat("yyyy-mm-dd HH:mm:ss");
    private Date timeStamp = new Date(System.currentTimeMillis());

    public String recordID() {
        int tempRecord = 0;
        tempRecord = Integer.parseInt(recordID);
        tempRecord++;

        return Integer.toString(tempRecord);
    }

    public Integer timeStampId() {
        return timeStampID++;
    }

    public Date timeStamp() {
        return timeStamp;
    }

    public Double randomPOA() {
        double randomPOA = new Random().nextDouble() * (1071 - -5) + -5;
        BigDecimal bd = new BigDecimal(randomPOA).setScale(2, RoundingMode.CEILING);
        return bd.doubleValue();
    }

    public double randomGHI() {
        double randomGHI = new Random().nextDouble() * (3248);
        BigDecimal bd = new BigDecimal(randomGHI).setScale(2, RoundingMode.CEILING);
        return bd.doubleValue();
    }

    public double randomTemp() {
        double randomTemp = new Random().nextDouble() * (39.3 - -13.6) + -13.6;
        BigDecimal bd = new BigDecimal(randomTemp).setScale(2, RoundingMode.CEILING);
        return bd.doubleValue();
    }

    public double randomAmbientTemp() {
        double randomAmbientTemp = new Random().nextDouble() * (39.5 - -15.3) + -15.3;
        BigDecimal bd = new BigDecimal(randomAmbientTemp).setScale(2, RoundingMode.CEILING);
        return bd.doubleValue();
    }

    public double randomWindSpeed() {
        double randomWindSpeed = new Random().nextDouble() * (10.3);
        BigDecimal bd = new BigDecimal(randomWindSpeed).setScale(2, RoundingMode.CEILING);
        return bd.doubleValue();
    }

}
