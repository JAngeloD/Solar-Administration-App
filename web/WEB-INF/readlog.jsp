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
        <title>Read Logs</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <script src="javascript/readlog.js" type="text/javascript"></script>
             <style><%@include file="/WEB-INF//css/readlog.css"%></style>
          <style><%@include file="/WEB-INF//css/header.css"%></style>
    </head>

    <body onload="SetDate()">
         <div class="headerS">
        <ul  id="navigation" class="nav">
  
          <li class="menuButton1"><a class="buttonMenu1" href="login">Logout</a></li>
          <li class="menuButton1"><a class="buttonMenu1" href="account">Account</a></li>
          <li class="menuButton1"><a class="buttonMenu1" href="home">Home</a></li>
          <li class="currentPage"><a class="buttonMenu2" id="current" class="active":active >Read Logs</a></li>
      
          <h1 class="left">OPERATOR LOGS - READ LOGS</h1>
        </ul>
      </div>
         <div class="wrapall" id="electricDiagram">
            <div id="form">
                <div>
                    <form method="POST" action="readlog">
                        <label>Select dates</label><br />
                        <label>From: </label>
                        <input type="date" id="fromDate" name="from" value="">
                        <label>To: </label>
                        <input type="date" id="toDate" name="to" value="">
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
                        <input type="hidden" name="action" value="datesearch">
                        <input type="submit" value="Submit">
                    </form>
                </div>
                <div id="logList">
                    <h3>RESULTS</h3>
                    <ul>
                        <table>
                            <tr>
                                <th>ID</th>
                                <th>Log Type</th>
                                <th>Log Date</th>
                                <!--<th>Text</th>-->
                                <th></th>
                            </tr>
                            <c:forEach var="log" items="${logList}" >
                                <tr>
                                    <td>${log.getLogId()}</td>
                                    <td>${log.logTypeToString()}</td>
                                    <td>${log.getTimeGST()}</td>                          
                                    <!--<td>${log.getLogText()}</td>-->
                                    <td><a href="readlog?action=view&amp;logID=${log.getLogId()}">View</a></td>
                                    <td>                                
                                        <form action="readlog" method="POST">
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
                            <label>Date and time:</label>
                            <input type="text" id="date" value="${selectedLog.getTimeGST()}" size="25"/>
                            <br />
                            <label>Log Type:</label>
                            <input type="text" id="typeLog" value="${selectedLog.logTypeToString()}" />
                            <br />
                            <label>By:</label>
                            <input type="text" id="selectedEmail"  value='${selectedLog.email.getEmail()}' />
                            <br/>
                            <textarea name="contents" rows="20" cols="75">${selectedLog.logText}</textarea><br>
                        </form>
                    </c:if>

                </div>
            </div>

         </div>
    </body>
</html>
