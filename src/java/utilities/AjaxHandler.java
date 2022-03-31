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
 *
 * @author 856622
 */
public class AjaxHandler extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    //object to be written = models.Facility[ recordID=100000001 4193 Tue Mar 29 09:07:38 MDT 2022 29.94 1955.24 0.65 -12.42 24.01 6.73 ]
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //Will store the id of the caller and splits it into the model type and the getter function
        // Will have to chane the id later
        String requestedData = request.getParameter("name");
        String modelName = requestedData.substring(0, requestedData.indexOf("_"));
        String operation = requestedData.substring(requestedData.indexOf("_") + 1, requestedData.lastIndexOf("_"));
        String attribute = requestedData.substring(requestedData.lastIndexOf("_") + 1);
        String timestamp = "4192"; //TEMPORARY

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
        } catch (InvocationTargetException e) {
            data = -1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        data = Math.random() * data; //TEMPORARY
        
        String finalData = String.valueOf(data);

        String max = request.getParameter("max");
        String min = request.getParameter("min");
        if ((max != null && min != null) && (!max.equals("") && !min.equals(""))) {
            if (Double.parseDouble(max) <= data) {
                max = String.valueOf(data);
            }
            if (Double.parseDouble(min) >= data || Double.parseDouble(min) == 0.0) {
                min = String.valueOf(data);
            }

            finalData = String.valueOf(data) + "," + max + "," + min;
        }

        //Send data back
        response.setContentType("text/plain");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(finalData);
    }
}
