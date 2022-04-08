<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--        <style><%@include file="/WEB-INF//css/style.css"%></style>-->
        <style><%@include file="/WEB-INF//css/table.css"%></style>
        <style><%@include file="/WEB-INF//css/header.css"%></style>
        <style><%@include file="/WEB-INF//css/inverterhome.css"%></style>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="javascript/TablesAjax.js"></script>
        <title>Inverters 26 - 30</title>
    </head>
    <body>
        <div class="headerS">
            <ul  id="navigation" class="nav">

                <li class="menuButton1"><a class="buttonMenu1" href="login?action=logout">Logout</a></li>
                <li class="menuButton1"><a class="buttonMenu1" href="useraccounts">Account</a></li>
                <li class="menuButton1"><a class="buttonMenu1" href="home">Home</a></li>
                <li class="menuButton1"><a class="buttonMenu1" href="reports">Reports</a></li>
                <li class="menuButton1"><a class="buttonMenu1" href="writelog">Operator Log</a></li>
                <li class="menuButton1"><a class="buttonMenu1" href="inverterhome">Inverter Home</a></li>
                <li class="currentPage"><a class="buttonMenu2" id="current" class="active":active >Inverters 35-39</a></li>

                <h1 class="left">INVERTER 26-30</h1>
            </ul>
        </div>
        <div class="wrapall" id="electricDiagram">
            <div class="center">

                <table>
                    <tr>
                        <td><table>
                                <tr>
                                    <th colspan="10">Inverter | 26</th>
                                </tr>
                                <tr>
                                    <th>DC Input</th>
                                    <td>DC Power</td>
                                    <td id="Inverter_Get_DcRealPower26" class="realtime">XXX.X</td>
                                    <td>kW</td>
                                    <td>DC Voltage</td>
                                    <td id="Inverter_Get_DcVolts26" class="realtime">XXX</td>
                                    <td>V</td>
                                    <td>DC Current</td>
                                    <td id="Inverter_Get_DcCurrent26" class="realtime">XX.X</td>
                                    <td>A</td>
                                </tr>
                                <tr>
                                    <th rowspan="3">AC Output</th>
                                    <td>Vab</td>
                                    <td id="Inverter_Get_AcOutputPhaseABVoltage26" class="realtime">XXX</td>
                                    <td>V</td>
                                    <td>Vbc</td>
                                    <td id="Inverter_Get_AcOutputPhaseBCVoltage26" class="realtime">XXX</td>
                                    <td>V</td>
                                    <td>Vca</td>
                                    <td id="Inverter_Get_AcOutputPhaseCAVoltage26" class="realtime">XXX</td>
                                    <td>V</td>
                                </tr>
                                <tr>
                                    <td>A Phase Current</td>
                                    <td id="Inverter_Get_AcOutputPhaseACurrent26" class="realtime">XX</td>
                                    <td>A</td>
                                    <td>B Phase Current</td>
                                    <td id="Inverter_Get_AcOutputPhaseBCurrent26" class="realtime">XXX</td>
                                    <td>A</td>
                                    <td>C Phase Current</td>
                                    <td id="Inverter_Get_AcOutputPhaseCCurrent26" class="realtime">XX</td>
                                    <td>A</td>
                                </tr>
                                <tr>
                                    <td>Real Power</td>
                                    <td id="Inverter_Get_AcOutputRealPower26" class="realtime">XXX.X</td>
                                    <td>kW</td>
                                    <td>Reactive Power</td>
                                    <td id="Inverter_Get_AcOutputReactivePower26" class="realtime">XXX.X</td>
                                    <td>kVAr</td>
                                    <td>Power Factor</td>
                                    <td id="Inverter_Get_AcOutputPowerFactor26" class="realtime">.XX</td>
                                    <td>%</td>
                                </tr>
                                <tr>
                                    <th>Status</th>
                                    <td>Fault Code</td>
                                    <td>XX</td>
                                    <td></td>
                                    <td>Efficiency</td>
                                    <td id="Inverter_Get_Efficiency26" class="realtime">XX.X</td>
                                    <td>%</td>
                                    <td>Temperature</td>
                                    <td>XX</td>
                                    <td>°C</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <table>
                    <tr>
                        <td><table>
                                <tr>
                                    <th colspan="10">Inverter | 27</th>
                                </tr>
                                <tr>
                                    <th>DC Input</th>
                                    <td>DC Power</td>
                                    <td id="Inverter_Get_DcRealPower27" class="realtime">XXX.X</td>
                                    <td>kW</td>
                                    <td>DC Voltage</td>
                                    <td id="Inverter_Get_DcVolts27" class="realtime">XXX</td>
                                    <td>V</td>
                                    <td>DC Current</td>
                                    <td id="Inverter_Get_DcCurrent27" class="realtime">XX.X</td>
                                    <td>A</td>
                                </tr>
                                <tr>
                                    <th rowspan="3">AC Output</th>
                                    <td>Vab</td>
                                    <td id="Inverter_Get_AcOutputPhaseABVoltage27" class="realtime">XXX</td>
                                    <td>V</td>
                                    <td>Vbc</td>
                                    <td id="Inverter_Get_AcOutputPhaseBCVoltage27" class="realtime">XXX</td>
                                    <td>V</td>
                                    <td>Vca</td>
                                    <td id="Inverter_Get_AcOutputPhaseCAVoltage27" class="realtime">XXX</td>
                                    <td>V</td>
                                </tr>
                                <tr>
                                    <td>A Phase Current</td>
                                    <td id="Inverter_Get_AcOutputPhaseACurrent27" class="realtime">XX</td>
                                    <td>A</td>
                                    <td>B Phase Current</td>
                                    <td id="Inverter_Get_AcOutputPhaseBCurrent27" class="realtime">XXX</td>
                                    <td>A</td>
                                    <td>C Phase Current</td>
                                    <td id="Inverter_Get_AcOutputPhaseCCurrent27" class="realtime">XX</td>
                                    <td>A</td>
                                </tr>
                                <tr>
                                    <td>Real Power</td>
                                    <td id="Inverter_Get_AcOutputRealPower27" class="realtime">XXX.X</td>
                                    <td>kW</td>
                                    <td>Reactive Power</td>
                                    <td id="Inverter_Get_AcOutputReactivePower27" class="realtime">XXX.X</td>
                                    <td>kVAr</td>
                                    <td>Power Factor</td>
                                    <td id="Inverter_Get_AcOutputPowerFactor27" class="realtime">.XX</td>
                                    <td>%</td>
                                </tr>
                                <tr>
                                    <th>Status</th>
                                    <td>Fault Code</td>
                                    <td>XX</td>
                                    <td></td>
                                    <td>Efficiency</td>
                                    <td id="Inverter_Get_Efficiency27" class="realtime">XX.X</td>
                                    <td>%</td>
                                    <td>Temperature</td>
                                    <td>XX</td>
                                    <td>°C</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <table>
                    <tr>
                        <td><table>
                                <tr>
                                    <th colspan="10">Inverter | 28</th>
                                </tr>
                                <tr>
                                    <th>DC Input</th>
                                    <td>DC Power</td>
                                    <td id="Inverter_Get_DcRealPower28" class="realtime">XXX.X</td>
                                    <td>kW</td>
                                    <td>DC Voltage</td>
                                    <td id="Inverter_Get_DcVolts28" class="realtime">XXX</td>
                                    <td>V</td>
                                    <td>DC Current</td>
                                    <td id="Inverter_Get_DcCurrent28" class="realtime">XX.X</td>
                                    <td>A</td>
                                </tr>
                                <tr>
                                    <th rowspan="3">AC Output</th>
                                    <td>Vab</td>
                                    <td id="Inverter_Get_AcOutputPhaseABVoltage28" class="realtime">XXX</td>
                                    <td>V</td>
                                    <td>Vbc</td>
                                    <td id="Inverter_Get_AcOutputPhaseBCVoltage28" class="realtime">XXX</td>
                                    <td>V</td>
                                    <td>Vca</td>
                                    <td id="Inverter_Get_AcOutputPhaseCAVoltage28" class="realtime">XXX</td>
                                    <td>V</td>
                                </tr>
                                <tr>
                                    <td>A Phase Current</td>
                                    <td id="Inverter_Get_AcOutputPhaseACurrent28" class="realtime">XX</td>
                                    <td>A</td>
                                    <td>B Phase Current</td>
                                    <td id="Inverter_Get_AcOutputPhaseBCurrent28" class="realtime">XXX</td>
                                    <td>A</td>
                                    <td>C Phase Current</td>
                                    <td id="Inverter_Get_AcOutputPhaseCCurrent28" class="realtime">XX</td>
                                    <td>A</td>
                                </tr>
                                <tr>
                                    <td>Real Power</td>
                                    <td id="Inverter_Get_AcOutputRealPower28" class="realtime">XXX.X</td>
                                    <td>kW</td>
                                    <td>Reactive Power</td>
                                    <td id="Inverter_Get_AcOutputReactivePower28" class="realtime">XXX.X</td>
                                    <td>kVAr</td>
                                    <td>Power Factor</td>
                                    <td id="Inverter_Get_AcOutputPowerFactor28" class="realtime">.XX</td>
                                    <td>%</td>
                                </tr>
                                <tr>
                                    <th>Status</th>
                                    <td>Fault Code</td>
                                    <td>XX</td>
                                    <td></td>
                                    <td>Efficiency</td>
                                    <td id="Inverter_Get_Efficiency28" class="realtime">XX.X</td>
                                    <td>%</td>
                                    <td>Temperature</td>
                                    <td>XX</td>
                                    <td>°C</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <table>
                    <tr>
                        <td><table>
                                <tr>
                                    <th colspan="10">Inverter | 29</th>
                                </tr>
                                <tr>
                                    <th>DC Input</th>
                                    <td>DC Power</td>
                                    <td id="Inverter_Get_DcRealPower29" class="realtime">XXX.X</td>
                                    <td>kW</td>
                                    <td>DC Voltage</td>
                                    <td id="Inverter_Get_DcVolts29" class="realtime">XXX</td>
                                    <td>V</td>
                                    <td>DC Current</td>
                                    <td id="Inverter_Get_DcCurrent29" class="realtime">XX.X</td>
                                    <td>A</td>
                                </tr>
                                <tr>
                                    <th rowspan="3">AC Output</th>
                                    <td>Vab</td>
                                    <td id="Inverter_Get_AcOutputPhaseABVoltage29" class="realtime">XXX</td>
                                    <td>V</td>
                                    <td>Vbc</td>
                                    <td id="Inverter_Get_AcOutputPhaseBCVoltage29" class="realtime">XXX</td>
                                    <td>V</td>
                                    <td>Vca</td>
                                    <td id="Inverter_Get_AcOutputPhaseCAVoltage29" class="realtime">XXX</td>
                                    <td>V</td>
                                </tr>
                                <tr>
                                    <td>A Phase Current</td>
                                    <td id="Inverter_Get_AcOutputPhaseACurrent29" class="realtime">XX</td>
                                    <td>A</td>
                                    <td>B Phase Current</td>
                                    <td id="Inverter_Get_AcOutputPhaseBCurrent29" class="realtime">XXX</td>
                                    <td>A</td>
                                    <td>C Phase Current</td>
                                    <td id="Inverter_Get_AcOutputPhaseCCurrent29" class="realtime">XX</td>
                                    <td>A</td>
                                </tr>
                                <tr>
                                    <td>Real Power</td>
                                    <td id="Inverter_Get_AcOutputRealPower29" class="realtime">XXX.X</td>
                                    <td>kW</td>
                                    <td>Reactive Power</td>
                                    <td id="Inverter_Get_AcOutputReactivePower29" class="realtime">XXX.X</td>
                                    <td>kVAr</td>
                                    <td>Power Factor</td>
                                    <td id="Inverter_Get_AcOutputPowerFactor29" class="realtime">.XX</td>
                                    <td>%</td>
                                </tr>
                                <tr>
                                    <th>Status</th>
                                    <td>Fault Code</td>
                                    <td>XX</td>
                                    <td></td>
                                    <td>Efficiency</td>
                                    <td id="Inverter_Get_Efficiency29" class="realtime">XX.X</td>
                                    <td>%</td>
                                    <td>Temperature</td>
                                    <td>XX</td>
                                    <td>°C</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                  <table>
                    <tr>
                        <td><table>
                                <tr>
                                    <th colspan="10">Inverter | 30</th>
                                </tr>
                                <tr>
                                    <th>DC Input</th>
                                    <td>DC Power</td>
                                    <td id="Inverter_Get_DcRealPower30" class="realtime">XXX.X</td>
                                    <td>kW</td>
                                    <td>DC Voltage</td>
                                    <td id="Inverter_Get_DcVolts30" class="realtime">XXX</td>
                                    <td>V</td>
                                    <td>DC Current</td>
                                    <td id="Inverter_Get_DcCurrent30" class="realtime">XX.X</td>
                                    <td>A</td>
                                </tr>
                                <tr>
                                    <th rowspan="3">AC Output</th>
                                    <td>Vab</td>
                                    <td id="Inverter_Get_AcOutputPhaseABVoltage30" class="realtime">XXX</td>
                                    <td>V</td>
                                    <td>Vbc</td>
                                    <td id="Inverter_Get_AcOutputPhaseBCVoltage30" class="realtime">XXX</td>
                                    <td>V</td>
                                    <td>Vca</td>
                                    <td id="Inverter_Get_AcOutputPhaseCAVoltage30" class="realtime">XXX</td>
                                    <td>V</td>
                                </tr>
                                <tr>
                                    <td>A Phase Current</td>
                                    <td id="Inverter_Get_AcOutputPhaseACurrent30" class="realtime">XX</td>
                                    <td>A</td>
                                    <td>B Phase Current</td>
                                    <td id="Inverter_Get_AcOutputPhaseBCurrent30" class="realtime">XXX</td>
                                    <td>A</td>
                                    <td>C Phase Current</td>
                                    <td id="Inverter_Get_AcOutputPhaseCCurrent30" class="realtime">XX</td>
                                    <td>A</td>
                                </tr>
                                <tr>
                                    <td>Real Power</td>
                                    <td id="Inverter_Get_AcOutputRealPower30" class="realtime">XXX.X</td>
                                    <td>kW</td>
                                    <td>Reactive Power</td>
                                    <td id="Inverter_Get_AcOutputReactivePower30" class="realtime">XXX.X</td>
                                    <td>kVAr</td>
                                    <td>Power Factor</td>
                                    <td id="Inverter_Get_AcOutputPowerFactor30" class="realtime">.XX</td>
                                    <td>%</td>
                                </tr>
                                <tr>
                                    <th>Status</th>
                                    <td>Fault Code</td>
                                    <td>XX</td>
                                    <td></td>
                                    <td>Efficiency</td>
                                    <td id="Inverter_Get_Efficiency30" class="realtime">XX.X</td>
                                    <td>%</td>
                                    <td>Temperature</td>
                                    <td>XX</td>
                                    <td>°C</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </body>
</html>
