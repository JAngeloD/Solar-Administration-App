<%-- 
    Document   : readLog
    Created on : Mar 8, 2022, 10:06:15 AM
    Author     : hazco
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">

    <head>
        <meta charset="utf-8">
        <title>Write Logs</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">

    </head>

    <body>
        <div id="top-container">
            <div>
                <ul>
                    <li class="menuButton"><a href="login">Logout</a></li>
                    <li class="menuButton"><a href="">Account</a></li>
                    <li class="menuButton"><a href="home">Home</a></li>
                    <h1 class="left">Read Logs</h1>
                </ul>
            </div>
            <br />
            <br />
            <div id="form">
                <div>
                    <form method="POST" action="">
                        <label>Select dates</label><br />
                        <label>From: </label>
                        <input type="datetime-local" id="from" name="from" value="" min="" max="">
                        <label>To: </label>
                        <input type="datetime-local" id="to" name="to" value="" min="" max="">
                        <br />
                        <label>Select log type:</label>
                        <select name="logType" id="logType">
                            <option value="1">Inspection</option>
                            <option value="2">Maintenance</option>
                            <option value="3">Planner Outage</option>
                            <option value="4">Forced Outage</option>
                            <option value="5">Other</option>
                        </select>
                        <br/>
                        <input type="submit" value="Submit">
                    </form>
                </div>
                <div id="logList">
                    <h3>RESULTS</h3>
                    <ul>
                        <table>
                            <tr>
                                <th>ID</th>
                                <th>Type</th>
                                <th>Log Date</th>
                                <!--<th>Text</th>-->
                                <th></th>
                            </tr>
                            <c:forEach var="log" items="${logList}" >
                                <tr>
                                    <td>${log.getLogId()}</td>
                                    <td>${log.getLogType()}</td>
                                    <td>${log.getTimeStamp()}</td>                          
                                    <!--<td>${log.getLogText()}</td>-->
                                    <td><a href="readlog?action=view&amp;logID=${log.getLogId()}">Select</a></td>
                                    <td>                                
                                        <form action="readlog" method="POST">
                                            <td><input type="submit" value="Edit" class="regButton"></td>
                                            <input type="hidden" name="action" value="view">
                                            <input type="hidden" name="logID" value="${log.getLogId()}"/>
                                        </form></td>
                                </tr>
                            </c:forEach>
                        </table>

                    </ul>
                </div>
                <div>
                    <c:if test="${selectedLog ne null}">
                        <h2>View</h2>
                        <form action="readlog" method="POST">
                            <label>Log ID:</label>
                            <input type="text" id="date" value="${selectedLog.logId}" />
                            <label>Date and time:</label>
                            <input type="text" id="date" value="${selectedLog.timeStamp}" />
                            <br />
                            <label>Log Type:</label>
                            <input type="text" id="date" value="${selectedLog.logType}" />
                            <br />
                            <label>By:</label>
                            <input type="text" id="date" value="${selectedLog.email}" />
                            <br/>
                            <textarea name="contents" rows="20" cols="75">${selectedLog.logText}</textarea><br>
                        </form>
                    </c:if>

                </div>
            </div>


    </body>
</html>
