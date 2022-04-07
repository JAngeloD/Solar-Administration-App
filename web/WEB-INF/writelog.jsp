<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
  <meta charset="utf-8">
  <title>Write Logs</title>
     <style><%@include file="/WEB-INF//css/writelog.css"%></style>
          <style><%@include file="/WEB-INF//css/header.css"%></style>
</head>

<body>
  <div class="headerS">
        <ul  id="navigation" class="nav">
  
          <li class="menuButton1"><a class="buttonMenu1" href="login?action=logout">Logout</a></li>
          <li class="menuButton1"><a class="buttonMenu1" href="useraccounts">Account</a></li>
          <li class="menuButton1"><a class="buttonMenu1" href="home">Home</a></li>
         
                  <li class="menuButton1"><a class="buttonMenu1" href="reports">Reports</a></li>
      
         <li class="menuButton1"> <a href="readlog" class="buttonMenu1">READ LOGS</a></li>
          <li class="currentPage"><a class="buttonMenu2" id="current" class="active":active >Write Logs</a></li>
      
          <h1 class="left">OPERATOR LOGS - WRITE LOGS</h1>
        </ul>
      </div>
    <div class="wrapall" id="electricDiagram">
    <div id="form"class="logForm">
      <form method="POST" action="writelog"class="logFormz">
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
    </div>
</body>

</html>
