package servlets;

import dbutil.FacilityLogsDB;
import java.io.IOException;
import java.sql.Timestamp;
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
import services.DBAccess;
import utilities.TimeFactory;

public class ReadLogServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        DBAccess access = new DBAccess();
        HttpSession session = request.getSession();

        // Uncomment to show every log 
//        List<FacilityLogs> logs = DBAccess.FacilityGetAll();
//        session.setAttribute("logList", logs);
//        request.setAttribute("logList", logs);
        //Triggers when the "View" link is clicked in the read logs page 
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

        String action = request.getParameter("action");
        switch (action) {
            //Currently retrieves record using start date and end date (Will need to implement logType + additional paramters)
            case "datesearch":
                String logType = request.getParameter("logType");
                String start = request.getParameter("from");
                String end = request.getParameter("to");


                List<FacilityLogs> logs = null;
                if ((start != null && end != null) && (!start.equals("") && !end.equals(""))) {
                    FacilityLogsDB logdb = new FacilityLogsDB();
                    logs = logdb.getInBetween(TimeFactory.atStartOfDay(start), TimeFactory.atEndOfDay(end), Integer.parseInt(logType));
                } else {
                    System.out.println("Could not find log");
                }

                if (logs != null) {
                    session.setAttribute("logList", logs);
                    request.setAttribute("logList", logs);
                }

                doGet(request, response);
                break;
        }

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
