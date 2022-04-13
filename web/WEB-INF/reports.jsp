<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reports</title>
        <style><%@include file="/WEB-INF/css/repStyle.css"%></style>
        <style><%@include file="/WEB-INF/css/reports.css"%></style>
        <style><%@include file="/WEB-INF/css/newHead.css"%></style>
        <script src="javascript/reports.js"></script>
        <script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
        <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
        <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>


    </head>
    <body>
        <nav  class="navbar navbar-expand-lg navbar-light" style="background-color: #f3f3f3;"> 
            <div class="container-fluid">
                <h1 class="left">REPORTS</h1>

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button><div class="float-right box">
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul  id="navigation"class="navbar-nav me-auto mb-2 mb-lg-0">

                            <li class="nav-item" id="currentPage" f>
                                <a class="nav-link"  id="current" aria-current="page">Logs</a>
                            </li>

                            <li class="nav-item" id="menuButton1" f>
                                <a class="nav-link active"  id="buttonMenu1" aria-current="page" href="home">Home</a>
                            </li>



                            <li class="nav-item dropdown" id="menuButton1" >
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    Menu
                                </a>
                                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                    <li id="menuButton2"><a class="dropdown-item" id="buttonMenu1" href="writelog">Operator Log</a></li>
                                    <li id="menuButton2"><a class="dropdown-item" id="buttonMenu1" href="readlog">Read Logs</a></li>
                                    <li id="menuButton2"><a class="dropdown-item" id="buttonMenu1" href="reports">Reports</a></li>
                                    <li id="menuButton2"><a class="dropdown-item" id="buttonMenu1" href="inverterhome">Inverters</a></li>
                                    <li id="menuButton2"><a class="dropdown-item" id="buttonMenu1" href="pccdetail">PCC</a></li>
                                    <li id="menuButton2"><a class="dropdown-item" id="buttonMenu1" href="weather">Weather</a></li>
                                    <li id="menuButton2"><a class="dropdown-item" id="buttonMenu1" href="useraccounts">Account</a></li>
                                    <li id="menuButton2"><a class="dropdown-item"id="buttonMenu1" href="login?action=logout">Logout</a></li>

                                </ul>
                            </li>
                    </div>
                </div>
                </ul>
            </div>
        </div>
    </nav>
    <div class="wrapall" id="electricDiagram">
        <div id="form">
            <form method="POST" action="reports">
                <label class="col-lg-11 col-form-label" style="font-size:25px;">Please select the dates and choose to Display or Export Reports</label>

                <div class="form-floating mb-5">

                    <label class="col-lg-11 col-form-label">From: </label>
                </div>
                <br>
                <div class="col-lg-3">
                    <input  class="form-control form-control-lg" type="date" id="fromDT" name="fromDT" required>
                </div>
                <br>
                <div class="form-floating mb-5">
                    <label class="col-lg-11 col-form-label">To: </label>
                </div>
                <br>
                <div class="col-lg-3">
                    <input  class="form-control form-control-lg" type="date" id="toDT" name="toDT" required>
                </div>
                <br />
                <div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" id="graphReport" value="graphReport" onclick="toggleDisplayCSV()" name="reportType" required>

                        <div class="form-floating mb-5">
                            <label class="col-lg-11 col-form-label">Display Report Type:</label>
                        </div>

                    </div
                    <br>
                    <br>


                    <div class="form-floating mb-5container w-25">
                        <select class="form-select " name="reportChoice" id="reportChoice" default='Anual Energy at PCC'>
                            <c:if test="${reportChoice == 'Anual Energy at PCC'}">
                                <option name="anual1" id="anual1" selected>Anual Energy at PCC</option>
                                <option name="ytoytPCC" id="ytoyatPCC">PCC year to year comparison</option>
                                <option name="yeartodatePCC" id="yeartodatePCC">Year to date</option>
                                <option name="monthComparisonOverYears" id="monthComparisonOverYears">Month comparison in the last 5 years</option>
                            </c:if>
                            <c:if test="${reportChoice == 'PCC year to year comparison'}">
                                <option name="anual1" id="anual1" >Anual Energy at PCC</option>
                                <option name="ytoytPCC" id="ytoyatPCC" selected>PCC year to year comparison</option>
                                <option name="yeartodatePCC" id="yeartodatePCC">Year to date</option>
                                <option name="monthComparisonOverYears" id="monthComparisonOverYears">Month comparison in the last 5 years</option>
                            </c:if>
                            <c:if test="${reportChoice == 'Year to date'}">
                                <option name="anual1" id="anual1" >Anual Energy at PCC</option>
                                <option name="ytoytPCC" id="ytoyatPCC" >PCC year to year comparison</option>
                                <option name="yeartodatePCC" id="yeartodatePCC" selected>Year to date</option>
                                <option name="monthComparisonOverYears" id="monthComparisonOverYears">Month comparison in the last 5 years</option>
                            </c:if>
                            <c:if test="${reportChoice == 'Month comparison in the last 5 years'}">
                                <option name="anual1" id="anual1" >Anual Energy at PCC</option>
                                <option name="ytoytPCC" id="ytoyatPCC" >PCC year to year comparison</option>
                                <option name="yeartodatePCC" id="yeartodatePCC">Year to date</option>
                                <option name="monthComparisonOverYears" id="monthComparisonOverYears" selected>Month comparison in the last 5 years</option>
                            </c:if>

                        </select>
                    </div>
                </div>

                <div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" id="csvReport" value="csvReport" onclick="toggleDisplayCSV()" name="reportType" required>

                        <div class="form-floating mb-5">
                            <label class="col-lg-11 col-form-label">Export raw data as csv file. Choose variables:</label>
                        </div>
                    </div>
                    <br>
                    <div class="csvOptions">
                        <div class="form-check" id="pcc">
                            <input class="form-check-input" type="button" name="pcc" onclick="toggleDisplay('pccBlock')">

                            <div class="form-floating mb-5">
                                <label class="col-lg-11 col-form-label">PCC</label>
                            </div>
                        </div>
                        <br>

                        <div class="form-check" id="pccBlock">
                            <div class="form-check">
                                <h2>PCC Parameters</h2>
                                <input class="form-check-input"type="checkbox" id="pccOutputRealPower" name="csvValue" value="Pcc_Get_AcOutputRealPower">
                                <div class="form-floating mb-5">
                                    <label class="col-lg-11 col-form-label ">AC Output Real Power</label><br> </div>
                                <input class="form-check-input"type="checkbox" id="pccApparentPower" name="csvValue" value="Pcc_Get_AcOutputApparentPower">
                                <div class="form-floating mb-5">
                                    <label class="col-lg-11 col-form-label ">Apparent Power</label><br> </div>
                                <input class="form-check-input"type="checkbox" id="pccReactivePower" name="csvValue" value="Pcc_Get_AcOutputReactivePower">
                                <div class="form-floating mb-5">
                                    <label class="col-lg-11 col-form-label ">Reactive Power</label><br> </div>
                                <input class="form-check-input"type="checkbox" id="pccPowerFactor" name="csvValue" value="Pcc_Get_AcOutputPowerFactor">
                                <div class="form-floating mb-5">
                                    <label class="col-lg-11 col-form-label ">Power Factor</label><br> </div>
                                <input class="form-check-input"type="checkbox" id="pccPhaseACurrent" name="csvValue" value="Pcc_Get_AcOutputPhaseACurrent">
                                <div class="form-floating mb-5">
                                    <label class="col-lg-11 col-form-label ">Phase A Current</label><br> </div>
                                <input class="form-check-input"type="checkbox" id="pccPhaseBCurrent" name="csvValue" value="Pcc_Get_AcOutputPhaseBCurrent">
                                <div class="form-floating mb-5">
                                    <label class="col-lg-11 col-form-label ">Phase B Current</label><br> </div>
                                <input class="form-check-input"type="checkbox" id="pccPhaseCCurrent" name="csvValue" value="Pcc_Get_AcOutputPhaseCCurrent">
                                <div class="form-floating mb-5">
                                    <label class="col-lg-11 col-form-label ">Phase C Current</label><br> </div>
                                <input class="form-check-input"type="checkbox" id="pccPhaseABVoltage" name="csvValue" value="Pcc_Get_AcOutputPhaseAbVoltage">
                                <div class="form-floating mb-5">
                                    <label class="col-lg-11 col-form-label ">Phase AB Voltage</label><br> </div>
                                <input class="form-check-input"type="checkbox" id="pccPhaseBCVoltage" name="csvValue" value="Pcc_Get_AcOutputPhaseBcVoltage">
                                <div class="form-floating mb-5">
                                    <label class="col-lg-11 col-form-label ">Phase BC Voltage</label><br> </div>
                                <input class="form-check-input"type="checkbox" id="pccPhaseCAVoltage" name="csvValue" value="Pcc_Get_AcOutputPhaseCaVoltage">
                                <div class="form-floating mb-5">
                                    <label class="col-lg-11 col-form-label ">Phase CA Voltage</label><br><br></div>
                            </div>
                            <button class="button" type="button" onclick="toggleDisplay('pccBlock')">Done selecting PCC</button>
                        </div>
                    </div>
                    <div class="csvOptions">
                        <div class="form-check" id="feeders">

                            <input class="form-check-input" type="button" name="feeders" onclick="toggleDisplay('fdrs')">
                            <div class="form-floating mb-5">
                                <label class="col-lg-11 col-form-label">Feeders</label>                      
                            </div>
                        </div>
                        <br>
                        <div  id="fdrs">
                            <c:forEach var = "i" begin = "1" end = "2">
                                <div class="form-check">
                                    <div class="form-check" >
                                        <input class="form-check-input" type="button" id="feeder1" name="feeder1" onclick="toggleDisplay('fdr<c:out value = "${i}"/>')">
                                        <div class="form-floating mb-5">
                                            <label class="col-lg-11 col-form-label">Feeder <c:out value = "${i}"/></label>
                                        </div>

                                    </div>
                                    <br>
                                    <div class="form-check" id="fdr<c:out value = "${i}"/>">
                                        <div class="form-check">
                                            <h2>Feeder <c:out value = "${i}"/> Parameters</h2>

                                            <input class="form-check-input"type="checkbox" id="f1ACOutputRealPower" name="csvValue" value="Feeder_Get_AcOutputRealPower<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />">
                                            <div class="form-floating mb-5">
                                                <label class="col-lg-11 col-form-label">Feeder <c:out value = "${i}"/> Output Real Power</label><br>
                                            </div>

                                            <input class="form-check-input"type="checkbox" id="f1ApparentPower" name="csvValue" value="Feeder_Get_AcOutputApparentPower<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />">
                                            <div class="form-floating mb-5">    
                                                <label class="col-lg-11 col-form-label">Feeder <c:out value = "${i}"/> Apparent Power</label><br>
                                            </div>
                                            <input class="form-check-input"type="checkbox" id="f1ReactivePower" name="csvValue" value="Feeder_Get_AcOutputReactivePower<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />">
                                            <div class="form-floating mb-5">    
                                                <label class="col-lg-11 col-form-label">Feeder <c:out value = "${i}"/> Reactive Power</label><br></div>
                                            <input class="form-check-input"type="checkbox" id="f1PowerFactor" name="csvValue" value="Feeder_Get_AcOutputPowerFactor<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />">
                                            <div class="form-floating mb-5">    
                                                <label class="col-lg-11 col-form-label">Feeder <c:out value = "${i}"/> Power Factor</label><br></div>
                                            <input class="form-check-input"type="checkbox" id="f1PhaseACurrent" name="csvValue" value="Feeder_Get_AcOutputPhaseACurrent<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />">
                                            <div class="form-floating mb-5">    
                                                <label class="col-lg-11 col-form-label">Feeder <c:out value = "${i}"/> Phase A Current</label><br></div>
                                            <input class="form-check-input"type="checkbox" id="f1PhaseBCurrent" name="csvValue" value="Feeder_Get_AcOutputPhaseBCurrent<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />">
                                            <div class="form-floating mb-5">    
                                                <label class="col-lg-11 col-form-label">Feeder <c:out value = "${i}"/> Phase B Current</label><br></div>
                                            <input class="form-check-input"type="checkbox" id="f1PhaseCCurrent" name="csvValue" value="Feeder_Get_AcOutputPhaseCCurrent<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />">
                                            <div class="form-floating mb-5">    
                                                <label class="col-lg-11 col-form-label">Feeder <c:out value = "${i}"/> Phase C Current</label><br></div>
                                            <input class="form-check-input"type="checkbox" id="f1PhaseABVoltage" name="csvValue" value="Feeder_Get_AcOutputPhaseAbVoltage<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />">
                                            <div class="form-floating mb-5">    
                                                <label class="col-lg-11 col-form-label">Feeder <c:out value = "${i}"/> Phase AB Voltage</label><br></div>
                                            <input class="form-check-input"type="checkbox" id="f1PhaseBCVoltage" name="csvValue" value="Feeder_Get_AcOutputPhaseBcVoltage<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />">
                                            <div class="form-floating mb-5">    
                                                <label class="col-lg-11 col-form-label">Feeder <c:out value = "${i}"/> Phase BC Voltage</label><br></div>
                                            <input class="form-check-input"type="checkbox" id="f1PhaseCAVoltage" name="csvValue" value="Feeder_Get_AcOutputPhaseCaVoltage<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />">
                                            <div class="form-floating mb-5">    
                                                <label class="col-lg-11 col-form-label">Feeder <c:out value = "${i}"/> Phase CA Voltage</label><br><br></div>
                                            <button class="button" type="button" onclick="toggleDisplay('fdr<c:out value = "${i}"/>')">Done selecting Feeder <c:out value = "${i}"/> parameters</button>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>        
                            <button class="button" type="button" onclick="toggleDisplay('fdrs')">Done selecting Feeders</button>
                        </div>
                    </div>
                    <div class="csvOptions">
                        <div class="form-check" id="inverters">
                            <input class="form-check-input" type="button" name="inverters" onclick="toggleDisplay('invtrs')">
                            <div class="form-floating mb-5">
                                <label class="col-lg-11 col-form-label">Inverters</label>
                            </div>
                        </div>
                        <br>
                        <div class="form-check" id="invtrs">
                            <div class="form-check">
                                <h2>Inverters List</h2>

                                <c:forEach var = "i" begin = "1" end = "39">
                                    <div class="form-check">
                                        <input class="form-check-input" type="button" id="inverter1" name="inverter <c:out value = "${i}"/>" onclick="toggleDisplay('inv<c:out value = "${i}"/>')">
                                        <div class="form-floating mb-5">
                                            <label class="col-lg-11 col-form-label">Inverter <c:out value = "${i}"/></label><br>
                                        </div>
                                        <div class="form-check" id="inv<c:out value = "${i}"/>">
                                            <h2>Inverter <c:out value = "${i}"/> Parameters</h2>   
                                            <input class="form-check-input"type="checkbox" id="i1ACOutputRealPower" name="csvValue" value="Inverter_Get_AcOutputRealPower<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />">
                                            <div class="form-floating mb-5">
                                                <label class="col-lg-11 col-form-label">Inverter <c:out value = "${i}"/> AC Output Real Power</label><br>
                                            </div>   
                                            <input class="form-check-input"type="checkbox" id="i1ApparentPower" name="csvValue" value="Inverter_Get_AcOutputApparentPower<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />">
                                            <div class="form-floating mb-5">
                                                <label class="col-lg-11 col-form-label">Inverter <c:out value = "${i}"/> Apparent Power</label><br>
                                            </div>   
                                            <input class="form-check-input"type="checkbox" id="i1ReactivePower" name="csvValue" value="Inverter_Get_AcOutputReactivePower<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />">
                                            <div class="form-floating mb-5">
                                                <label class="col-lg-11 col-form-label">Inverter <c:out value = "${i}"/> Reactive Power</label><br>
                                            </div>   
                                            <input class="form-check-input"type="checkbox" id="i1PowerFactor" name="csvValue" value="Inverter_Get_AcOutputPowerFactor<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />">
                                            <div class="form-floating mb-5">
                                                <label class="col-lg-11 col-form-label">Inverter <c:out value = "${i}"/> Power Factor</label><br>
                                            </div>   
                                            <input class="form-check-input"type="checkbox" id="i1PhaseACurrent" name="csvValue" value="Inverter_Get_AcOutputPhaseACurrent<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />">
                                            <div class="form-floating mb-5">
                                                <label class="col-lg-11 col-form-label">Inverter <c:out value = "${i}"/> Phase A Current</label><br>
                                            </div>   
                                            <input class="form-check-input"type="checkbox" id="i1PhaseBCurrent" name="csvValue" value="Inverter_Get_AcOutputPhaseBCurrent<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />">
                                            <div class="form-floating mb-5">
                                                <label class="col-lg-11 col-form-label">Inverter <c:out value = "${i}"/> Phase B Current</label><br>
                                            </div>   
                                            <input class="form-check-input"type="checkbox" id="i1PhaseCCurrent" name="csvValue" value="Inverter_Get_AcOutputPhaseCCurrent<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />">
                                            <div class="form-floating mb-5">
                                                <label class="col-lg-11 col-form-label">Inverter <c:out value = "${i}"/> Phase C Current</label><br>
                                            </div>   
                                            <input class="form-check-input"type="checkbox" id="i1PhaseABVoltage" name="csvValue" value="Inverter_Get_AcOutputPhaseAbVoltage<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />">
                                            <div class="form-floating mb-5">
                                                <label class="col-lg-11 col-form-label">Inverter <c:out value = "${i}"/> Phase AB Voltage</label><br>
                                            </div>   
                                            <input class="form-check-input"type="checkbox" id="i1PhaseBCVoltage" name="csvValue" value="Inverter_Get_AcOutputPhaseBcVoltage<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />">
                                            <div class="form-floating mb-5">
                                                <label class="col-lg-11 col-form-label">Inverter <c:out value = "${i}"/> Phase BC Voltage</label><br>                                
                                            </div>   
                                            <input class="form-check-input"type="checkbox" id="i1PhaseCAVoltage" name="csvValue" value="Inverter_Get_AcOutputPhaseCaVoltage<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />">
                                            <div class="form-floating mb-5">
                                                <label class="col-lg-11 col-form-label">Inverter <c:out value = "${i}"/> Phase CA Voltage</label><br>
                                            </div>   
                                            <input class="form-check-input"type="checkbox" id="i1DCRealPower" name="csvValue" value="Inverter_Get_DcRealPower<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />"> 
                                            <div class="form-floating mb-5">
                                                <label class="col-lg-11 col-form-label">Inverter <c:out value = "${i}"/> DC Real Power</label><br>
                                            </div>   
                                            <input class="form-check-input"type="checkbox" id="i1DCVolts" name="csvValue" value="Inverter_Get_DcVolt<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />">
                                            <div class="form-floating mb-5">
                                                <label class="col-lg-11 col-form-label">Inverter <c:out value = "${i}"/> DC Volts</label><br>
                                            </div>   
                                            <input class="form-check-input"type="checkbox" id="i1DCCurrent" name="csvValue" value="Inverter_Get_DcCurrent<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />">
                                            <div class="form-floating mb-5">
                                                <label class="col-lg-11 col-form-label">Inverter <c:out value = "${i}"/> DC Current</label><br>
                                            </div>   
                                            <input class="form-check-input"type="checkbox" id="i1Efficiency" name="csvValue" value="Inverter_Get_Efficiency<fmt:formatNumber minIntegerDigits = '2' value = '${i}' />">
                                            <div class="form-floating mb-5">
                                                <label class="col-lg-11 col-form-label">Inverter <c:out value = "${i}"/> Efficiency</label><br><br>
                                            </div>   
                                            <button class="button" type="button" onclick="toggleDisplay('inv<c:out value = "${i}"/>')">Done selecting Inverter <c:out value = "${i}"/> parameters</button>
                                        </div>
                                    </div>
                                </c:forEach>
                                <button class="button" type="button" onclick="toggleDisplay('invtrs')">Done selecting Inverters</button>
                            </div>
                        </div>
                    </div>

                    <div class="csvOptions">
                        <div class="form-check" id="weather">
                            <input class="form-check-input" type="button"  name="weather" onclick="toggleDisplay('wthr')">
                            <div class="form-floating mb-5">
                                <label class="col-lg-11 col-form-label">Weather Data</label>
                            </div>
                        </div>
                        <br>
                        <div class="form-check"id="wthr">
                            <h2>Weather Parameters</h2>
                            <div class="form-check">
                                <input class="form-check-input"type="checkbox" id="irradiancePOA" name="csvValue" value="Facility_Get_SolarirridiancePOA">
                                <div class="form-floating mb-5">
                                    <label class="col-lg-11 col-form-label">Solar Irradiance POA</label><br>
                                </div>
                                <input class="form-check-input"type="checkbox" id="irradianceGHI" name="csvValue" value="Facility_Get_SolarirridianceGHI">
                                <div class="form-floating mb-5">
                                    <label class="col-lg-11 col-form-label">Solar Irradiance GHI</label><br>
                                </div>
                                <input class="form-check-input"type="checkbox" id="panelTemp1" name="csvValue" value="Facility_Get_BackOfPanelTemperature1">
                                <div class="form-floating mb-5">
                                    <label class="col-lg-11 col-form-label">Back of panel Temperature 1</label><br>
                                </div>
                                <input class="form-check-input"type="checkbox" id="ambientTemp" name="csvValue" value="Facility_Get_AmbientTemperature">
                                <div class="form-floating mb-5">
                                    <label class="col-lg-11 col-form-label">Ambient Temperature</label><br>
                                </div>
                                <input class="form-check-input"type="checkbox" id="panelTemp2" name="csvValue" value="Facility_Get_BackOfPanelTemperature2">
                                <div class="form-floating mb-5">
                                    <label class="col-lg-11 col-form-label">Back of panel Temperature 2</label><br>
                                </div>
                                <input class="form-check-input"type="checkbox" id="windSpeed" name="csvValue" value="Facility_Get_WindSpeed">
                                <div class="form-floating mb-5">
                                    <label class="col-lg-11 col-form-label">Wind Speed</label><br><br>  
                                </div>
                                <button class="button" type="button" onclick="toggleDisplay('wthr')">Done selecting Weather parameters</button>
                            </div>
                        </div>                        
                    </div>
                </div>            
                <br>
                <input class="button" type="submit" value="Create Report">
            </form>
        </div>  
    </div>

    <!-- Need somewhere to hold the date values -->
    <input type="hidden" name="startDate" id="startDate" value="${startDate}">
    <input type="hidden" name="endDate" id="endDate" value="${endDate}">


    <c:if test="${scriptFlag == true}">
        <script src="javascript/ReportPlotly.js"></script>
    </c:if>
</body>
</html>
