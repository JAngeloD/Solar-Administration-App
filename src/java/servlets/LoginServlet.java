/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.UUID;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet
{
    @Override
    protected void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException
    {
        final String action = request.getParameter( "action" );
        if( action != null && action.equals( "logout" ) )
        {
            HttpSession session = request.getSession( false );
            session.invalidate();
            
            getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
        }
        else
        {
            HttpSession session = request.getSession();
            session.setAttribute( "nonce", UUID.randomUUID().toString() );
            
            String username = (String)session.getAttribute( "username" );
            if( username != null && !username.isEmpty() )
            {
                response.sendRedirect( "home" );
            }
            else
            {
                getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
            }
        }
    }

    @Override
    protected void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException
    {
        String username = request.getParameter( "username" );
        String password = request.getParameter( "password" );
        
        // temporary until there is some sort of database or API request for the user account
        if( username == null || username.isEmpty() || password == null || password.isEmpty()
                || !username.equals( "admin" ) && !password.equals( "password" ) )
        {
            request.setAttribute( "form_feedback", "Invalid username or password" );
            getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
            return;
        }
        
        // todo: validate nonce
            
        HttpSession session = request.getSession();
        session.setAttribute( "username", username );
        
        response.sendRedirect( "home" );
    }
}