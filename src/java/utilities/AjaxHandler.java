package utilities;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.lang.reflect.Method;
import services.DBAccess;

/**
 * For delivering a single value to an AJAX call. Used in pages where data is shown through 
 * a single line (located mostly on tables).
 *
 * @author - Angelo De Vera
 */
public class AjaxHandler extends HttpServlet {

    /**
     * Retrieves a value in the database based on the attribute required, deviceID as well as the device name
     * and delivers it back to the AJAX call. Usually all values retrieved are doubles.
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //Will store the id of the caller and splits it into the model type and the getter function
        // Will have to chane the id later
        String requestedData = request.getParameter("name");
        String modelName = requestedData.substring(0, requestedData.indexOf("_"));
        String operation = requestedData.substring(requestedData.indexOf("_") + 1, requestedData.lastIndexOf("_"));
        String attribute = requestedData.substring(requestedData.lastIndexOf("_") + 1);

        //Data to be returned back to caller
        double data = 0;
        try {
            DBAccess db = new DBAccess();
            Method[] models = db.getClass().getDeclaredMethods();

            switch (operation) {
                case "Get":
                    for (Method m : models) {
                        if (m.getName().equals(modelName + operation + "Recent")) {
                            Object[] args = {attribute};
                            data = (double) m.invoke(db, args);
                        }
                    }
                    break;
                case "Set":
                    break;
            }
        } catch (InvocationTargetException e) {
            data = 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        //IN CASE OF EMERENCY
        data = Math.random() * data; 
        
        String finalData = String.format("%.2f", data);

        String max = request.getParameter("max");
        String min = request.getParameter("min");
        if ((max != null && min != null) && (!max.equals("") && !min.equals(""))) {
            if (Double.parseDouble(max) == 0 || Double.parseDouble(max) <= data) {
                max = String.valueOf(data);
            }
            if (Double.parseDouble(min) >= data || Double.parseDouble(min) == 0.0) {
                min = String.valueOf(data);
            }

            finalData = String.format("%.2f", data) + "," + String.format("%.2f", Double.parseDouble(max)) + "," + String.format("%.2f", Double.parseDouble(min));
        }

        //Send data back
        if(data == 0) {
            response.setStatus(400);
        }
    /// response.setStatus(400); //temp
        response.setContentType("text/plain");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(finalData);
    }
}
