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
import java.util.Random;
import models.*;

/**
 *
 * @author 856622
 */
public class CSVParser {

    //Data types
    private Facility facility;
    private Feeder feeder;
    private PCC pcc;
    private Inverter inverter;

    public CSVParser() {
        facility = null;
        feeder = null;
        pcc = null;
        inverter = null;
    }

    /**
     * Will read from a specified CSV file location and will construct the 4 main models using the information in the CSV.
     *
     * @param fileLocation - location of the CSV File
     */
    public CSVParser(String fileLocation) throws FileNotFoundException, IOException, CsvValidationException {

        facility = new Facility();
        feeder = new Feeder();
        pcc = new PCC();
        inverter = new Inverter();
        try (CSVReader reader = new CSVReader(new FileReader(fileLocation))) {
            
            Random rd = new Random();
            int randomLine = rd.nextInt(346);
            String[] lineInArray;
            for ( int i = 0; (lineInArray = reader.readNext()) != null; i++) {
                              
                if(i != randomLine) {
                    continue;
                }
                
                facility.setSolarIrridinacePOA(Double.parseDouble(lineInArray[3].replaceAll(",", "")));

                facility.setSolarIrridinaceGHI(Double.parseDouble(lineInArray[4].replaceAll(",", "")));

                facility.setBackOfPanelTemperature1(Double.parseDouble(lineInArray[5].replaceAll(",", "")));

                facility.setAmbientTemperature(Double.parseDouble(lineInArray[6].replaceAll(",", "")));

                facility.setBackOfPanelTemperature2(Double.parseDouble(lineInArray[7]));

                facility.setWindSpeed(Double.parseDouble(lineInArray[8].replaceAll(",", "")));

                pcc.setAcOutputLifeTimeEnergy(Double.parseDouble(lineInArray[9].replaceAll(",", "")));

                pcc.setAcOutputYearToDateEnergy(Double.parseDouble(lineInArray[10].replaceAll(",", "")));

                pcc.setAcOutputMonthToDateEnergy(Double.parseDouble(lineInArray[11].replaceAll(",", "")));

                pcc.setAcOutputDailyEnergy(Double.parseDouble(lineInArray[12].replaceAll(",", "")));

                pcc.setAcOutputRealPower(Double.parseDouble(lineInArray[13].replaceAll(",", "")));

                pcc.setAcOutputApparentPower(Double.parseDouble(lineInArray[14].replaceAll(",", "")));

                pcc.setAcOutputReactivePower(Double.parseDouble(lineInArray[15].replaceAll(",", "")));

                pcc.setAcOutputPowerFactor(Double.parseDouble(lineInArray[16].replaceAll(",", "")));

                pcc.setAcOutputPhaseACurrent(Double.parseDouble(lineInArray[17].replaceAll(",", "")));

                pcc.setAcOutputPhaseBCurrent(Double.parseDouble(lineInArray[18].replaceAll(",", "")));

                pcc.setAcOutputPhaseCCurrent(Double.parseDouble(lineInArray[19].replaceAll(",", "")));

                pcc.setAcOutputPhaseABVoltage(Double.parseDouble(lineInArray[20].replaceAll(",", "")));

                pcc.setAcOutputPhaseBCVoltage(Double.parseDouble(lineInArray[21].replaceAll(",", "")));

                pcc.setAcOutputPhaseCAVoltage(Double.parseDouble(lineInArray[22].replaceAll(",", "")));

                feeder.setAcOutputRealPower(Double.parseDouble(lineInArray[23].replaceAll(",", "")));

                feeder.setAcOutputApparentPower(Double.parseDouble(lineInArray[24].replaceAll(",", "")));

                feeder.setAcOutputReactivePower(Double.parseDouble(lineInArray[25].replaceAll(",", "")));

                feeder.setAcOutputPowerFactor(Double.parseDouble(lineInArray[26].replaceAll(",", "")));

                feeder.setAcOutputPhaseACurrent(Double.parseDouble(lineInArray[27].replaceAll(",", "")));

                feeder.setAcOutputPhaseBCurrent(Double.parseDouble(lineInArray[28].replaceAll(",", "")));

                feeder.setAcOutputPhaseCCurrent(Double.parseDouble(lineInArray[29].replaceAll(",", "")));

                feeder.setAcOutputPhaseABVoltage(Double.parseDouble(lineInArray[30].replaceAll(",", "")));

                feeder.setAcOutputPhaseBCVoltage(Double.parseDouble(lineInArray[31].replaceAll(",", "")));

                feeder.setAcOutputPhaseCAVoltage(Double.parseDouble(lineInArray[32].replaceAll(",", "")));

                inverter.setAcOutputLifeTimeEnergy(Double.parseDouble(lineInArray[43].replaceAll(",", "")));

                inverter.setAcOutputYearToDateEnergy(Double.parseDouble(lineInArray[44].replaceAll(",", "")));

                inverter.setAcOutputMonthToDateEnergy(Double.parseDouble(lineInArray[45].replaceAll(",", "")));

                inverter.setAcOutputDailyEnergy(Double.parseDouble(lineInArray[46].replaceAll(",", "")));

                inverter.setAcOutputRealPower(Double.parseDouble(lineInArray[47].replaceAll(",", "")));

                inverter.setAcOutputApparentPower(Double.parseDouble(lineInArray[48].replaceAll(",", "")));

                inverter.setAcOutputReactivePower(Double.parseDouble(lineInArray[49].replaceAll(",", "")));

                inverter.setAcOutputPowerFactor(Double.parseDouble(lineInArray[50].replaceAll(",", "")));

                inverter.setAcOutputPhaseACurrent(Double.parseDouble(lineInArray[51].replaceAll(",", "")));

                inverter.setAcOutputPhaseBCurrent(Double.parseDouble(lineInArray[52].replaceAll(",", "")));

                inverter.setAcOutputPhaseCCurrent(Double.parseDouble(lineInArray[53].replaceAll(",", "")));

                inverter.setAcOutputPhaseABVoltage(Double.parseDouble(lineInArray[54].replaceAll(",", "")));

                inverter.setAcOutputPhaseBCVoltage(Double.parseDouble(lineInArray[55].replaceAll(",", "")));

                inverter.setAcOutputPhaseCAVoltage(Double.parseDouble(lineInArray[56].replaceAll(",", "")));

                inverter.setDcRealPower(Double.parseDouble(lineInArray[57].replaceAll(",", "")));

                inverter.setDcVolts(Double.parseDouble(lineInArray[58].replaceAll(",", "")));

                inverter.setDcCurrent(Double.parseDouble(lineInArray[59].replaceAll(",", "")));

                inverter.setEfficiency(Double.parseDouble(lineInArray[60].replaceAll(",", "")));              
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
    public double getPcc(String requestedData) throws IllegalArgumentException, IllegalAccessException, InvocationTargetException {
        return getData(pcc, requestedData);
    }

    /**
     *
     * @return returns requested data from inverter
     */
    public double getInverter(String requestedData) throws IllegalArgumentException, IllegalAccessException, InvocationTargetException {
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
            if (m.getName().equals(requestData)) {
                requestedData = (double) m.invoke(modelType, (Object)null);
                return requestedData;
            }
        }

        return 0;
    }

}
