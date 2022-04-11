package utilities;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import services.DBAccess;

/**
 * For delivering color data (HEXCODE) to AJAX call. Only used for changing color
 * for both breaker symbols in the home page. Note that in the database breaker status is
 * 0 or 1, not working and working respectively 
 * 
 * Green - working   #00FF00
 * Red - not working #FF0000
 *
 * @author Angelo De Vera
 */
public class AjaxDiagramHandler extends HttpServlet {

    /**
     * Retrieves the breaker status given the breaker deviceID from the AJAX call and returns 
     * the hexcode value for the correct color.
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //Will store the id of the caller and splits it into the model type and the getter function
        String styleString = request.getParameter("style");
        String deviceID = request.getParameter("deviceID");

        //Colors
        final String red = "#FF0000";
        final String green = "#00FF00";
        String finalcolour = "#000000"; //IF BLACK IT MEANS SOMETING WENT WRONG

        //Logic to decide if it's green or red
        //Data to be returned back to caller
        try {
            int breakerStatus = (int) DBAccess.FeederGetRecent("BreakerStatus" + deviceID); //TIMESTAMP IS TEMPORARY
            
            switch (breakerStatus) {
                case 0:
                    finalcolour = red;
                    break;
                case 1:
                    finalcolour = green;
                    break;
            }
            
        } catch (Exception e) {
//            e.printStackTrace();
        }
        
        //Changes the stroke color of the style
        //Regex finds the hex code
        styleString = styleString.replaceAll("#([a-fA-F0-9]{6}|[a-fA-F0-9]{3})", finalcolour);

        //Send data back
        response.setContentType("text/plain");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(styleString);
    }
}
