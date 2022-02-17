package utilities;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.lang.reflect.Method;

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

        //Makes new SortingStrategy object
        try {
            //Creates a CSVParser object to use one of the getters based off of the modelName from the AJAX call
            CSVParser modelFactory = new CSVParser(getServletContext().getRealPath("/resources/Complied Data.csv"));

            //Gets methods of the parser class
            Class CSVParserClass = modelFactory.getClass();
            Method[] models = CSVParserClass.getDeclaredMethods();

            //Loops through all the methods to find the right model to use and gets its data from the specfied getter method
            for (Method m : models) {
                if (m.getName().equals(modelName)) {
                    data = (double) m.invoke(modelFactory, getterMethod);
                }
            }
        } catch (Exception e) {
            System.out.println(e.toString());
        }

        //Send data back
        response.setContentType("text/plain");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(String.valueOf(data));
    }
}
