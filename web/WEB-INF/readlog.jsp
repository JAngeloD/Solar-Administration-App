<%-- 
    Document   : readLog
    Created on : Mar 8, 2022, 10:06:15 AM
    Author     : hazco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <br />
            <input type="submit" value="Submit">
      </form>
    </div>
    <div id="logList">
      <h3>RESULTS</h3>
      <ul>
          <c:forEach items="${logs}" var="log">
            <li><a href="logs?action=view&amp;logId=${log.logId}">${log.Id} ${log.logType} )</a><br></li>
          </c:forEach>
      </ul>
    </div>
    <div id="logDetail">
      <label>Date and time:</label>
      <input type="text" id="date" value="selectedLog.logId" />
      <br />
      <label>Log Type:</label>
      <input type="text" id="date" value="selectedLog.logType" />
      <br />
      <label>By:</label>
      <input type="text" id="date" value="selectedLog.created_by" />
      <br />
      <textarea name="contents" rows="20" cols="75">${selectedLog.log_text}</textarea><br>
    </div>
</body>

</html>
