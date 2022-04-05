/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.UUID;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import utilities.CSVParser;
import utilities.ReportBuilderv2;

/**
 *
 * @author 856622
 */
public class ReportServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //Intial report values
        request.setAttribute("reportChoice", "Anual Energy at PCC");
        request.setAttribute("scriptFlag", false);
        
        getServletContext().getRequestDispatcher("/WEB-INF/reports.jsp").forward(request, response);
        return;
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String startDate = request.getParameter("fromDT");
        String endDate = request.getParameter("toDT");

        //Data will be retrieved from the JSP
        String reportType = request.getParameter("reportType");

        switch (reportType) {
            case "graphReport":
                String graphChoice = request.getParameter("reportChoice");

                //set the values to the changed values
                request.setAttribute("reportChoice", graphChoice);
                request.setAttribute("startDate", ReportBuilderv2.chopTime(startDate));
                request.setAttribute("endDate", ReportBuilderv2.chopTime(endDate));
                request.setAttribute("scriptFlag", true);

                getServletContext().getRequestDispatcher("/WEB-INF/reports.jsp").forward(request, response); //Change to target jsp
                return;

            case "csvReport":
                String[] csvRequestList = request.getParameterValues("csvValue");
                
                startDate = startDate + " 00:00:00";
                endDate = endDate + " 24:00:00";
                ArrayList<String[]> list = CSVParser.getData(csvRequestList, startDate, endDate);
                
                String fileName = UUID.randomUUID().toString();
                if (CSVParser.writeToCSV(list, getServletContext().getRealPath("/resources/"), fileName)) {
                    String filePath = String.format("/resources/%s.csv", fileName);

                    response.setContentType("text/csv");
                    response.setHeader("Content-disposition", String.format("attachment; filename=%s.csv", fileName));

                    try (InputStream in = getServletContext().getResourceAsStream(filePath);
                            OutputStream out = response.getOutputStream()) {
                        byte[] buffer = new byte[4096];

                        int numBytesRead;
                        while ((numBytesRead = in.read(buffer)) > 0) {
                            out.write(buffer, 0, numBytesRead);
                        }
                    }

                    File file = new File(getServletContext().getRealPath(filePath));
                    file.delete();
                }
        }
        
        getServletContext().getRequestDispatcher("/WEB-INF/reports.jsp").forward(request, response); //Change to target jsp
        return;
    }

    /**
     *
     * Creates a JSON plot graph with variables from the parameters The graph
     * can either be "Calendar Year (January 1 to December 31) –Energy @ PCC" or
     * "Calendar Year to Date –similar toAnnual Report –Energy @ PCC"
     *
     * @param monthlyEnergy - monthly energy as a bar graph (Y axis)
     * @param cumulativeEnergy - cumulative energy as a line graph (Y axis)
     * @param months - months recorded (X axis)
     * @return - JSON plot graph
     */
    public String buildGraphA(double[] monthlyEnergy, double[] cumulativeEnergy, double[] months) {

        return "";
    }

    /**
     *
     * Creates a JSON plot graph with variables from the parameters The graph
     * can either be "Last full of current year compared to same month of
     * previous 5 years @ PCC" or "Year to Year Comparison at PCC"
     *
     * @param year - years in (X axis)
     * @param energy - can either be in monthly energy or annual energy (Y axis)
     * @return - JSON plot graph
     */
    public String buildGraphB(int[] year, double[] energy) {

        return "";
    }

}
