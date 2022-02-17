/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utilities;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.*;
import java.lang.reflect.Method;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.*;

/**
 *
 * @author 856622
 */
public class AjaxChartHandler extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //Will store the id of the caller and splits it into the model type and the getter function
        String requestedData = request.getParameter("name");

        int[] xData;
        double[] yData1;
        double[] yData2;

        //Instantiating JSONdata to pass back into the ajax call
        String jsonData = "";
        try {
            //Creates a CSVParser object to use one of the getters based off of the modelName from the AJAX call
            CSVParser modelFactory = new CSVParser(getServletContext().getRealPath("/resources/Complied Data.csv"));

            //Gets methods of the parser class
            Class CSVParserClass = modelFactory.getClass();
            Method[] models = CSVParserClass.getDeclaredMethods();

            switch (requestedData) {
                case "root":
                    //X data hardcoded to have contain numbers from 0 - 24
                    xData = new int[25];
                    for (int i = 0; i < 25; i++) {
                        xData[i] = i;
                    }

                    //Instantiating both Y lists
                    yData1 = new double[25];
                    yData2 = new double[25];

                    for (int i = 0; i < yData1.length; i++) {

                        //Loops through all the methods to find the right model to use and gets its data from the specfied getter method
                        for (Method m : models) {

                            if (m.getName().equals("getFacility")) {
                                yData1[i] = (double) m.invoke(modelFactory, "getSolarIrridinacePOA") * Math.random();
                                yData2[i] = (double) m.invoke(modelFactory, "getSolarIrridinaceGHI") * Math.random();
                            }
                        }
                    }

                    //System.out.println(Arrays.toString(yData1));
                    jsonData = buildIrradiancePowerGraph(xData, yData1, yData2);
                    break;
                case "windGraph":
                    //X data hardcoded to have contain numbers from 0 - 24
                    xData = new int[25];
                    for (int i = 0; i < 25; i++) {
                        xData[i] = i;
                    }

                    //Instantiating both Y lists
                    yData1 = new double[25];
                    yData2 = new double[25];
                    for (int i = 0; i < yData1.length; i++) {
                        //Loops through all the methods to find the right model to use and gets its data from the specfied getter method
                        for (Method m : models) {
                            if (m.getName().equals("getFacility")) {
                                yData1[i] = (double) m.invoke(modelFactory, "getAmbientTemperature") * Math.random();
                                yData2[i] = (double) m.invoke(modelFactory, "getWindSpeed") * Math.random();
                            }
                        }
                    }
                    jsonData = buildWeatherGraph(xData, yData1, yData2);
                    break;
                case "bar":
                    //List of interverts in the Y AXIS
                    String[] inverterList = new String[39];
                    for (int i = 0; i < 39; i++) {
                        inverterList[i] = "\"Sungrow SG125HV #" + (i + 1) + "\"";
                    }
                    
                    double[] xDataBars = new double[inverterList.length];
                    for (int i = 0; i < inverterList.length; i++) {
                        //Loops through all the methods to find the right model to use and gets its data from the specfied getter method
                        for (Method m : models) {
                            if (m.getName().equals("getFacility")) {
                                xDataBars[i] =  Math.random() * 10;
                            }
                        }
                    }
                    jsonData = buildInverterPerformanceGraph(xDataBars, inverterList);
                    break;
                default:
                    return;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        //Send data back
        response.setContentType("text/plain");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(jsonData);
    }

    public String buildWeatherGraph(int[] xData, double[] yData1, double[] yData2) {

        String jsonTemplate = "";
        try {
            jsonTemplate = convertFileIntoString(getServletContext().getRealPath("/templates/weatherGraph.json"));

            jsonTemplate = jsonTemplate.replaceAll("#XDATA", Arrays.toString(xData));

            jsonTemplate = jsonTemplate.replaceAll("#YDATA1", Arrays.toString(yData1));
            jsonTemplate = jsonTemplate.replaceAll("#YDATA2", Arrays.toString(yData2));
        } catch (Exception e) {
            System.out.println(e.toString());
        }

        return jsonTemplate;
    }

    public String buildIrradiancePowerGraph(int[] xData, double[] yData1, double[] yData2) {

        String jsonTemplate = "";
        try {
            jsonTemplate = convertFileIntoString(getServletContext().getRealPath("/templates/PowerIrradianceGraph.json"));

            jsonTemplate = jsonTemplate.replaceAll("#XDATA", Arrays.toString(xData));

            //System.out.println(Arrays.toString(xData));
            jsonTemplate = jsonTemplate.replaceAll("#YDATA1", Arrays.toString(yData1));
            //System.out.println(Arrays.toString(yData1));

            jsonTemplate = jsonTemplate.replaceAll("#YDATA2", Arrays.toString(yData2));
        } catch (Exception e) {
            System.out.println(e.toString());
        }

        return jsonTemplate;
    }
    
        public String buildInverterPerformanceGraph(double[] xData, String[] yData) {

        String jsonTemplate = "";
        try {
            jsonTemplate = convertFileIntoString(getServletContext().getRealPath("/templates/BarGraphTemplate.json"));

            jsonTemplate = jsonTemplate.replaceAll("#XDATA", Arrays.toString(xData));

            jsonTemplate = jsonTemplate.replaceAll("#YDATA", Arrays.toString(yData));
            
        } catch (Exception e) {
            System.out.println(e.toString());
        }

        return jsonTemplate;
    }

    /**
     * Used to grab info from JSON template file
     *
     * @param file - file location
     * @return - Returns file contents as a String
     * @throws Exception
     */
    public static String convertFileIntoString(String file) throws Exception {
        String result;
        result = new String(Files.readAllBytes(Paths.get(file)));
        return result;

    }

}
