/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utilities;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.Date;
import java.util.Random;
import models.*;

/**
 *
 * @author Andrew
 */
public class DataGenerator implements Runnable{

   
    private Facility facility = new Facility();
    private PCC pcc = new PCC();
    private Inverter inverter = new Inverter();
    private String recordID = "0";
    private long timeStampID = 0;
    private Date timeStamp = new Date();

    public Facility randomFacility() {
        int tempRecord = 0;
        tempRecord = new Random().nextInt() * 1000000;
        recordID = Integer.toString(tempRecord);
        TimeFactory timeFactory = new TimeFactory();
        timeStampID = timeFactory.getCurrentID();
        Date date = new Date();
        double randomPOA = new Random().nextDouble() * (1071 - -5) + -5;
        BigDecimal bd1 = new BigDecimal(randomPOA).setScale(2, RoundingMode.CEILING);
        double randomGHI = new Random().nextDouble() * (3248);
        BigDecimal bd2 = new BigDecimal(randomGHI).setScale(2, RoundingMode.CEILING);
        double randomTemp = new Random().nextDouble() * (39.3 - -13.6) + -13.6;
        BigDecimal bd3 = new BigDecimal(randomTemp).setScale(2, RoundingMode.CEILING);
        double randomAmbientTemp = new Random().nextDouble() * (39.5 - -15.3) + -15.3;
        BigDecimal bd4 = new BigDecimal(randomAmbientTemp).setScale(2, RoundingMode.CEILING);
        double randomWindSpeed = new Random().nextDouble() * (10.3);
        BigDecimal bd5 = new BigDecimal(randomWindSpeed).setScale(2, RoundingMode.CEILING);
        Facility randomFacility = new Facility(recordID, timeStampID, date, bd1.doubleValue(), bd2.doubleValue(), bd3.doubleValue(), bd4.doubleValue(), bd2.doubleValue(), bd5.doubleValue());
        return randomFacility;
    }

    public PCC randomPCC() {
        int tempRecord = 0;
        tempRecord = new Random().nextInt() * 1000000;
        recordID = Integer.toString(tempRecord);
        TimeFactory timeFactory = new TimeFactory();
        timeStampID = timeFactory.getCurrentID();
        Date date = new Date();
        double randomEnergy = new Random().nextDouble() * (6886468 - 6298630) + 6298630;
        BigDecimal bd1 = new BigDecimal(randomEnergy).setScale(2, RoundingMode.CEILING);
        double randomRealPower = new Random().nextDouble() * (6687 - -28) + -28;
        BigDecimal bd2 = new BigDecimal(randomRealPower).setScale(2, RoundingMode.CEILING);
        double randomApparantPower = new Random().nextDouble() * (7221 - -30.27) + -30.27;
        BigDecimal bd3 = new BigDecimal(randomApparantPower).setScale(2, RoundingMode.CEILING);
        double randomReactivePower = new Random().nextDouble() * (2726);
        BigDecimal bd4 = new BigDecimal(randomReactivePower).setScale(2, RoundingMode.CEILING);
        double randomPowerFactor = new Random().nextDouble() * (1 - 0.93) + 0.93;
        BigDecimal bd5 = new BigDecimal(randomPowerFactor).setScale(2, RoundingMode.CEILING);
        double randomPhaseCurrent = new Random().nextDouble() * (166 - -0.7) + -0.7;
        BigDecimal bd6 = new BigDecimal(randomPhaseCurrent).setScale(2, RoundingMode.CEILING);
        double randomPhaseVoltage = new Random().nextDouble() * (25225 - 25100) + 25100;
        BigDecimal bd7 = new BigDecimal(randomPhaseVoltage).setScale(2, RoundingMode.CEILING);
        PCC randomPCC = new PCC(recordID, timeStampID, date, bd1.doubleValue(), bd2.doubleValue(), bd3.doubleValue(), bd4.doubleValue(), bd5.doubleValue(), bd6.doubleValue(), bd6.doubleValue(), bd6.doubleValue(), bd7.doubleValue(), bd7.doubleValue(), bd7.doubleValue());
        return randomPCC;
    }

    public Inverter randomInverter() {
        int tempRecord = 0;
        tempRecord = new Random().nextInt() * 1000000;
        recordID = Integer.toString(tempRecord);
        TimeFactory timeFactory = new TimeFactory();
        timeStampID = timeFactory.getCurrentID();
        Date date = new Date();
        Integer deviceID = new Random().nextInt(39 - 1) + 1;
        double randomOutputEnergy = new Random().nextDouble() * (6314779 - 6298630) + 6298630;
        BigDecimal bd1 = new BigDecimal(randomOutputEnergy).setScale(2, RoundingMode.CEILING);
        double randomRealPower = new Random().nextDouble() * (186);
        BigDecimal bd2 = new BigDecimal(randomRealPower).setScale(2, RoundingMode.CEILING);
        double randomApparantPower = new Random().nextDouble() * (138);
        BigDecimal bd3 = new BigDecimal(randomApparantPower).setScale(2, RoundingMode.CEILING);
        double randomPowerFactor = new Random().nextDouble() * (1);
        BigDecimal bd4 = new BigDecimal(randomPowerFactor).setScale(2, RoundingMode.CEILING);
        double randomPhaseCurrent = new Random().nextDouble() * (187);
        BigDecimal bd5 = new BigDecimal(randomPhaseCurrent).setScale(2, RoundingMode.CEILING);
        double randomPhaseVoltage = new Random().nextDouble() * (607);
        BigDecimal bd6 = new BigDecimal(randomPhaseVoltage).setScale(2, RoundingMode.CEILING);
        double randomDcReal = new Random().nextDouble() * (190);
        BigDecimal bd7 = new BigDecimal(randomDcReal).setScale(2, RoundingMode.CEILING);
        double randomDcVolt = new Random().nextDouble() * (1023);
        BigDecimal bd8 = new BigDecimal(randomDcVolt).setScale(2, RoundingMode.CEILING);
        double randomDcCurrent = new Random().nextDouble() * 186;
        BigDecimal bd9 = new BigDecimal(randomDcCurrent).setScale(2, RoundingMode.CEILING);
        double randomEfficency = new Random().nextDouble() * 1;
        BigDecimal bd10 = new BigDecimal(randomEfficency).setScale(2, RoundingMode.CEILING);
        double randomReactivePower = new Random().nextDouble() * 61;
        BigDecimal bd11 = new BigDecimal(randomReactivePower).setScale(2, RoundingMode.CEILING);
        Inverter randomInverter = new Inverter(recordID, timeStampID, date, deviceID, bd1.doubleValue(), bd2.doubleValue(), bd3.doubleValue(), bd11.doubleValue(), bd4.doubleValue(), bd5.doubleValue(), bd5.doubleValue(), bd5.doubleValue(), bd6.doubleValue(), bd6.doubleValue(), bd6.doubleValue(), bd7.doubleValue(), bd8.doubleValue(), bd9.doubleValue(), bd10.doubleValue());
        return randomInverter;
    }
    
    public Feeder randomFeeder() {
                int tempRecord = 0;
        tempRecord = new Random().nextInt() * 1000000;
        recordID = Integer.toString(tempRecord);
        TimeFactory timeFactory = new TimeFactory();
        timeStampID = timeFactory.getCurrentID();
        Date date = new Date();
        Integer deviceID = new Random().nextInt(2-1)+1;
        boolean randomBreakerStatus = new Random().nextBoolean();
        double randomRealPower = new Random().nextDouble() * 3429;
        BigDecimal bd1 = new BigDecimal(randomRealPower).setScale(2, RoundingMode.CEILING);
        double randomApparantPower = new Random().nextDouble() * 3707;
        BigDecimal bd2 = new BigDecimal(randomApparantPower).setScale(2, RoundingMode.CEILING);
        double randomReactivePower = new Random().nextDouble() * 1409;
        BigDecimal bd3 = new BigDecimal(randomReactivePower).setScale(2, RoundingMode.CEILING);
        double randomPowerFactor = new Random().nextDouble() *(1 - 0.93) + 0.93;
        BigDecimal bd4 = new BigDecimal(randomPowerFactor).setScale(2, RoundingMode.CEILING);
        double randomPhaseCurrent = new Random().nextDouble() * 85;
        BigDecimal bd5 = new BigDecimal(randomPhaseCurrent).setScale(2, RoundingMode.CEILING);
        double randomPhaseVoltage = new Random().nextDouble() * 25225;
        BigDecimal bd6 = new BigDecimal(randomPhaseVoltage).setScale(2, RoundingMode.CEILING);
        if(randomBreakerStatus == true) {
            Feeder randomFeeder = new Feeder(recordID, timeStampID, date, deviceID, randomBreakerStatus, bd1.doubleValue(),bd2.doubleValue(),bd3.doubleValue(),bd4.doubleValue(),bd5.doubleValue(), bd5.doubleValue(), bd5.doubleValue(),bd6.doubleValue(),bd6.doubleValue(),bd6.doubleValue());
            return randomFeeder;
        }
        else {
           Feeder downFeeder = new Feeder(recordID, timeStampID, date, deviceID, randomBreakerStatus,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0);
           return downFeeder;
        }
    }

    /**
     * 
     */
    @Override
    public void run() {
        
        TransferDatabase obj = null;
        
        //Insert facility
        obj = randomFacility();
        obj.PutIntoDatabase();
        
        //Insert PCC
        obj = randomPCC();
        obj.PutIntoDatabase();
        
        //Insert Inverters
        for(int i = 0; i < 39; i++) {
            obj = randomInverter();
            obj.PutIntoDatabase();
        }
        
        //Insert Feeders
        for(int i = 0; i < 2; i++) {
            obj = randomFeeder();
            obj.PutIntoDatabase();
        }
        
        System.out.println("data sent");
    }
    
    

}
