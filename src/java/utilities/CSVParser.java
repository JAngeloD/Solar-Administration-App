/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utilities;

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
     * @return facility - returns facility object
     */
    public Facility getFacility() {
        return facility;
    }

    /**
     * 
     * @return feeder - returns feeder object
     */
    public Feeder getFeeder() {
        return feeder;
    }

    /**
     * 
     * @return pcc - returns PCC object
     */
    public PCC getPcc() {
        return pcc;
    }

    /**
     * 
     * @return inverter - returns inverter object
     */
    public Inverter getInverter() {
        return inverter;
    }
    
}
