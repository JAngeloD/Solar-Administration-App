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
import utilities.ReportBuilderv2;

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

        try {

            switch (type[0]) {
                case "1":
                    request.setAttribute("x", ReportBuilderv2.getSpecificMonths(start[0], end[0]));
                    request.setAttribute("y1", ReportBuilderv2.getEnergyForSpecificMonths(start[0], end[0]));
                    request.setAttribute("y2", ReportBuilderv2.getCumulativeEnergyForSpecificMonths(start[0], end[0]));
                    break;
                case "2":
                    request.setAttribute("x", ReportBuilderv2.getYears());
                    request.setAttribute("y1", ReportBuilderv2.getTotalEnergyByYears());
                    break;
                case "3":
                    request.setAttribute("x", ReportBuilderv2.getAllMonths());
                    request.setAttribute("y1", ReportBuilderv2.getEnergyByYear(Year.now().getValue()));
                    request.setAttribute("y2", ReportBuilderv2.getCumulativeEnergyByYear(Year.now().getValue()));
                    break;
                case "4":
                    request.setAttribute("x", ReportBuilderv2.getYears());
                    request.setAttribute("y1", ReportBuilderv2.getMonthEnergyPastYears());
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
