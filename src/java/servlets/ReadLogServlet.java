package servlets;

import dbutil.FacilityLogsDB;
import java.io.IOException;
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
        List<FacilityLogs> logs = DBAccess.FacilityGetAll();
        session.setAttribute("logList", logs);
        request.setAttribute("logList", logs);

        String typeLog = request.getParameter("typeLog");
        switch (typeLog) {
            case "1":
                request.setAttribute(typeLog,"Inspection" );
                break;
            case "2":
                request.setAttribute(typeLog, "Maintenance" );
                break;
            case "3":
                request.setAttribute(typeLog, "Planner Outage" );
                break;
            case "4":
                request.setAttribute(typeLog, "Forced Outage" );
                break;
            case "5":
                request.setAttribute(typeLog, "Other" );
                break;
        }

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

        HttpSession session = request.getSession(false);
        String logId = request.getParameter("logID");
        String logType = request.getParameter("logType");
        String timeStamp = request.getParameter("timeStamp");
        String logText = request.getParameter("logText");
        String email = request.getParameter("email");

        int logTypeInt = Integer.parseInt(logType);
        String from = request.getParameter("from");
        String to = request.getParameter("to");

        DateTimeFormatter formatDateTime = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm");
        LocalDateTime localFrom = LocalDateTime.from(formatDateTime.parse(from));
        LocalDateTime localTo = LocalDateTime.from(formatDateTime.parse(to));

        DBAccess access = new DBAccess();

        try {
            Timestamp fromTimeStamp = Timestamp.valueOf(localFrom);
            Timestamp toTimeStamp = Timestamp.valueOf(localTo);
        } catch (Exception e) {
            e.printStackTrace();
        }

        // Pass log type to DBAccess.FacilityGetLogs( ... ) to get the proper log
        // convert from date and to date, to a timestamp (int) and pass it to FacilityGetLog
        // DBAccess.FacilityGetLog( logType );
        // Now use session.setAttribute to change the logList to show your log results
        try {
            List<FacilityLogs> logs = access.getAll(logId);
            session.setAttribute("test", logs);
        } catch (Exception ex) {
            Logger.getLogger(ReadLogServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        getServletContext().getRequestDispatcher("/WEB-INF/readlog.jsp").forward(request, response);
    }

}
