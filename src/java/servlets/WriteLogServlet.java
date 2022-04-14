package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import services.DBAccess;

/**
 * Writes logs to database
 * @author Steven Tran
 */
public class WriteLogServlet extends HttpServlet
{
    @Override
    protected void doGet( HttpServletRequest request, HttpServletResponse response )
            throws ServletException, IOException
    {
        getServletContext().getRequestDispatcher("/WEB-INF/writelog.jsp").forward(request, response);
    }

    /**
     * Handles the form submission and writes to the database
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException 
     */
    @Override
    protected void doPost( HttpServletRequest request, HttpServletResponse response )
            throws ServletException, IOException
    {
        int logType = -1;
        String log = request.getParameter( "log" );
        request.setAttribute("message", "Failed to write log");
        
        try
        {
            logType = Integer.parseInt( request.getParameter( "logType" ) );
        }
        catch( NumberFormatException ex )
        {
            System.out.println( ex.toString() );
        }
        
        // if the form didnt provide us with valid data, then don't insert it into the database.
        if( logType != -1 && log != null && !log.isEmpty() )
        {
            HttpSession session = request.getSession( false );
            // email attribute will never be invalid, as it's validated through the authentication filter
            DBAccess.FacilityInsert( (String)session.getAttribute( "email" ), logType, log );
            request.setAttribute("message", "Created log!");
        }
        
        getServletContext().getRequestDispatcher("/WEB-INF/writelog.jsp").forward(request, response);
    }
}
