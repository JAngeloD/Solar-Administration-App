/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.SQLException;
import java.text.ParseException;
import java.time.Year;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import utilities.CSVParser;
import utilities.ReportBuilder;

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
        request.setAttribute("year", "2022");
        
        getServletContext().getRequestDispatcher("/WEB-INF/reports.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //Data will be retrieved from the JSP
        String reportType = request.getParameter("reportType");
        String year = request.getParameter("year");
        

        switch (reportType) {
            case "graphReport":
                String graphChoice = request.getParameter("reportChoice");
                String start = request.getParameter("fromDT");
                String end = request.getParameter("toDT");

                try {
                    switch (graphChoice) {
                        case "Anual Energy at PCC":
                            request.setAttribute("x", ReportBuilder.getAllMonths());
                            request.setAttribute("y1", ReportBuilder.getEnergyByYear(start, end));
                            request.setAttribute("y2", ReportBuilder.getCumulativeEnergyByYear(start, end));
                            break;
                        case "PCC year to year comparison":
                            request.setAttribute("x", ReportBuilder.getYears());
                            request.setAttribute("y1", ReportBuilder.getTotalEnergyByYears());
                            break;
                        case "Year to date":
                            request.setAttribute("x", ReportBuilder.getAllMonths());
                            request.setAttribute("y1", ReportBuilder.getEnergyByYear(start, end));
                            request.setAttribute("y2", ReportBuilder.getCumulativeEnergyByYear(start, end));
                            break;
                        case "Month comparison in the last 5 years":
                            request.setAttribute("x", ReportBuilder.getYears());
                            request.setAttribute("y1", ReportBuilder.getMonthEnergyPastYears());
                            break;
                    }
                } catch (SQLException | ParseException sql) {
                    Logger.getLogger(ReportServlet.class.getName()).log(Level.SEVERE, null, sql);
                }
                
                //set the values to the changed values
                request.setAttribute("reportChoice", graphChoice);
                request.setAttribute("year", year);

                getServletContext().getRequestDispatcher("/WEB-INF/reports.jsp").forward(request, response); //Change to target jsp
                break;
            case "csvReport":
                String[] csvRequestList = request.getParameterValues("csvValue");

//                for (String csvRequestList1 : csvRequestList) {
//                    System.out.println(csvRequestList1);
//                }
                ArrayList<String[]> list = CSVParser.getData(csvRequestList);

                //TESTING ONLY
                System.out.println(list.size());
                for (int i = 0; i < list.size(); i++) {
                    for (int j = 0; j < list.get(i).length; j++) {
                        System.out.println(list.get(i)[j] + " :row" + i + " ");
                    }
                }
                
                if( CSVParser.writeToCSV(list, getServletContext().getRealPath("/resources/"), "testData") )
                {
                    String filePath = "/resources/testData.csv";
                    
                    response.setContentType("text/plain");
                    response.setHeader("Content-disposition", "attachment; filename=testData.csv");

                    try(InputStream in = getServletContext().getResourceAsStream(filePath);
                      OutputStream out = response.getOutputStream()) {

                        byte[] buffer = new byte[1048];

                        int numBytesRead;
                        while ((numBytesRead = in.read(buffer)) > 0) {
                            out.write(buffer, 0, numBytesRead);
                        }
                    }
                    
                }
                
                getServletContext().getRequestDispatcher("/WEB-INF/reports.jsp").forward(request, response);
                break;
        }
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
