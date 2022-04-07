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

/**
 * Processes HTTL requests
 */
@WebServlet(name = "UserAccountServlet", urlPatterns = {"/UserAccountServlet"})
public class UserAccountServlet extends HttpServlet {
    
    /**
     * Processes HTTP GET requests, displays a list of all users
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet specific error occurs
     * @throws IOException  if an I/O error occurs
     */
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
        getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
    }

    /**
     * Processes HTTP POST requests according to the user's selected action
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet specific error occurs
     * @throws IOException  if an I/O error occurs 
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DBAccess dba = new DBAccess();
        String action = request.getParameter("action");
        if(action.equals("addUser")){
            String email = request.getParameter("email");
            int typeID = Integer.parseInt(request.getParameter("type"));
            int active = Integer.parseInt(request.getParameter("active"));
            String fName = request.getParameter("firstName");
            String lName = request.getParameter("lastName");
            String password = request.getParameter("password");
            dba.insertUser(email, typeID, active, fName, lName, password);
            request.setAttribute("message", "User was created successful");
            doGet(request, response);
        }
        else if(action.equals("fillEdit")){
            String email = request.getParameter("email");
            Users user = dba.UsersGet(email);
            request.setAttribute("email_e", user.getEmail());
            request.setAttribute("typeval_e", user.getTypeId().getTypeId());
            request.setAttribute("type_e", user.getTypeId().getTypeName());
            if(user.getActive()){
                request.setAttribute("active_e", "Active");
                request.setAttribute("activeVal_e", 1);
            }
            else{
                request.setAttribute("active_e", "Inactive");
                request.setAttribute("activeVal_e", 0);
            }
            
            request.setAttribute("fname_e", user.getFirstName());
            request.setAttribute("lname_e", user.getLastName());
            request.setAttribute("password_e", user.getPassword());
            doGet(request, response);
        }
        else if(action.equals("saveUser")){
            String email = request.getParameter("email_edit");
            int typeID = Integer.parseInt(request.getParameter("type_edit"));
            int active = Integer.parseInt(request.getParameter("active_edit"));
            String fName = request.getParameter("fname_edit");
            String lName = request.getParameter("lname_edit");
            String password = request.getParameter("password_edit");
            try{
                dba.updateUser(email, typeID, active, fName, lName, password);
                request.setAttribute("messageEdit", "Edit was successful");
                doGet(request, response);
            }
            catch(Exception e){
                System.out.println(e.toString());
            }
        }        
    }

}
