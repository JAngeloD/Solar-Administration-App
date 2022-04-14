package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.UUID;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import models.Users;
import services.DBAccess;
import utilities.PasswordAuth;

/**
 * 
 * @author Steven Tran
 */

public class LoginServlet extends HttpServlet
{
    /**
     * Generates a nonce, and binds it to the users session. Also handles logouts
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException 
     */
    @Override
    protected void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException
    {
        final String action = request.getParameter( "action" );
        if( action != null && action.equals( "logout" ) )
        {
            HttpSession session = request.getSession( false );
            if( session != null )
            {
                String email = (String)session.getAttribute( "email" );
                if( email != null && !email.isEmpty() )
                    session.invalidate();
            }

            request.setAttribute( "formFeedback", "Successfuly logged out" );
            
            // create a new session for nonce
            session = request.getSession();
            session.setAttribute( "nonce", UUID.randomUUID().toString() );
            getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
        }
        else
        {
            HttpSession session = request.getSession();
            session.setAttribute( "nonce", UUID.randomUUID().toString() );
            
            String email = (String)session.getAttribute( "email" );
            if( email != null && !email.isEmpty() )
            {
                response.sendRedirect( "home" );
            }
            else
            {
                getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
            }
        }
    }

    /**
     * Handles the login, verifies their email and password exists in the database. Also checks nonce in the session
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException 
     */
    @Override
    protected void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException
    {
        String email = request.getParameter( "email" );
        String password = request.getParameter( "password" );
        String nonce = request.getParameter( "nonce" );
        HttpSession session = request.getSession( false );
        
        if( nonce == null || nonce.isEmpty() || !nonce.equals( (String)session.getAttribute( "nonce" ) ) )
        {
            request.setAttribute( "formFeedback", "Security error" );
            getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
            return;
        }
        
        if( email == null || email.isEmpty() || password == null || password.isEmpty() )
        {
            request.setAttribute( "formFeedback", "Invalid username or password" );
            getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
            return;
        }
        
        Users user = DBAccess.UsersGet( email );
        password = PasswordAuth.hashPassword(password);
        
        if( user == null )
        {
            request.setAttribute( "formFeedback", "Invalid username or password" );
            getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
            return;
        }
        
        if (user.getPassword().equals(password)){
            session.setAttribute( "email", email );
            session.setAttribute( "accessLevel", user.getTypeId().getAccessLevel() );
            response.sendRedirect( "home" );
        } else {
            request.setAttribute( "formFeedback", "Invalid username or password" );
            getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
        }
    }
}
