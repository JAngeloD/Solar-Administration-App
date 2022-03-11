package utilities;

import dbutil.FacilityDB;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.lang.reflect.InvocationTargetException;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.lang.reflect.Method;
import services.DBAccess;

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
        String modelName = requestedData.substring(0, requestedData.indexOf("_"));
        String operation = requestedData.substring(requestedData.indexOf("_") + 1, requestedData.lastIndexOf("_"));
        String attribute = requestedData.substring(requestedData.lastIndexOf("_") + 1);
        String timestamp = "4821"; //TEMPORARY
        
        //Data to be returned back to caller
        double data = -1;
        try {
            DBAccess db = new DBAccess();
            Method[] models = db.getClass().getDeclaredMethods();

            switch (operation) {
                case "Get":
                    for (Method m : models) {
                        if (m.getName().equals(modelName + operation)) {
                            Object[] args = {attribute, timestamp};
                            data = (double) m.invoke(db, args);
                        }
                    }
                    break;
                case "Set":
                    break;
            }
        } 
        catch (InvocationTargetException e) {
            data = 0.01;
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        
        Random rn = new Random();
        
        //Send data back
        response.setContentType("text/plain");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(String.valueOf(data));
    }
}
