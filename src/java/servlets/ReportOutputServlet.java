package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.ParseException;
import java.time.Year;
import java.util.Arrays;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Output;
import utilities.ReportBuilder;

/**
 *
 * @author 821320
 */
public class ReportOutputServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //get the params
        String[] type = request.getParameterValues("reportType");
        String[] start = request.getParameterValues("startDate");
        String[] end = request.getParameterValues("endDate");
        
        //set what we need to grab
        request.setAttribute("reportChoice", type[0]);
        request.setAttribute("year", Year.now().getValue());
        request.setAttribute("start", start[0]);
        request.setAttribute("end", end[0]);
        
        

        try {
            //The report builder returns this correctly, gotta look into plotly later
            //System.out.println(Arrays.toString(ReportBuilder.getSpecificMonths(start[0], end[0])));
            Output o = new Output();
            switch (type[0]) {
                case "1":
                    int[] x = ReportBuilder.getSpecificMonths(start[0], end[0]);
                    String[] xStrings = o.getMonthStrings(ReportBuilder.getSpecificMonths(start[0], end[0]));
                    double[] y1 = ReportBuilder.getEnergyForSpecificMonths(start[0], end[0]);
                    double[] y2 = ReportBuilder.getCumulativeEnergyForSpecificMonths(start[0], end[0]);
                    request.setAttribute("x", xStrings);
                    request.setAttribute("y1", y1);
                    request.setAttribute("y2", y2);
                    request.setAttribute("output", o.getOutputArray(x, y1, y2));
                    break;
                case "2":
                    int[] xCase2 = ReportBuilder.getYears();
                    double[] y1Case2 = ReportBuilder.getTotalEnergyByYears();
                    request.setAttribute("x", xCase2);
                    request.setAttribute("y1", y1Case2);
                    request.setAttribute("output", o.getOutputArray(xCase2, y1Case2));
                    break;
                case "3":
                    int[] xCase3 = ReportBuilder.getAllMonths();
                    String[] xStringsCase3 = o.getMonthStrings(ReportBuilder.getAllMonths());
                    double[] y1Case3 = ReportBuilder.getEnergyByYear(Year.now().getValue());
                    double[] y2Case3 = ReportBuilder.getCumulativeEnergyByYear(Year.now().getValue());
                    request.setAttribute("x", xStringsCase3);
                    request.setAttribute("y1", y1Case3);
                    request.setAttribute("y2", y2Case3);
                    request.setAttribute("output", o.getOutputArray(xCase3, y1Case3, y2Case3));
                    break;
                case "4":
                    int[] xCase4 = ReportBuilder.getYears();
                    double[] y1Case4 = ReportBuilder.getMonthEnergyPastYears();
                    request.setAttribute("x", xCase4);
                    request.setAttribute("y1", y1Case4);
                    request.setAttribute("output", o.getOutputArray(xCase4, y1Case4));
                    break;
            }

        } catch (ParseException | SQLException pe) {
            System.out.println("An error has been caught");
        }

        getServletContext().getRequestDispatcher("/WEB-INF/reportOutput.jsp").forward(request, response);
        return;

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
