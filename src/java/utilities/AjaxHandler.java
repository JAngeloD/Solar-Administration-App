package utilities;

import dbutil.FacilityDB;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.lang.reflect.Method;
import java.util.List;
import models.Facility_1;

/**
 *
 * @author 856622
 */
public class AjaxHandler extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //Will store the id of the caller and splits it into the model type and the getter function
        // Will have to chane the id later
        String requestedData = request.getParameter("name");
        String modelName = "get" + requestedData.substring(0, requestedData.indexOf("get"));
        String getterMethod = requestedData.substring(requestedData.indexOf("get"));

        if (getterMethod.substring(getterMethod.length() - 1).matches("[0-9]+")) {
            getterMethod = getterMethod.substring(0, getterMethod.length() - 1);
            if (getterMethod.substring(getterMethod.length() - 1).matches("[0-9]+")) {
                getterMethod = getterMethod.substring(0, getterMethod.length() - 1);
            }
        }

        //Data to be returned back to caller
        double data = 0;
        
        

        //Send data back
        response.setContentType("text/plain");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(String.valueOf(data));
    }
}
