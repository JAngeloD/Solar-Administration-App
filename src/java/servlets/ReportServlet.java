/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
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
        try {
            request.setAttribute("x", ReportBuilder.getAllMonths());
            request.setAttribute("y1", ReportBuilder.getEnergyByYear(2022));
            request.setAttribute("y2", ReportBuilder.getCumulativeEnergyByYear(2022));
        } catch (SQLException ex) {
            Logger.getLogger(ReportServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        getServletContext().getRequestDispatcher("/WEB-INF/reports.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //Data will be retrieved from the JSP
        String reportType = request.getParameter("reportType");


        switch (reportType) {
            case "graphReport":
                String graphChoice = request.getParameter("reportChoice");
                String year = request.getParameter("year");

                try {
                    switch (graphChoice) {
                        case "Anual Energy at PCC":
                            request.setAttribute("x", ReportBuilder.getAllMonths());
                            request.setAttribute("y1", ReportBuilder.getEnergyByYear(Integer.parseInt(year)));
                            request.setAttribute("y2", ReportBuilder.getCumulativeEnergyByYear(Integer.parseInt(year)));
                            break;
                        case "PCC year to year comparison":
                            request.setAttribute("x", ReportBuilder.getYears());
                            request.setAttribute("y1", ReportBuilder.getTotalEnergyByYears());
                            break;
                        case "Year to date":
                            request.setAttribute("x", ReportBuilder.getAllMonths());
                            request.setAttribute("y1", ReportBuilder.getEnergyByYear(Year.now().getValue()));
                            request.setAttribute("y2", ReportBuilder.getCumulativeEnergyByYear(Year.now().getValue()));
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
