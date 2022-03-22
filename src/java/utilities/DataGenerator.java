/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utilities;

import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.Random;
import models.*;
/**
 *
 * @author Andrew
 */
public class DataGenerator {
    private static final DecimalFormat df = new DecimalFormat("0.00");
    private String recordID = "100000000";
    private Integer timeStampID = 4193;
    private SimpleDateFormat formatter = new SimpleDateFormat("yyyy-mm-dd HH:mm:ss");
    private Date timeStamp = new Date(System.currentTimeMillis());
    public void setFacility() {
        Facility facility = new Facility();
        facility.setRecordID(recordID);
        facility.setTimeStampId(timeStampID);
        facility.setTimeStamp(timeStamp);
        facility.setSolarirridiancePOA(new Random().nextDouble()* (1071 - -5) + -5);
        facility.setSolarirridianceGHI(new Random().nextDouble() * (3248));
        facility.setBackOfPanelTemperature1(new Random().nextDouble() * (39.3 - -13.6) + -13.6);
        facility.setBackOfPanelTemperature2(new Random().nextDouble() * (30.7 - -10.9) + -10.9);
        facility.setAmbientTemperature(new Random().nextDouble() * (39.5 - -15.3) + -15.3);
        facility.setWindSpeed(new Random().nextDouble() * (10.3));
        
    }
}
