package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import services.DBAccess;

/**
 * Reset a user password
 * @author Haz W
 */
public class ResetPasswordServlet extends HttpServlet {

    /**
     * Process HTTP GET request sending the user to a jsp to request the reset of the 
     * password or to set a new password if uuid has been already assigned
     * @param request HTTP request
     * @param response HTTP response
     * @throws ServletException
     * @throws IOException 
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String uuid = request.getParameter("uuid");
        if (uuid != null){
            request.setAttribute("uuid", uuid);
            getServletContext().getRequestDispatcher("/WEB-INF/resetNewPassword.jsp").forward(request, response);
            return;
        }
        else{
            getServletContext().getRequestDispatcher("/WEB-INF/resetPassword.jsp").forward(request, response);
            return;
        }
    }

    /**
     * Process HTTP POST requests. Receives the request for password reset and sends 
     * the user an email to make sure the right user has access to the link to 
     * reset the password or reads the new password and sends the information to
     * the database to set the new password if uuid matches uuid in the database
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException 
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DBAccess dba = new DBAccess();
        String action = request.getParameter("action");
        System.out.println(action);
        if (action.equals("resetPassword")) {
            String email = request.getParameter("email");
            System.out.println(email);
            String path = getServletContext().getRealPath("/WEB-INF");
            System.out.println(path);
            String url = request.getRequestURL().toString();     
            System.out.println(url);
            if(dba.resetPassword(email, path, url)){
                request.setAttribute("message", "Please check your inbox for an email with instructions"); 
                getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
                return;
            }
        } 
        else if (action.equals("changePassword")) {
            String uuid = request.getParameter("uuid");
            System.out.println(action + " " + uuid);
            String password = request.getParameter("newPassword");
            System.out.println(password);
            if(dba.changePassword(uuid, password)){
                request.setAttribute("message", "Password has been succesfully changed");      
                getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
                return;
            }
        }
        getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
        return;
    }

}
