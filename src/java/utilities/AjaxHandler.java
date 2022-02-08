/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utilities;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import models.Facility;


/**
 *
 * @author 856622
 */
public class AjaxHandler extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //Will store the id of the caller
        String modelName = request.getParameter("name");
        
        //Makes new SortingStrategy object
        try {
            
            //Creates a CSVParser object to use one of the getters based off of the modelName from the AJAX call
            CSVParser modelFactory = new CSVParser();
            
            //Gets methods of the parser class
            Class CSVParserClass = modelFactory.getClass();
            Method[] models = CSVParserClass.getDeclaredMethods();
            
            //Declares the object for storing
            Class<?> newModelReflect = Class.forName("model." +  modelName);
            Constructor<?> newModelCons = newModelReflect.getConstructor();
            Object newModel = newModelCons.newInstance();
            
            //Loops through all the methods to find the right model to use
            for (Method m : models) {
                if(m.getName().equals(modelName)) {
                    m.invoke(newModel, models);
                }
            }
            
        }
        catch (Exception e) {
            System.out.println(e.toString());
        }
        //Send data back
        response.setContentType("text/plain");  
        response.setCharacterEncoding("UTF-8"); 
//        response.getWriter().write(name + ": " + String.valueOf(randomNum));
    }
    
    /**
     * This method is used for calling the right getter method from the given model. 
     * 
     * @param modelType - One of 4 types of models in the system
     * @param requestData - the name of the getter for the data being requested
     * @return
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
