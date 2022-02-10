/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utilities;

import com.opencsv.CSVReader;
import com.opencsv.exceptions.CsvValidationException;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import models.*;

/**
 *
 * @author 856622
 */
public class CSVParser {
    
    //Data types
    private Facility facility;
    private Feeder feeder1;
    private Feeder feeder2;
    private PCC pcc;
    private Inverter inverter;
    
    public CSVParser() 
    {
        facility = null;
        feeder1 = null;
        feeder2 = null;
        pcc = null;
        inverter = null;
    }
    
    /**
     *  Will read from a specified CSV file location and will construct the 4 main
     *  models using the information in the CSV.
     * 
     * @param fileLocation - location of the CSV File
     */
    public CSVParser(String fileLocation) throws FileNotFoundException, IOException, CsvValidationException 
    {
      try (CSVReader reader = new CSVReader(new FileReader(fileLocation))){
            String[] lineInArray; 
            while ((lineInArray = reader.readNext()) != null) {
                if(lineInArray[2].equals("no data")){
                    facility.setSolarIrridinacePOA(0);
                }else {
                    facility.setSolarIrridinacePOA(Double.parseDouble(lineInArray[2]));
                }
                if(lineInArray[3].equals("no data")) {
                    facility.setSolarIrridinaceGHI(0);
                } else {
                    facility.setSolarIrridinaceGHI(Double.parseDouble(lineInArray[3]));
                }
                if(lineInArray[4].equals("no data")) {
                    facility.setBackOfPanelTemperature1(0);
                } else {
                    facility.setBackOfPanelTemperature1(Double.parseDouble(lineInArray[4]));
                }
                if(lineInArray[5].equals("no data")) {
                    facility.setAmbientTemperature(0);
                } else {
                    facility.setAmbientTemperature(Double.parseDouble(lineInArray[5]));
                }
                if(lineInArray[6].equals("no data")) {
                    facility.setBackOfPanelTemperature2(0);
                } else {
                    facility.setBackOfPanelTemperature2(Double.parseDouble(lineInArray[6]));
                }
                if(lineInArray[7].equals("no data")) {
                    facility.setWindSpeed(0);
                } else {
                    facility.setWindSpeed(Double.parseDouble(lineInArray[7]));
                }
                if(lineInArray[8].equals("no data")){
                    pcc.setAcOutputLifeTimeEnergy(0);
                } else {
                    pcc.setAcOutputLifeTimeEnergy(Double.parseDouble(lineInArray[8]));
                }
                if(lineInArray[9].equals("no data")){
                    pcc.setAcOutputYearToDateEnergy(0);
                } else {
                    pcc.setAcOutputYearToDateEnergy(Double.parseDouble(lineInArray[9]));
                }
                if(lineInArray[10].equals("no data")){
                    pcc.setAcOutputMonthToDateEnergy(0);
                } else {
                    pcc.setAcOutputMonthToDateEnergy(Double.parseDouble(lineInArray[10]));
                }
                if(lineInArray[11].equals("no data")){
                    pcc.setAcOutputDailyEnergy(0);
                } else {
                    pcc.setAcOutputDailyEnergy(Double.parseDouble(lineInArray[11]));
                }
                if(lineInArray[12].equals("no data")){
                    pcc.setAcOutputRealPower(0);
                } else {
                    pcc.setAcOutputRealPower(Double.parseDouble(lineInArray[12]));
                }
                if(lineInArray[13].equals("no data")){
                    pcc.setAcOutputApparentPower(0);
                } else {
                    pcc.setAcOutputApparentPower(Double.parseDouble(lineInArray[13]));
                }
                if(lineInArray[14].equals("no data")){
                    pcc.setAcOutputReactivePower(0);
                } else {
                    pcc.setAcOutputReactivePower(Double.parseDouble(lineInArray[14]));
                }
                if(lineInArray[15].equals("no data")){
                    pcc.setAcOutputPowerFactor(0);
                } else {
                    pcc.setAcOutputPowerFactor(Double.parseDouble(lineInArray[15]));
                }
                if(lineInArray[16].equals("no data")){
                    pcc.setAcOutputPhaseACurrent(0);
                } else {
                    pcc.setAcOutputPhaseACurrent(Double.parseDouble(lineInArray[16]));
                }
                if(lineInArray[17].equals("no data")){
                    pcc.setAcOutputPhaseBCurrent(0);
                } else {
                    pcc.setAcOutputPhaseBCurrent(Double.parseDouble(lineInArray[17]));
                }
                if(lineInArray[18].equals("no data")){
                    pcc.setAcOutputPhaseCCurrent(0);
                } else {
                    pcc.setAcOutputPhaseCCurrent(Double.parseDouble(lineInArray[18]));
                }
                if(lineInArray[19].equals("no data")){
                    pcc.setAcOutputPhaseABVoltage(0);
                } else {
                    pcc.setAcOutputPhaseABVoltage(Double.parseDouble(lineInArray[19]));
                }
                if(lineInArray[20].equals("no data")){
                    pcc.setAcOutputPhaseBCVoltage(0);
                } else {
                    pcc.setAcOutputPhaseBCVoltage(Double.parseDouble(lineInArray[20]));
                }
                if(lineInArray[21].equals("no data")){
                    pcc.setAcOutputPhaseCAVoltage(0);
                } else {
                    pcc.setAcOutputPhaseCAVoltage(Double.parseDouble(lineInArray[21]));
                }
                if(lineInArray[22].equals("no data")) {
                    feeder1.setAcOutputRealPower(0);
                } else {
                    feeder1.setAcOutputRealPower(Double.parseDouble(lineInArray[22]));
                }
                if(lineInArray[23].equals("no data")) {
                    feeder1.setAcOutputApparentPower(0);
                } else {
                    feeder1.setAcOutputApparentPower(Double.parseDouble(lineInArray[23]));
                }
                if(lineInArray[24].equals("no data")) {
                    feeder1.setAcOutputReactivePower (0);
                } else {
                    feeder1.setAcOutputReactivePower(Double.parseDouble(lineInArray[24]));
                }
                if(lineInArray[25].equals("no data")) {
                    feeder1.setAcOutputPowerFactor(0);
                } else {
                    feeder1.setAcOutputPowerFactor(Double.parseDouble(lineInArray[25]));
                }
                if(lineInArray[26].equals("no data")) {
                    feeder1.setAcOutputPhaseACurrent(0);
                } else {
                    feeder1.setAcOutputPhaseACurrent(Double.parseDouble(lineInArray[26]));
                }
                if(lineInArray[27].equals("no data")) {
                    feeder1.setAcOutputPhaseBCurrent(0);
                } else {
                    feeder1.setAcOutputPhaseBCurrent(Double.parseDouble(lineInArray[27]));
                }
                if(lineInArray[28].equals("no data")) {
                    feeder1.setAcOutputPhaseCCurrent(0);
                } else {
                    feeder1.setAcOutputPhaseCCurrent(Double.parseDouble(lineInArray[28]));
                }
                if(lineInArray[29].equals("no data")) {
                    feeder1.setAcOutputPhaseABVoltage(0);
                } else {
                    feeder1.setAcOutputPhaseABVoltage(Double.parseDouble(lineInArray[29]));
                }
                if(lineInArray[30].equals("no data")) {
                    feeder1.setAcOutputPhaseBCVoltage(0);
                } else {
                    feeder1.setAcOutputPhaseBCVoltage(Double.parseDouble(lineInArray[30]));
                }
                if(lineInArray[31].equals("no data")) {
                    feeder1.setAcOutputPhaseCAVoltage(0);
                } else {
                    feeder1.setAcOutputPhaseCAVoltage(Double.parseDouble(lineInArray[31]));
                }
                if(lineInArray[32].equals("no data")) {
                    feeder2.setAcOutputRealPower(0);
                } else {
                    feeder2.setAcOutputRealPower(Double.parseDouble(lineInArray[32]));
                }
                if(lineInArray[33].equals("no data")) {
                    feeder2.setAcOutputApparentPower(0);
                } else {
                    feeder2.setAcOutputApparentPower(Double.parseDouble(lineInArray[33]));
                }
                if(lineInArray[34].equals("no data")) {
                    feeder2.setAcOutputReactivePower (0);
                } else {
                    feeder2.setAcOutputReactivePower(Double.parseDouble(lineInArray[34]));
                }
                if(lineInArray[35].equals("no data")) {
                    feeder2.setAcOutputPowerFactor(0);
                } else {
                    feeder2.setAcOutputPowerFactor(Double.parseDouble(lineInArray[35]));
                }
                if(lineInArray[36].equals("no data")) {
                    feeder2.setAcOutputPhaseACurrent(0);
                } else {
                    feeder2.setAcOutputPhaseACurrent(Double.parseDouble(lineInArray[36]));
                }
                if(lineInArray[37].equals("no data")) {
                    feeder2.setAcOutputPhaseBCurrent(0);
                } else {
                    feeder2.setAcOutputPhaseBCurrent(Double.parseDouble(lineInArray[37]));
                }
                if(lineInArray[38].equals("no data")) {
                    feeder2.setAcOutputPhaseCCurrent(0);
                } else {
                    feeder2.setAcOutputPhaseCCurrent(Double.parseDouble(lineInArray[38]));
                }
                if(lineInArray[39].equals("no data")) {
                    feeder2.setAcOutputPhaseABVoltage(0);
                } else {
                    feeder2.setAcOutputPhaseABVoltage(Double.parseDouble(lineInArray[39]));
                }
                if(lineInArray[40].equals("no data")) {
                    feeder2.setAcOutputPhaseBCVoltage(0);
                } else {
                    feeder2.setAcOutputPhaseBCVoltage(Double.parseDouble(lineInArray[40]));
                }
                if(lineInArray[41].equals("no data")) {
                    feeder2.setAcOutputPhaseCAVoltage(0);
                } else {
                    feeder2.setAcOutputPhaseCAVoltage(Double.parseDouble(lineInArray[41]));
                }
                if(lineInArray[42].equals("no data")) {
                    inverter.setAcOutputLifeTimeEnergy(0);
                } else {
                    inverter.setAcOutputLifeTimeEnergy(Double.parseDouble(lineInArray[42]));
                }
                if(lineInArray[43].equals("no data")) {
                    inverter.setAcOutputYearToDateEnergy(0);
                } else {
                    inverter.setAcOutputYearToDateEnergy(Double.parseDouble(lineInArray[43]));
                }
                if(lineInArray[44].equals("no data")) {
                    inverter.setAcOutputMonthToDateEnergy(0);
                } else {
                    inverter.setAcOutputMonthToDateEnergy(Double.parseDouble(lineInArray[44]));
                }
                if(lineInArray[45].equals("no data")) {
                    inverter.setAcOutputDailyEnergy(0);
                } else {
                    inverter.setAcOutputDailyEnergy(Double.parseDouble(lineInArray[45]));
                }
                if(lineInArray[46].equals("no data")) {
                    inverter.setAcOutputRealPower(0);
                } else {
                    inverter.setAcOutputRealPower(Double.parseDouble(lineInArray[46]));
                }
                if(lineInArray[47].equals("no data")) {
                    inverter.setAcOutputApparentPower(0);
                } else {
                    inverter.setAcOutputApparentPower(Double.parseDouble(lineInArray[47]));
                }
                if(lineInArray[48].equals("no data")) {
                    inverter.setAcOutputReactivePower(0);
                } else {
                    inverter.setAcOutputReactivePower(Double.parseDouble(lineInArray[48]));
                }
                if(lineInArray[49].equals("no data")) {
                    inverter.setAcOutputPowerFactor(0);
                } else {
                    inverter.setAcOutputPowerFactor(Double.parseDouble(lineInArray[49]));
                }
                if(lineInArray[50].equals("no data")) {
                    inverter.setAcOutputPhaseACurrent(0);
                } else {
                    inverter.setAcOutputPhaseACurrent(Double.parseDouble(lineInArray[50]));
                }
                if(lineInArray[51].equals("no data")) {
                    inverter.setAcOutputPhaseBCurrent(0);
                } else {
                    inverter.setAcOutputPhaseBCurrent(Double.parseDouble(lineInArray[51]));
                }
                if(lineInArray[52].equals("no data")) {
                    inverter.setAcOutputPhaseCCurrent(0);
                } else {
                    inverter.setAcOutputPhaseCCurrent(Double.parseDouble(lineInArray[52]));
                }
                if(lineInArray[53].equals("no data")) {
                    inverter.setAcOutputPhaseABVoltage(0);
                } else {
                    inverter.setAcOutputPhaseABVoltage(Double.parseDouble(lineInArray[53]));
                }
                if(lineInArray[54].equals("no data")) {
                    inverter.setAcOutputPhaseBCVoltage(0);
                } else {
                    inverter.setAcOutputPhaseBCVoltage(Double.parseDouble(lineInArray[54]));
                }
                if(lineInArray[55].equals("no data")) {
                    inverter.setAcOutputPhaseCAVoltage(0);
                } else {
                    inverter.setAcOutputPhaseCAVoltage(Double.parseDouble(lineInArray[55]));
                }
                if(lineInArray[56].equals("no data")) {
                    inverter.setDcRealPower(0);
                } else {
                    inverter.setDcRealPower(Double.parseDouble(lineInArray[56]));
                }
                if(lineInArray[57].equals("no data")) {
                    inverter.setDcVolts(0);
                } else {
                    inverter.setDcVolts(Double.parseDouble(lineInArray[57]));
                }
                if(lineInArray[58].equals("no data")) {
                    inverter.setDcCurrent(0);
                } else {
                    inverter.setDcCurrent(Double.parseDouble(lineInArray[58]));
                }
                if(lineInArray[59].equals("no data")) {
                    inverter.setEfficiency(0);
                } else {
                    inverter.setEfficiency(Double.parseDouble(lineInArray[59]));
                }
                   
            }
        }
    }
    
    /**
     * 
     * @return returns requested data from facility
     */
    public double getFacility(String requestedData) throws IllegalArgumentException, IllegalAccessException, InvocationTargetException {
        return getData(facility, requestedData);
    }

    /**
     * 
     * @return returns requested data from feeder
     */
    public double getFeeder(String requestedData) throws IllegalArgumentException, IllegalAccessException, InvocationTargetException {
        return getData(feeder, requestedData);
    }

    /**
     * 
     * @return returns requested data from pcc
     */
    public double getPcc(String requestedData)  throws IllegalArgumentException, IllegalAccessException, InvocationTargetException{
        return getData(pcc, requestedData);
    }

    /**
     * 
     * @return returns requested data from inverter
     */
    public double getInverter(String requestedData) throws IllegalArgumentException, IllegalAccessException, InvocationTargetException{
        return getData(inverter, requestedData);
    }
    
     /**
     * This helper method is used for calling the right getter method from the given model. 
     * 
     * @param modelType - One of 4 types of models in the system
     * @param requestData - the name of the getter for the data being requested
     * @return returns the double value of the requested data 
     * @throws IllegalArgumentException
     * @throws IllegalAccessException
     * @throws InvocationTargetException 
     */
    public double getData(Object modelType, String requestData) throws IllegalArgumentException, IllegalAccessException, InvocationTargetException {
        
        double requestedData = 0;
        
        //Gets list of methods of the object being passed
        Class<?> newModelReflect = modelType.getClass();
        Method[] dataGetters = newModelReflect.getDeclaredMethods();
        
        //Search for the method of the object for the data being requested
        for (Method m : dataGetters) {
            if(m.getName().equals(requestData)) {
                requestedData = (double) m.invoke(modelType, null);
                return requestedData;
            }
        }
        
        return 0;
    }
    
}
