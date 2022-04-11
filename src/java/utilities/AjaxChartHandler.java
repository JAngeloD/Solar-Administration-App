package utilities;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.*;
import services.DBAccess;

/**
 * For delivering Plotly data to an AJAX call originating from a javascript using JQuery.
 * This is done through querying the DB for data to put into a specific JSON template.
 * 
 * @author Angelo De Vera
 */
public class AjaxChartHandler extends HttpServlet {

    /**
     * Gets the model name, the requested attribute, and if possible the device ID. From
     * that it will query the DB for those parameters and fill the desired JSON template 
     * with data retrieved from the DB and send it back to the AJAX call which will populate
     * the chart on a page.
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //Will store the id of the caller and splits it into the model type and the getter function
        String requestedData = request.getParameter("name");

        //Instantiating JSONdata to pass back into the ajax call
        String jsonData = "";
        try {
            switch (requestedData) {
                case "bar":
                    //List of interverts in the Y AXIS
                    String[] inverterList = new String[39];
                    for (int i = 0; i < 39; i++) {
                        inverterList[i] = "\"Inverter #" + (i + 1) + "\"";
                    }

                    double[] xDataBars = new double[inverterList.length];
                    for (int i = 0; i < inverterList.length; i++) {
                        String deviceID = String.format("%02d", i + 1);
                        xDataBars[i] = Math.random() * DBAccess.InverterGetRecent("AcOutputEnergy" + deviceID);
                    }

                    jsonData = buildInverterPerformanceGraph(xDataBars, inverterList);
                    break;
                case "root":
                    //X data hardcoded to have contain numbers from 0 - 24
                    int[] hours1 = new int[25];
                    for (int i = 0; i < 25; i++) {
                        hours1[i] = i;
                    }

                    //Instantiating both Y lists
                    double[] power = null;
                    double[] irradiance = null;

                    //Retrieves raw current data from plotly and replicates that array back into our instantiated array
                    String rawPlotArray1 = request.getParameter("graphData");
                    try {
                        power = convertRawPlotlyData(rawPlotArray1, true);
                        irradiance = convertRawPlotlyData(rawPlotArray1, false);
                    } catch (NullPointerException e) {
                        power = new double[0];
                        irradiance = new double[0];
                    }

                    //Extracts both y values from the data and insert them into our arrays
                    //Gets newest data 
                    power = appendIntoCurrent(power, DBAccess.PccGetRecent("AcOutputEnergy"));
                    irradiance = appendIntoCurrent(irradiance, DBAccess.FacilityGetRecent("SolarirridianceGHI"));

                    //System.out.println(Arrays.toString(yData1));
                    jsonData = buildIrradiancePowerGraph(hours1, power, irradiance);
                    break;
                case "windGraph":
                    //X data hardcoded to have contain numbers from 0 - 24 for hours in the day
                    int[] hours2 = new int[25];
                    for (int i = 0; i < 25; i++) {
                        hours2[i] = i;
                    }

                    //Instantiating both Y lists
                    double[] temperature = null; //TEMPERATURE
                    double[] windSpeed = null; //WIND SPEED

                    //Retrieves raw current data from plotly and replicates that array back into our instantiated array
                    String rawPlotArray2 = request.getParameter("graphData");
                    try {
                        temperature = convertRawPlotlyData(rawPlotArray2, true);
                        windSpeed = convertRawPlotlyData(rawPlotArray2, false);
                    } catch (NullPointerException e) {
                        temperature = new double[0];
                        windSpeed = new double[0];
                    }

                    //Extracts both y values from the data and insert them into our arrays
                    //Gets newest data 
                    temperature = appendIntoCurrent(temperature, DBAccess.FacilityGetRecent("AmbientTemperature"));
                    windSpeed = appendIntoCurrent(windSpeed, DBAccess.FacilityGetRecent("WindSpeed"));

                    jsonData = buildWeatherGraph(hours2, temperature, windSpeed);
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

    /**
     * Builds a weather graph formatted  as a JSON string
     * using Plotly syntax. Uses template to build the graph located in /templates
     * 
     * @param xData - Hours in an array
     * @param yData1 - Temperature in an array
     * @param yData2 -  Wind speed in an array
     * @return - a JSON string filled with data 
     */
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

    /**
     * Builds a power/irradiance graph formatted as a JSON string 
     * using Plotly syntax. Uses template to build the graph located in /templates
     * 
     * @param xData - Hours 
     * @param yData1 - Average Power in an array
     * @param yData2 - Irradiance in an array
     * @return - a JSON string filled with data 
     */
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

    /**
     * Builds a inverter/performance graph formatted as a JSON string
     * using Plotly syntax. Uses template to build the graph located in /templates
     * 
     * @param xData - kWh / kWAC double array 
     * @param yData - Inverter device (1-39) String array
     * @return - a JSON string filled with data 
     */
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

    /**
     * Turns JSON string returned by plotly in the JSP into a double array and return that
     *
     * @param rawPlotArray - Raw plotly array
     * @param first - If true it will return the y array in for the first trace
     * @return - return a double array in the rawPlotlyArray  
     */
    private static double[] convertRawPlotlyData(String rawPlotArray, boolean first) throws Exception {

        String yRawData = "";
        String[] yRawArray = null;
        //First Y dataset
        if (first) {
            yRawData = rawPlotArray.substring(rawPlotArray.indexOf("[", rawPlotArray.indexOf("\"y\"")) + 1,
                    rawPlotArray.indexOf("]", rawPlotArray.indexOf("\"y\"")));
            yRawArray = yRawData.split(",");
        } else {
            //Second Y dataset
            // NOTE: for some reason change y into "y" doesn't work here but it does above wtf?
            yRawData = rawPlotArray.substring(rawPlotArray.lastIndexOf("[", rawPlotArray.lastIndexOf("y")) + 1,
                    rawPlotArray.lastIndexOf("]", rawPlotArray.lastIndexOf("y")));
            yRawArray = yRawData.split(",");
        }

        int arrayLength = yRawArray.length;
        
        //If there are already a full days worth of data in the plot already, reset it 
        if (arrayLength > 24) {
            arrayLength = 0;
        }

        double[] finalArray = new double[arrayLength];
        for (int i = 0; i < arrayLength; i++) {
            finalArray[i] = Double.valueOf(yRawArray[i]);
        }

        return finalArray;
    }

    /**
     * Appends array with new data. Used for appending to graph data
     * 
     * @param currentArray - the current Array
     * @param newData - the new value to be appended
     * @return - the new array 
     */
    private static double[] appendIntoCurrent(double[] currentArray, double newData) {

        double[] finalArray = new double[currentArray.length + 1];
        for (int i = 0; i < currentArray.length; i++) {
            finalArray[i] = currentArray[i];
        }

        //BREAK IN CASE OF EMERGENCY 
//        finalArray[finalArray.length - 1] = newData * (Math.random() * 10);

        return finalArray;
    }

}
