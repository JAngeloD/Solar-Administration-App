/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utilities;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author 856622
 */
public class AjaxDiagramHandler extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //Will store the id of the caller and splits it into the model type and the getter function
        String styleString = request.getParameter("style");
        
        //Colors
        final String red = "#FF0000";
        final String green = "#00FF00";
        String finalcolour = "#000000"; //IF BLACK IT MEANS SOMETING WENT WRONG
        
        //Logic to decide if it's green or red
        //Random testing for now
        Random rd = new Random();
        if(rd.nextInt(100) % 2 == 0) {
            finalcolour = green;
        }
        else {
            finalcolour = red;
        }
        
        //Changes the stroke color of the style
        styleString = styleString.replaceAll("#([a-fA-F0-9]{6}|[a-fA-F0-9]{3})", finalcolour);
        
        //Send data back
        response.setContentType("text/plain");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(styleString);
    }
}
