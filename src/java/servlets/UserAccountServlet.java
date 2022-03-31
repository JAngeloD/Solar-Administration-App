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
                request.setAttribute("list", users);
            }
            catch(Exception e){
                System.out.println(e.toString());
            }    
            
            getServletContext().getRequestDispatcher("/WEB-INF/userAccounts.jsp").forward(request, response);
        }
        getServletContext().getRequestDispatcher("/WEB-INF/userAccounts.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DBAccess dba = new DBAccess();
        String action = request.getParameter("action");
        if(action.equals("addUser")){
            
        }
        else if(action.equals("fillEdit")){
            String email = request.getParameter("email");
            Users user = dba.UsersGet(email);
            request.setAttribute("email_edit", user.getEmail());
            request.setAttribute("type_edit", user.getTypeId().getTypeName());
            request.setAttribute("active_edit", user.getActive());
            request.setAttribute("fname_edit", user.getFirstName());
            request.setAttribute("lname_edit", user.getLastName());
            request.setAttribute("password_edit", user.getPassword());
            doGet(request, response);
        }
        else if(action.equals("saveUser")){
            String email = request.getParameter("email_edit");
            int typeID = Integer.parseInt(request.getParameter("type_edit"));
            BIT active = request.getParameter("active_edit");
            String fName = request.getParameter("fname_edit");
            String lName = request.getParameter("lname_edit");
            String password = request.getParameter("password_edit");
            
        }
        
        
    }

}
