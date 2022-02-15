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

        //Testing only
        Random rd = new Random();
        int[] y = new int[9];
        for (int i = 0; i < y.length; i++) {
            y[i] = rd.nextInt(100);
        }

        String[] x = new String[]{"\"2022-02-09 03:00:00\"", "\"2022-02-09 05:00:00\"", "\"2022-02-09 07:00:00\"", "\"2022-02-09 09:00:00\"", "\"2022-02-09 11:00:00\"",
            "\"2022-02-09 13:00:00\"", "\"2022-02-09 15:00:00\"", "\"2022-02-09 17:00:00\"", "\"2022-02-09 19:00:00\""};

        String jsonTest = jsonTemplateString(x, y, "lines");

        //Send data back
        response.setContentType("text/plain");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(jsonTest);
    }

    /**
     * Builds JSON description of a line graph to be built with plotly see AjaxCharting.js to see how it's used
     *
     * @param width - Width dimension of the graph
     * @param height - Height dimension of the graph
     * @param xData - Array data for x values
     * @param yData - Array data for y values
     * @param graphTitle - Title of the graph
     * @param xTitle - Title of the x line
     * @param yTitle - Title of the y line
     * @param currentDate - Current date in YYYY-MM-DD format
     * @param tomDate - Date tomorrow in YYYY-MM-DD format
     * @return
     */
    public String buildLineGraphFromJSON(int width, int height, String[] xData, int[] yData, String graphTitle, String xTitle, String yTitle, String currentDate, String tomDate) {

        String jsonTemplate = "";
        try {
//            jsonTemplate = convertFileIntoString(getServletContext().getRealPath("/templates/LineGraphTemplate.json"));
            jsonTemplate = convertFileIntoString("web\\templates\\LineGraphTemplate.json");

            jsonTemplate = jsonTemplate.replaceAll("#WIDTH", String.valueOf(width));
            jsonTemplate = jsonTemplate.replaceAll("#HEIGHT", String.valueOf(height));
            jsonTemplate = jsonTemplate.replaceAll("#XDATA", Arrays.toString(xData));
            jsonTemplate = jsonTemplate.replaceAll("#YDATA", Arrays.toString(yData));
            jsonTemplate = jsonTemplate.replaceAll("#GRAPHTITLE", graphTitle);
            jsonTemplate = jsonTemplate.replaceAll("#XTITLE", xTitle);
            jsonTemplate = jsonTemplate.replaceAll("#YTITLE", yTitle);
            jsonTemplate = jsonTemplate.replaceAll("#CURRENTDATE", currentDate);
            jsonTemplate = jsonTemplate.replaceAll("#TOMDATE", tomDate);

        } catch (Exception e) {
            System.out.println(e.toString());
        }

        return jsonTemplate;
    }

    /**
     * Builds JSON description of a line graph to be built with plotly see AjaxCharting.js to see how it's used
     *
     * @param width - Width dimension of the graph
     * @param height - Height dimension of the graph
     * @param xData - Array data for x values
     * @param yData - Array data for y values
     * @param graphTitle - Title of the graph
     * @param xTitle - Title of the x line
     * @param yTitle - Title of the y line
     * @return
     */
    public String buildBarGraphFromJSON(int width, int height, int[] xData, String[] yData, String graphTitle, String xTitle, String yTitle) {

        String jsonTemplate = "";
        try {
//            jsonTemplate = convertFileIntoString(getServletContext().getRealPath("/templates/BarGraphTemplate.json"));
            jsonTemplate = convertFileIntoString("web\\templates\\BarGraphTemplate.json");

            jsonTemplate = jsonTemplate.replaceAll("#WIDTH", String.valueOf(width));
            jsonTemplate = jsonTemplate.replaceAll("#HEIGHT", String.valueOf(height));
            jsonTemplate = jsonTemplate.replaceAll("#XDATA", Arrays.toString(xData));
            jsonTemplate = jsonTemplate.replaceAll("#YDATA", Arrays.toString(yData));
            jsonTemplate = jsonTemplate.replaceAll("#GRAPHTITLE", graphTitle);
            jsonTemplate = jsonTemplate.replaceAll("#XTITLE", xTitle);
            jsonTemplate = jsonTemplate.replaceAll("#YTITLE", yTitle);
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