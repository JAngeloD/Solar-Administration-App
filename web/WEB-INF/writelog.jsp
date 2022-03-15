<%-- 
    Document   : writeLog
    Created on : Mar 8, 2022, 8:43:37 AM
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
        <li class="menuButton"><a href="home">Home</a></li>
        <li class="menuButton"><a href="">Account</a></li>
        <li class="menuButton"><a href="login">Logout</a></li>
        <h1 class="left">Operator Logs</h1>
      </ul>
    </div>
    <br />
    <br />
    <div id="form">
      <form method="POST" action="writelog">
        <div>
              <label><b>Choose log type:</b></label>
              <select name="logType" id="logType">
                <option value="1">Inspection</option>
                <option value="2">Maintenance</option>
                <option value="3">Planner Outage</option>
                <option value="4">Forced Outage</option>
                <option value="5">Other</option>
              </select>
        </div>
        <br />
        <textarea name="log" rows="20" cols="75">Start here</textarea>
        <br />
        <input type="submit" value="Save Log">
      </form>
    </div>
</body>

</html>
