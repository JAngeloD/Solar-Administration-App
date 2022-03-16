package servlets;

import dbutil.FacilityLogsDB;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
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
        
        DBAccess access = new DBAccess();
        HttpSession session = request.getSession();
        List<FacilityLogs> logs = access.FacilityGetAll();
        session.setAttribute("logList", logs);
        request.setAttribute("logList", logs);
        
        String action = request.getParameter("action");
        if (action != null && action.equals("view")) {
            try {
                int id = Integer.parseInt(request.getParameter("logID"));
                FacilityLogs log = DBAccess.FacilityGetLog(id);
                request.setAttribute("selectedLog", log);
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }

        getServletContext().getRequestDispatcher("/WEB-INF/readlog.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String action = request.getParameter("action");
        String logId = request.getParameter("logID");
        String logType = request.getParameter("logType");
        String timeStamp = request.getParameter("timeStamp");
        String logText = request.getParameter("logText");
        String email = request.getParameter("email");
        
        // Pass log type to DBAccess.FacilityGetLogs( ... ) to get the proper logs
        String from = request.getParameter("from");
        String to = request.getParameter("to");

        DateTimeFormatter formatDateTime = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm");
        LocalDateTime localFrom = LocalDateTime.from(formatDateTime.parse(from));
        LocalDateTime localTo = LocalDateTime.from(formatDateTime.parse(to));

        try {
            Timestamp fromTimeStamp = Timestamp.valueOf(localFrom);
            Timestamp toTimeStamp = Timestamp.valueOf(localTo);
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        // convert from date and to date, to a timestamp (int) and pass it to FacilityGetLog
        // DBAccess.FacilityGetLog( logType );
        // Now use session.setAttribute to change the logList to show your log results
        DBAccess access = new DBAccess();

        try {
            List<FacilityLogs> logs = access.getAll(logId);
            request.setAttribute("test", logs);
        } catch (Exception ex) {
            Logger.getLogger(ReadLogServlet.class.getName()).log(Level.SEVERE, null, ex);
            request.setAttribute("message", "error");
        }

        HttpSession session = request.getSession(false);

        //session.setAttribute("logList", logs);
        getServletContext().getRequestDispatcher("/WEB-INF/readlog.jsp").forward(request, response);
    }
}
