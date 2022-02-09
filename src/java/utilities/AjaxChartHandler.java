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
        
        int[] x = new int[] { 3, 5, 7, 9, 11, 13, 15, 17, 19 };

        
        String jsonTest = jsonTemplateString(x, y, "lines");
        
        //Send data back
        response.setContentType("text/plain");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(jsonTest);
    }

    /**
     * This generates a JSON description of a chart using the given parameters as a string
     *
     * @param x - x axis data as an array
     * @param y - y axis data as an array
     * @param type - type of graph ex: bar, line etc
     * @return - String description of the JSON
     */
    public String jsonTemplateString(int[] x, int y[], String type) {

        String finalString = "{\n"
                + "    \"data\": [\n"
                + "        {\n"
                + "            \"x\":" + Arrays.toString(x) + ",\n"
                + "            \"y\":" + Arrays.toString(y) + ",\n"
                + "            \"type\": \"" + type + "\"\n"
                + "        }\n"
                + "    ]\n"
                + "}";

        return finalString;
    }
}
