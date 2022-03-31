/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import models.Users;
import services.DBAccess;

@WebServlet(name = "UserAccountServlet", urlPatterns = {"/UserAccountServlet"})
public class UserAccountServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession( false );
        if(session!= null){
            List<Users> users = null;
            DBAccess dba = new DBAccess();
            try{
                users = dba.getUsers();
            }
            catch(Exception e){
                
            }
            getServletContext().getRequestDispatcher("/WEB-INF/userAccounts.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DBAccess dba = new DBAccess();
        String action = request.getParameter("action");
//        if(action.equals("listUsers")){
//            ArrayList<Users> users = null;
//            try{
//                
//            }
//            catch(Exception e){
//                
//            }
//            
//        }
//        else 
        if(action.equals("addUser")){
            
        }
        else if(action.equals("fillEdit")){
            
        }
        else if(action.equals("saveUser")){
            
        }
        
        
    }

}
