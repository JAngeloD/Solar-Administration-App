<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <style><%@include file="/WEB-INF/css/weatherdetail.css"%></style>
      <style><%@include file="/WEB-INF/css/header.css"%></style>
      <script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
      <script src="javascript/WeatherPageAjax.js"></script>
      <script src="javascript/AjaxHandler.js"></script>
      <title>Weather Detail</title>
   </head>
   <body>
      <div class="headerS">
         <ul  id="navigation" class="nav">
            <li class="menuButton1"><a class="buttonMenu1" href="login?action=logout">Logout</a></li>
            <li class="menuButton1"><a class="buttonMenu1" href="useraccounts">Account</a></li>
            <li class="menuButton1"><a class="buttonMenu1" href="home">Home</a></li>
            <li class="menuButton1"><a class="buttonMenu1" href="reports">Reports</a></li>
            <li class="menuButton1"><a class="buttonMenu1" href="writelog">Operator Log</a></li>
            <li class="currentPage"><a class="buttonMenu2" id="current" class="active":active >Weather</a></li>
            <h1 class="left">WEATHER DETAILS</h1>
         </ul>
      </div>
      <div class="wrapall" id="electricDiagram">
         <div id="graphs">
            <table id="mainTable" width="100%">
               <tr>
                  <td>
                     <div id="power">
                        <div id="root">
                        </div>
                     </div>
                  </td>
                  <td>
                     <div id="wind">
                        <div id="windGraph">
                        </div>
                     </div>
                  </td>
               </tr>
            </table>
         </div>
         <div id="data" >
            <table id="weatherData" width="100%">
               <tr>
                  <th colspan="4"></th>
                  <th colspan="4">   Current</th>
                  <th colspan="4"> Maximum</th>
                  <th colspan="4"> Minimum</th>
               </tr>
               <tr>
                  <th colspan="4">Solar irradiance (POA)</th>
                  <td colspan="4" id="Facility_Get_SolarirridiancePOA" class="realtime">
                     0
                  </td>
                  <td colspan="4" id="Facility_Get_SolarirridiancePOAMax">
                     0
                  </td>
                  <td colspan="4"id="Facility_Get_SolarirridiancePOAMin" hidden>
                     0
                  </td>
               </tr>
               <tr>
                  <th colspan="4">Solar irradiance (GHI)</th>
                  <td colspan="4" id="Facility_Get_SolarirridianceGHI" class="realtime">
                     0
                  </td>
                  <td colspan="4" id="Facility_Get_SolarirridianceGHIMax">
                     0
                  </td>
                  <td colspan="4" id="Facility_Get_SolarirridianceGHIMin" hidden>
                     0
                  </td>
               </tr>
               <tr>
                  <th colspan="4">Ambient Temperature</th>
                  <td colspan="4" id="Facility_Get_AmbientTemperature" class="realtime">
                     0
                  </td>
                  <td colspan="4" id="Facility_Get_AmbientTemperatureMax">
                     0
                  </td>
                  <td colspan="4" id="Facility_Get_AmbientTemperatureMin">
                     0
                  </td>
               </tr>
               <tr>
                  <th colspan="4">Wind Speed</th>
                  <td colspan="4" id="Facility_Get_WindSpeed" class="realtime">
                     0
                  </td>
                  <td colspan="4" id="Facility_Get_WindSpeedMax">
                     0
                  </td>
                  <td colspan="4" id="Facility_Get_WindSpeedMin">
                     0
                  </td>
               </tr>
               <tr>
                  <th colspan="4">Back of Panel Temperature - 1</th>
                  <td colspan="4" id="Facility_Get_BackOfPanelTemperature1" class="realtime">
                     0
                  </td>
                  <td colspan="4" id="Facility_Get_BackOfPanelTemperature1Max">
                     0
                  </td>
                  <td colspan="4" id="Facility_Get_BackOfPanelTemperature1Min">
                     0
                  </td>
               </tr>
               <tr>
                  <th colspan="4">Back of Panel Temperature - 2</th>
                  <td colspan="4" id="Facility_Get_BackOfPanelTemperature2" class="realtime">
                     0
                  </td>
                  <td colspan="4" id="Facility_Get_BackOfPanelTemperature2Max">
                     0
                  </td>
                  <td colspan="4" id="Facility_Get_BackOfPanelTemperature2Min">
                     0
                  </td>
               </tr>
               <tr>
                  <th colspan="4">AC Output</th>
                  <td colspan="4" id="Pcc_Get_AcOutputEnergy" class="realtime">
                     0
                  </td>
                  <td colspan="4" id="Pcc_Get_AcOutputEnergyMax">
                     0
                  </td>
                  <td colspan="4" id="Pcc_Get_AcOutputEnergyMin" hidden>
                     0
                  </td>
               </tr>
            </table>
         </div>
      </div>
   </body>
</html>