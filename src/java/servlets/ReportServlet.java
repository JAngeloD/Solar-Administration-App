/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author 856622
 */
public class ReportServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //Data will be retrieved from the JSP
        
        //Logic for the CSV Parser (If chosen)
        
        
        //Logic for handling report builder (If chosen)
        
            //Based on what the user has chosen on the dropdown
            
                //Invokes the report builders method (out of 4 methods) and stores it into variables
                
            //Organizes the variables and put them into the JSP using setAttribute()
            
            //Redirect using getRequestDispatcher().foward() 
    }

    /**
     * 
     * Creates a JSON plot graph with variables from the parameters
     * The graph can either be "Calendar Year (January 1 to December 31) –Energy @ PCC"
     * or "Calendar Year to Date –similar toAnnual Report –Energy @ PCC"
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
     * Creates a JSON plot graph with variables from the parameters
     * The graph can either be "Last full of current year compared to same month of previous 5 years @ PCC"
     * or "Year to Year Comparison at PCC"
     * 
     * @param year - years in (X axis) 
     * @param energy - can either be in monthly energy or annual energy (Y axis)
     * @return - JSON plot graph
     */
    public String buildGraphB(int[] year, double[] energy) {

        return "";
    }

}
