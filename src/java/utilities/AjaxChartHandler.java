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

        String[] x = new String[]{"\"2022-02-09 03:00:00\"", "\"2022-02-09 05:00:00\"", "\"2022-02-09 07:00:00\"", "\"2022-02-09 09:00:00\"", "\"2022-02-09 11:00:00\"",
            "\"2022-02-09 13:00:00\"", "\"2022-02-09 15:00:00\"", "\"2022-02-09 17:00:00\"", "\"2022-02-09 19:00:00\""};

        String jsonTest = jsonTemplateString(x, y, "lines");

        //Send data back
        response.setContentType("text/plain");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(jsonTest);
    }

    /**
     * This generates a JSON description of a chart using the given parameters as a string Note: layout needs to be in this JSON string and not anywhere else since it overrides it
     *
     * @param x - x axis data as an array
     * @param y - y axis data as an array
     * @param type - type of graph ex: bar, line etc
     * @return - String description of the JSON
     */
    public String jsonTemplateString(String[] x, int y[], String type) {
        String finalString = "{\n"
                + "    \"data\": [\n"
                + "        {\n"
                //                + "            \"uid\": \"babced\",\n"
                + "            \"fill\": \"tozeroy\",\n"
                //                + "            \"mode\": \"none\",\n"
                //                + "            \"name\": \"Col2\",\n"
                + "            \"type\": \"lines\",\n"
                + "            \"x\": " + Arrays.toString(x) + ",\n"
                + "            \"y\": " + Arrays.toString(y) + ",\n"
                + "            \"fillcolor\": \"rgb(224, 102, 102)\""
                + "        }\n"
                + "    ],\n"
                + "    \"layout\": {\n"
                + "        \"title\": \"Test Data\",\n"
                + "        \"width\": 1000,\n"
                + "        \"xaxis\": {\n"
                + "            \"type\": \"date\",\n"
                + "            \"range\": [\n"
                + "                \"2022-02-09\",\n"
                + "                \"2022-02-10\"\n"
                + "            ],\n"
                + "            \"title\": \"Time\",\n"
                + "            \"showgrid\": false,\n"
                + "            \"autorange\": false,\n"
                //Check this for formating https://plotly.com/chart-studio-help/date-format-and-time-series/#:~:text=Chart%20Studio%20conversion.-,Entering%20Dates%20and%20Times%20in%20Chart%20Studio's%20Grid,through%2023%20reserved%20for%20PM.
                + "            \"tickformat\": \"%I %p\" \n"
                + "        },\n"
                + "        \"yaxis\": {\n"
                + "            \"type\": \"linear\",\n"
                + "            \"range\": [\n"
                + "                0,\n"
                + "                100\n"
                + "            ],\n"
                + "            \"title\": \"AC Power (kW)\"\n"
                + "        },\n"
                + "        \"height\": 500,\n"
                + "        \"autosize\": false\n"
                + "    },\n"
                + "    \"frames\": []\n"
                + "}";

        return finalString;
    }
}
