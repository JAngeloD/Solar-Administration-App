<%-- 
    Document   : reports
    Created on : Mar 21, 2022, 9:25:21 PM
    Author     : hazco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PCCdetail</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="javascript/ParameterSelection.js"></script>
        <style><%@include file="/WEB-INF//css/styleSheet.css"%></style>
   </head>
   <body>
    <div>
        <ul>
          <li class="menuButton"><a href="login">Logout</a></li>
          <li class="menuButton"><a href="">Account</a></li>
          <li class="menuButton"><a href="home">Home</a></li>
          <h1 class="left">REPORTS</h1>
        </ul>
    </div>
    <div>
        <form method="POST" action="createReport">
            <h3>Please select the dates</h3>
            <label>From: </label>
            <input type="datetime-local" id="fromDT">
            <label>To: </label>
            <input type="datetime-local" id="toDT">
            <br>
            <input type="radio" id="graphReport">
            <label>Report type: </label>
            <select name="reportChoice" id="reportChoice">
                <option name="anual1" id="anual1">Anual Energy at PCC</option>
                <option name="ytoytPCC" id="ytoyatPCC">PCC year to year comparison</option>
                <option name="yeartodatePCC" id="yeartodatePCC">Year to date</option>
                <option name="monthComparisonOverYears" id="monthComparisonOverYears">Month comparison in the last 5 years</option>
            </select>
            <br>
            <input type="radio" id="csvReport">
            <label>Export raw data as csv file. Choose variables:</label>
            <br>
            <input type="checkbox" id="pcc" name="pcc" onclick="displayPCC()">
            <label>PCC</label>
            <br>
            <input type="checkbox" id="feeders" name="feeders" onclick="displayFeeders()">
            <label>Feeders</label>
            <br>
            <input type="checkbox" id="inverters" name="inverters" onclick="displayInverters()">
            <label>Inverters</label>
            <br>
            <input type="checkbox" id="weather" name="weather" onclick="displayWeather()">
            <label>Weather Data</label>
            <input type="submit" value="Create Report">
        </form>
    </div>  
   </body>
</html>
