/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utilities;

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
    private Feeder feeder;
    private PCC pcc;
    private Inverter inverter;
    
    public CSVParser() 
    {
        facility = null;
        feeder = null;
        pcc = null;
        inverter = null;
    }
    
    /**
     *  Will read from a specified CSV file location and will construct the 4 main
     *  models using the information in the CSV.
     * 
     * @param fileLocation - location of the CSV File
     */
    public CSVParser(String fileLocation) 
    {
        
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
