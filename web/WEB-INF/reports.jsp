<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reports</title>
        <style><%@include file="/WEB-INF/css/repStyle.css"%></style>
              <style><%@include file="/WEB-INF/css/reports.css"%></style>
          <style><%@include file="/WEB-INF/css/header.css"%></style>
        <script src="javascript/reports.js"></script>
        <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
        <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
   </head>
   <body>
         <div class="headerS">
        <ul  id="navigation" class="nav">
  
          <li class="menuButton1"><a class="buttonMenu1" href="login">Logout</a></li>
          <li class="menuButton1"><a class="buttonMenu1" href="account">Account</a></li>
          <li class="menuButton1"><a class="buttonMenu1" href="home">Home</a></li>
                  <li class="menuButton1"><a class="buttonMenu1" href="reports">Reports</a></li>
        <li class="menuButton1"><a class="buttonMenu1" href="writelog">Operator Log</a></li>
          <li class="currentPage"><a class="buttonMenu2" id="current" class="active":active >Reports</a></li>
      
          <h1 class="left">REPORTS</h1>
        </ul>
      </div>
        <div class="wrapall" id="electricDiagram">
    <div>
        <form method="POST" action="reports">
            <h3>Please select the dates</h3>
            <label>From: </label>
            <input type="datetime-local" id="fromDT">
            <label>To: </label>
            <input type="datetime-local" id="toDT">
            <br>
            <div>
                <input type="radio" id="graphReport" value="graphReport" name="reportType" required>
                <label>Report type: </label>
                <select name="reportChoice" id="reportChoice">
                    <option name="anual1" id="anual1">Anual Energy at PCC</option>
                    <option name="ytoytPCC" id="ytoyatPCC">PCC year to year comparison</option>
                    <option name="yeartodatePCC" id="yeartodatePCC">Year to date</option>
                    <option name="monthComparisonOverYears" id="monthComparisonOverYears">Month comparison in the last 5 years</option>
                </select>
            </div>
           
            <div>
                <input type="radio" id="csvReport" value="csvReport" name="reportType" required>
                <label>Export raw data as csv file. Choose variables:</label>
                <br>
                <div class="csvOptions">
                    <input type="checkbox" id="pcc" name="pcc" onclick="displayPCC()">
                    <label>PCC</label>
                    <div id="pccBlock">
                        <h2>PCC Parameters</h2>
                        <input type="checkbox" id="pccOutputLifetime" name="csvValue" value="Pcc_Get_">
                        <label>AC Output Lifetime</label><br>
                        <input type="checkbox" id="pccOutputYTD" name="csvValue" value="Pcc_Get_">
                        <label>AC Output YTD</label><br>
                        <input type="checkbox" id="pccOutputMTD" name="csvValue" value="Pcc_Get_">
                        <label>AC Output MTD</label><br>
                        <input type="checkbox" id="pccOutputDay" name="csvValue" value="Pcc_Get_">
                        <label>AC Output Daily</label><br>
                        <input type="checkbox" id="pccOutputRealPower" name="csvValue" value="Pcc_Get_AcOutputRealPower">
                        <label>AC Output Real Power</label><br>
                        <input type="checkbox" id="pccApparentPower" name="csvValue" value="Pcc_Get_AcOutputApparentPower">
                        <label>Apparent Power</label><br>
                        <input type="checkbox" id="pccReactivePower" name="csvValue" value="Pcc_Get_AcOutputReactivePower">
                        <label>Reactive Power</label><br>
                        <input type="checkbox" id="pccPowerFactor" name="csvValue" value="Pcc_Get_AcOutputPowerFactor">
                        <label>Power Factor</label><br>
                        <input type="checkbox" id="pccPhaseACurrent" name="csvValue" value="Pcc_Get_AcOutputPhaseACurrent">
                        <label>Phase A Current</label><br>
                        <input type="checkbox" id="pccPhaseBCurrent" name="csvValue" value="Pcc_Get_AcOutputPhaseBCurrent">
                        <label>Phase B Current</label><br>
                        <input type="checkbox" id="pccPhaseCCurrent" name="csvValue" value="Pcc_Get_AcOutputPhaseCCurrent">
                        <label>Phase C Current</label><br>
                        <input type="checkbox" id="pccPhaseABVoltage" name="csvValue" value="Pcc_Get_AcOutputPhaseAbVoltage">
                        <label>Phase AB Voltage</label><br>
                        <input type="checkbox" id="pccPhaseBCVoltage" name="csvValue" value="Pcc_Get_AcOutputPhaseBcVoltage">
                        <label>Phase BC Voltage</label><br>
                        <input type="checkbox" id="pccPhaseCAVoltage" name="csvValue" value="Pcc_Get_AcOutputPhaseCaVoltage">
                        <label>Phase CA Voltage</label><br><br>
                        <button type="button" onclick="closePCC()">Done selecting PCC Parameters</button>
                    </div>
                </div>
                <div class="csvOptions">
                    <input type="checkbox" id="feeders" name="feeders" onclick="displayFeeders()">
                    <label>Feeders</label>
                    <div id="fdrs">
                        <c:forEach var = "i" begin = "1" end = "2">
                        <div>
                            <div>
                                <input type="checkbox" id="feeder1" name="feeder1" onclick="displayFeeder1()">
                                <label>Feeder <c:out value = "${i}"/></label>
                            </div>
                            <div id="fdr1">
                                <h2>Feeder <c:out value = "${i}"/> Parameters</h2>
                                <input type="checkbox" id="f1ACOutputRealPower" name="csvValue" value="Feeder_Get_AcOutputRealPower<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />">
                                <label>Feeder <c:out value = "${i}"/> Output Real Power</label><br>
                                <input type="checkbox" id="f1ApparentPower" name="csvValue" value="Feeder_Get_AcOutputApparentPower<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />"
                                <label>Feeder <c:out value = "${i}"/> Apparent Power</label><br>
                                <input type="checkbox" id="f1ReactivePower" name="csvValue" value="Feeder_Get_AcOutputReactivePower<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />"
                                <label>Feeder <c:out value = "${i}"/> Reactive Power</label><br>
                                <input type="checkbox" id="f1PowerFactor" name="csvValue" value="Feeder_Get_AcOutputPowerFactor<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />"
                                <label>Feeder <c:out value = "${i}"/> Power Factor</label><br>
                                <input type="checkbox" id="f1PhaseACurrent" name="csvValue" value="Feeder_Get_AcOutputPhaseACurrent<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />"
                                <label>Feeder <c:out value = "${i}"/> Phase A Current</label><br>
                                <input type="checkbox" id="f1PhaseBCurrent" name="csvValue" value="Feeder_Get_AcOutputPhaseBCurrent<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />"
                                <label>Feeder <c:out value = "${i}"/> Phase B Current</label><br>
                                <input type="checkbox" id="f1PhaseCCurrent" name="csvValue" value="Feeder_Get_AcOutputPhaseCCurrent<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />"
                                <label>Feeder <c:out value = "${i}"/> Phase C Current</label><br>
                                <input type="checkbox" id="f1PhaseABVoltage" name="csvValue" value="Feeder_Get_AcOutputPhaseAbVoltage<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />"
                                <label>Feeder <c:out value = "${i}"/> Phase AB Voltage</label><br>
                                <input type="checkbox" id="f1PhaseBCVoltage" name="csvValue" value="Feeder_Get_AcOutputPhaseBcVoltage<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />"
                                <label>Feeder <c:out value = "${i}"/> Phase BC Voltage</label><br>
                                <input type="checkbox" id="f1PhaseCAVoltage" name="csvValue" value="Feeder_Get_AcOutputPhaseCaVoltage<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />"
                                <label>Feeder <c:out value = "${i}"/> Phase CA Voltage</label><br><br>
                                <button type="button" onclick="closeFeeder1()">Done selecting feeder 1 parameters</button>
                            </div>
                        </div>
                        </c:forEach>
                        <button type="button" onclick="closeFeeders()">Done selecting feeders</button>                       
                    </div>
                </div>
                <div class="csvOptions">
                    <input type="checkbox" id="inverters" name="inverters" onclick="displayInverters()">
                    <label>Inverters</label>
                    <div id="invtrs">
                        <h2>Inverters List</h2>
                        <div>
                            <c:forEach var = "i" begin = "1" end = "39">
                            <input type="checkbox" id="inverter1" name="inverter <c:out value = "${i}"/>" onclick="displayInverter<c:out value = "${i}"/>()">
                            <label>Inverter <c:out value = "${i}"/></label><br>
                                <div id="inv<c:out value = "${i}"/>">
                                    <h2>Inverter <c:out value = "${i}"/> Parameters</h2>
                                    <input type="checkbox" id="i1ACOutputLifetime" name="csvValue" value="Inverter_Get_<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />">
                                    <label>Inverter <c:out value = "${i}"/> AC Output Lifetime</label><br>
                                    <input type="checkbox" id="i1ACOutputYTD" name="csvValue" value="Inverter_Get_<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />">
                                    <label>Inverter <c:out value = "${i}"/> AC Output YTD</label><br>
                                    <input type="checkbox" id="i1ACOutputMTD" name="csvValue" value="Inverter_Get_<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />">
                                    <label>Inverter <c:out value = "${i}"/> AC MTD</label><br>
                                    <input type="checkbox" id="i1ACOutputDay" name="csvValue" value="Inverter_Get_<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />">
                                    <label>Inverter <c:out value = "${i}"/> AC Output Daily</label><br>
                                    <input type="checkbox" id="i1ACOutputRealPower" name="csvValue" value="Inverter_Get_AcOutputRealPower<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />">
                                    <label>Inverter <c:out value = "${i}"/> AC Output Real Power</label><br>
                                    <input type="checkbox" id="i1ApparentPower" name="csvValue" value="Inverter_Get_AcOutputApparentPower<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />">
                                    <label>Inverter <c:out value = "${i}"/> Apparent Power</label><br>
                                    <input type="checkbox" id="i1ReactivePower" name="csvValue" value="Inverter_Get_AcOutputReactivePower<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />">
                                    <label>Inverter <c:out value = "${i}"/> Reactive Power</label><br>
                                    <input type="checkbox" id="i1PowerFactor" name="csvValue" value="Inverter_Get_AcOutputPowerFactor<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />">
                                    <label>Inverter <c:out value = "${i}"/> Power Factor</label><br>
                                    <input type="checkbox" id="i1PhaseACurrent" name="csvValue" value="Inverter_Get_AcOutputPhaseACurrent<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />">
                                    <label>Inverter <c:out value = "${i}"/> Phase A Current</label><br>
                                    <input type="checkbox" id="i1PhaseBCurrent" name="csvValue" value="Inverter_Get_AcOutputPhaseBCurrent<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />">
                                    <label>Inverter <c:out value = "${i}"/> Phase B Current</label><br>
                                    <input type="checkbox" id="i1PhaseCCurrent" name="csvValue" value="Inverter_Get_AcOutputPhaseCCurrent<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />">
                                    <label>Inverter <c:out value = "${i}"/> Phase C Current</label><br>
                                    <input type="checkbox" id="i1PhaseABVoltage" name="csvValue" value="Inverter_Get_AcOutputPhaseAbVoltage<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />">
                                    <label>Inverter <c:out value = "${i}"/> Phase AB Voltage</label><br>
                                    <input type="checkbox" id="i1PhaseBCVoltage" name="csvValue" value="Inverter_Get_AcOutputPhaseBcVoltage<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />">
                                    <label>Inverter <c:out value = "${i}"/> Phase BC Voltage</label><br>                                
                                    <input type="checkbox" id="i1PhaseCAVoltage" name="csvValue" value="Inverter_Get_AcOutputPhaseCaVoltage<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />">
                                    <label>Inverter <c:out value = "${i}"/> Phase CA Voltage</label><br>
                                    <input type="checkbox" id="i1DCRealPower" name="csvValue" value="Inverter_Get_DcRealPower<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />"> 
                                    <label>Inverter <c:out value = "${i}"/> DC Real Power</label><br>
                                    <input type="checkbox" id="i1DCVolts" name="csvValue" value="Inverter_Get_DcVolt<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />">
                                    <label>Inverter <c:out value = "${i}"/> DC Volts</label><br>
                                    <input type="checkbox" id="i1DCCurrent" name="csvValue" value="Inverter_Get_DcCurrent<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />">
                                    <label>Inverter <c:out value = "${i}"/> DC Current</label><br>
                                    <input type="checkbox" id="i1Efficiency" name="csvValue" value="Inverter_Get_Efficiency<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />">
                                    <label>Inverter <c:out value = "${i}"/> Efficiency</label><br><br>
                                    <button type="button" onclick="closeInverter<c:out value = "${i}"/>()">Done selecting Inverter <c:out value = "${i}"/> parameters</button>
                                </div>
                            </c:forEach>
                        </div>
                        <button type="button" onclick="closeInverters()">Done selecting inverters</button>
                    </div>
                </div>
                <div class="csvOptions">
                    <input type="checkbox" id="weather" name="weather" onclick="displayWeather()">
                    <label>Weather Data</label>
                    <div id="wthr">
                        <h2>Weather Parameters</h2>
                        <input type="checkbox" id="irradiancePOA" name="csvValue" value="Facility_Get_SolarirridiancePOA">
                        <label>Solar Irradiance POA</label><br>
                        <input type="checkbox" id="irradianceGHI" name="csvValue" value="Facility_Get_SolarirridianceGHI">
                        <label>Solar Irradiance GHI</label><br>
                        <input type="checkbox" id="panelTemp1" name="csvValue" value="Facility_Get_BackOfPanelTemperature1">
                        <label>Back of panel Temperature 1</label><br>
                        <input type="checkbox" id="ambientTemp" name="csvValue" value="Facility_Get_AmbientTemperature">
                        <label>Ambient Temperature</label><br>
                        <input type="checkbox" id="panelTemp2" name="csvValue" value="Facility_Get_BackOfPanelTemperature2">
                        <label>Back of panel Temperature 2</label><br>
                        <input type="checkbox" id="windSpeed" name="csvValue" value="Facility_Get_WindSpeed">
                        <label>Wind Speed</label><br><br>       
                        <button type="button" onclick="closeWeather()">Done selecting weather parameters</button>                     
                    </div>                        
                </div>
            </div>            
            <br>
            <input type="submit" value="Create Report">
        </form>
    </div>  
            </div>
      
   </body>
</html>
