package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import services.DBAccess;

public class WriteLogServlet extends HttpServlet
{
    @Override
    protected void doGet( HttpServletRequest request, HttpServletResponse response )
            throws ServletException, IOException
    {
        getServletContext().getRequestDispatcher("/WEB-INF/writelog.jsp").forward(request, response);
    }

    @Override
    protected void doPost( HttpServletRequest request, HttpServletResponse response )
            throws ServletException, IOException
    {
        int logType = -1;
        String log = request.getParameter( "log" );
        
        try
        {
            logType = Integer.parseInt( request.getParameter( "logType" ) );
        }
        catch( NumberFormatException ex )
        {
            System.out.println( ex.toString() );
        }
        
        if( logType == -1 )
            return;
        
        HttpSession session = request.getSession( false );
        
        DBAccess.FacilityInsert( (String)session.getAttribute( "email" ), logType, log );
        request.setAttribute("message", "Log was created successfully");
        getServletContext().getRequestDispatcher("/WEB-INF/writelog.jsp").forward(request, response);
    }
}
