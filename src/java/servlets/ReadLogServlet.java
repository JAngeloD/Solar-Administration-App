package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import models.FacilityLogs;
import models.Users;
import services.DBAccess;

public class ReadLogServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        /*DBAccess access = new DBAccess();
        HttpSession session = request.getSession();
        String logId = (String) session.getAttribute("logId");
        Date createdBy = (Date) session.getAttribute("created_by");

        try {

            String logType = (String) session.getAttribute("logType");
            String list = access.getAll(logId);
            request.setAttribute("logs", list);
        } catch (Exception ex) {
            Logger.getLogger(ReadLogServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        String action = request.getParameter("action");

        if (action != null && action.equals("view")) {
            try {
                int id = Integer.parseInt(request.getParameter("logId"));
                DBAccess log = access.get(id);
                request.setAttribute("selectedLog", log);
            } catch (Exception ex) {
                Logger.getLogger(ReadLogServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }*/
        
        HttpSession session = request.getSession( false );

        List<FacilityLogs> logs = DBAccess.FacilityGetAll();
        //request.setAttribute( "logs", logs );
        session.setAttribute( "logList", logs );
        request.setAttribute( "logList", logs);

        getServletContext().getRequestDispatcher("/WEB-INF/readlog.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Pass log type to DBAccess.FacilityGetLogs( ... ) to get the proper logs
        String logType = request.getParameter("logType");
        String from = request.getParameter("from");
        String to = request.getParameter("to");
        
        // convert from date and to date, to a timestamp (int) and pass it to FacilityGetLog
        //DBAccess.FacilityGetLog( logType, );
        
        // Now use session.setAttribute to change the logList to show your log results
        getServletContext().getRequestDispatcher("/WEB-INF/readlog.jsp").forward(request, response);
    }
}
