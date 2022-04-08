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
        <title>Inverters 35 - 39</title>
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

                <h1 class="left">INVERTER 35-39</h1>
            </ul>
        </div>
        <div class="wrapall" id="electricDiagram">
            <div class="center">

                <table>
                    <tr>

                        <td><table>
                                <tr>
                                    <th colspan="10">Inverter | 35</th>
                                </tr>
                                <tr>
                                    <th>DC Input</th>
                                    <td>DC Power</td>
                                    <td id="Inverter_Get_DcRealPower35" class="realtime">XXX.X</td>
                                    <td>kW</td>
                                    <td>DC Voltage</td>
                                    <td id="Inverter_Get_DcVolts35" class="realtime">XXX</td>
                                    <td>V</td>
                                    <td>DC Current</td>
                                    <td id="Inverter_Get_DcCurrent35" class="realtime">XX.X</td>
                                    <td>A</td>
                                </tr>
                                <tr>
                                    <th rowspan="3">AC Output</th>
                                    <td>Vab</td>
                                    <td id="Inverter_Get_AcOutputPhaseABVoltage35" class="realtime">XXX</td>
                                    <td>V</td>
                                    <td>Vbc</td>
                                    <td id="Inverter_Get_AcOutputPhaseBCVoltage35" class="realtime">XXX</td>
                                    <td>V</td>
                                    <td>Vca</td>
                                    <td id="Inverter_Get_AcOutputPhaseCAVoltage35" class="realtime">XXX</td>
                                    <td>V</td>
                                </tr>
                                <tr>
                                    <td>A Phase Current</td>
                                    <td id="Inverter_Get_AcOutputPhaseACurrent35" class="realtime">XX</td>
                                    <td>A</td>
                                    <td>B Phase Current</td>
                                    <td id="Inverter_Get_AcOutputPhaseBCurrent35" class="realtime">XXX</td>
                                    <td>A</td>
                                    <td>C Phase Current</td>
                                    <td id="Inverter_Get_AcOutputPhaseCCurrent35" class="realtime">XX</td>
                                    <td>A</td>
                                </tr>
                                <tr>
                                    <td>Real Power</td>
                                    <td id="Inverter_Get_AcOutputRealPower35" class="realtime">XXX.X</td>
                                    <td>kW</td>
                                    <td>Reactive Power</td>
                                    <td id="Inverter_Get_AcOutputReactivePower35" class="realtime">XXX.X</td>
                                    <td>kVAr</td>
                                    <td>Power Factor</td>
                                    <td id="Inverter_Get_AcOutputPowerFactor35" class="realtime">.XX</td>
                                    <td>%</td>
                                </tr>
                                <tr>
                                    <th>Status</th>
                                    <td>Fault Code</td>
                                    <td>XX</td>
                                    <td></td>
                                    <td>Efficiency</td>
                                    <td id="Inverter_Get_Efficiency35" class="realtime">XX.X</td>
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
                                    <th colspan="10">Inverter | 36</th>
                                </tr>
                                <tr>
                                    <th>DC Input</th>
                                    <td>DC Power</td>
                                    <td id="Inverter_Get_DcRealPower36" class="realtime">XXX.X</td>
                                    <td>kW</td>
                                    <td>DC Voltage</td>
                                    <td id="Inverter_Get_DcVolts36" class="realtime">XXX</td>
                                    <td>V</td>
                                    <td>DC Current</td>
                                    <td id="Inverter_Get_DcCurrent36" class="realtime">XX.X</td>
                                    <td>A</td>
                                </tr>
                                <tr>
                                    <th rowspan="3">AC Output</th>
                                    <td>Vab</td>
                                    <td id="Inverter_Get_AcOutputPhaseABVoltage36" class="realtime">XXX</td>
                                    <td>V</td>
                                    <td>Vbc</td>
                                    <td id="Inverter_Get_AcOutputPhaseBCVoltage36" class="realtime">XXX</td>
                                    <td>V</td>
                                    <td>Vca</td>
                                    <td id="Inverter_Get_AcOutputPhaseCAVoltage36" class="realtime">XXX</td>
                                    <td>V</td>
                                </tr>
                                <tr>
                                    <td>A Phase Current</td>
                                    <td id="Inverter_Get_AcOutputPhaseACurrent36" class="realtime">XX</td>
                                    <td>A</td>
                                    <td>B Phase Current</td>
                                    <td id="Inverter_Get_AcOutputPhaseBCurrent36" class="realtime">XXX</td>
                                    <td>A</td>
                                    <td>C Phase Current</td>
                                    <td id="Inverter_Get_AcOutputPhaseCCurrent36" class="realtime">XX</td>
                                    <td>A</td>
                                </tr>
                                <tr>
                                    <td>Real Power</td>
                                    <td id="Inverter_Get_AcOutputRealPower36" class="realtime">XXX.X</td>
                                    <td>kW</td>
                                    <td>Reactive Power</td>
                                    <td id="Inverter_Get_AcOutputReactivePower36" class="realtime">XXX.X</td>
                                    <td>kVAr</td>
                                    <td>Power Factor</td>
                                    <td id="Inverter_Get_AcOutputPowerFactor36" class="realtime">.XX</td>
                                    <td>%</td>
                                </tr>
                                <tr>
                                    <th>Status</th>
                                    <td>Fault Code</td>
                                    <td>XX</td>
                                    <td></td>
                                    <td>Efficiency</td>
                                    <td id="Inverter_Get_Efficiency36" class="realtime">XX.X</td>
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
                                    <th colspan="10">Inverter | 37</th>
                                </tr>
                                <tr>
                                    <th>DC Input</th>
                                    <td>DC Power</td>
                                    <td id="Inverter_Get_DcRealPower37" class="realtime">XXX.X</td>
                                    <td>kW</td>
                                    <td>DC Voltage</td>
                                    <td id="Inverter_Get_DcVolts37" class="realtime">XXX</td>
                                    <td>V</td>
                                    <td>DC Current</td>
                                    <td id="Inverter_Get_DcCurrent37" class="realtime">XX.X</td>
                                    <td>A</td>
                                </tr>
                                <tr>
                                    <th rowspan="3">AC Output</th>
                                    <td>Vab</td>
                                    <td id="Inverter_Get_AcOutputPhaseABVoltage37" class="realtime">XXX</td>
                                    <td>V</td>
                                    <td>Vbc</td>
                                    <td id="Inverter_Get_AcOutputPhaseBCVoltage37" class="realtime">XXX</td>
                                    <td>V</td>
                                    <td>Vca</td>
                                    <td id="Inverter_Get_AcOutputPhaseCAVoltage37" class="realtime">XXX</td>
                                    <td>V</td>
                                </tr>
                                <tr>
                                    <td>A Phase Current</td>
                                    <td id="Inverter_Get_AcOutputPhaseACurrent37" class="realtime">XX</td>
                                    <td>A</td>
                                    <td>B Phase Current</td>
                                    <td id="Inverter_Get_AcOutputPhaseBCurrent37" class="realtime">XXX</td>
                                    <td>A</td>
                                    <td>C Phase Current</td>
                                    <td id="Inverter_Get_AcOutputPhaseCCurrent37" class="realtime">XX</td>
                                    <td>A</td>
                                </tr>
                                <tr>
                                    <td>Real Power</td>
                                    <td id="Inverter_Get_AcOutputRealPower37" class="realtime">XXX.X</td>
                                    <td>kW</td>
                                    <td>Reactive Power</td>
                                    <td id="Inverter_Get_AcOutputReactivePower37" class="realtime">XXX.X</td>
                                    <td>kVAr</td>
                                    <td>Power Factor</td>
                                    <td id="Inverter_Get_AcOutputPowerFactor37" class="realtime">.XX</td>
                                    <td>%</td>
                                </tr>
                                <tr>
                                    <th>Status</th>
                                    <td>Fault Code</td>
                                    <td>XX</td>
                                    <td></td>
                                    <td>Efficiency</td>
                                    <td id="Inverter_Get_Efficiency37" class="realtime">XX.X</td>
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
                                    <th colspan="10">Inverter | 38</th>
                                </tr>
                                <tr>
                                    <th>DC Input</th>
                                    <td>DC Power</td>
                                    <td id="Inverter_Get_DcRealPower38" class="realtime">XXX.X</td>
                                    <td>kW</td>
                                    <td>DC Voltage</td>
                                    <td id="Inverter_Get_DcVolts38" class="realtime">XXX</td>
                                    <td>V</td>
                                    <td>DC Current</td>
                                    <td id="Inverter_Get_DcCurrent38" class="realtime">XX.X</td>
                                    <td>A</td>
                                </tr>
                                <tr>
                                    <th rowspan="3">AC Output</th>
                                    <td>Vab</td>
                                    <td id="Inverter_Get_AcOutputPhaseABVoltage38" class="realtime">XXX</td>
                                    <td>V</td>
                                    <td>Vbc</td>
                                    <td id="Inverter_Get_AcOutputPhaseBCVoltage38" class="realtime">XXX</td>
                                    <td>V</td>
                                    <td>Vca</td>
                                    <td id="Inverter_Get_AcOutputPhaseCAVoltage38" class="realtime">XXX</td>
                                    <td>V</td>
                                </tr>
                                <tr>
                                    <td>A Phase Current</td>
                                    <td id="Inverter_Get_AcOutputPhaseACurrent38" class="realtime">XX</td>
                                    <td>A</td>
                                    <td>B Phase Current</td>
                                    <td id="Inverter_Get_AcOutputPhaseBCurrent38" class="realtime">XXX</td>
                                    <td>A</td>
                                    <td>C Phase Current</td>
                                    <td id="Inverter_Get_AcOutputPhaseCCurrent38" class="realtime">XX</td>
                                    <td>A</td>
                                </tr>
                                <tr>
                                    <td>Real Power</td>
                                    <td id="Inverter_Get_AcOutputRealPower38" class="realtime">XXX.X</td>
                                    <td>kW</td>
                                    <td>Reactive Power</td>
                                    <td id="Inverter_Get_AcOutputReactivePower38" class="realtime">XXX.X</td>
                                    <td>kVAr</td>
                                    <td>Power Factor</td>
                                    <td id="Inverter_Get_AcOutputPowerFactor38" class="realtime">.XX</td>
                                    <td>%</td>
                                </tr>
                                <tr>
                                    <th>Status</th>
                                    <td>Fault Code</td>
                                    <td>XX</td>
                                    <td></td>
                                    <td>Efficiency</td>
                                    <td id="Inverter_Get_Efficiency38" class="realtime">XX.X</td>
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
                                    <th colspan="10">Inverter | 39</th>
                                </tr>
                                <tr>
                                    <th>DC Input</th>
                                    <td>DC Power</td>
                                    <td id="Inverter_Get_DcRealPower39" class="realtime">XXX.X</td>
                                    <td>kW</td>
                                    <td>DC Voltage</td>
                                    <td id="Inverter_Get_DcVolts39" class="realtime">XXX</td>
                                    <td>V</td>
                                    <td>DC Current</td>
                                    <td id="Inverter_Get_DcCurrent39" class="realtime">XX.X</td>
                                    <td>A</td>
                                </tr>
                                <tr>
                                    <th rowspan="3">AC Output</th>
                                    <td>Vab</td>
                                    <td id="Inverter_Get_AcOutputPhaseABVoltage39" class="realtime">XXX</td>
                                    <td>V</td>
                                    <td>Vbc</td>
                                    <td id="Inverter_Get_AcOutputPhaseBCVoltage39" class="realtime">XXX</td>
                                    <td>V</td>
                                    <td>Vca</td>
                                    <td id="Inverter_Get_AcOutputPhaseCAVoltage39" class="realtime">XXX</td>
                                    <td>V</td>
                                </tr>
                                <tr>
                                    <td>A Phase Current</td>
                                    <td id="Inverter_Get_AcOutputPhaseACurrent39" class="realtime">XX</td>
                                    <td>A</td>
                                    <td>B Phase Current</td>
                                    <td id="Inverter_Get_AcOutputPhaseBCurrent39" class="realtime">XXX</td>
                                    <td>A</td>
                                    <td>C Phase Current</td>
                                    <td id="Inverter_Get_AcOutputPhaseCCurrent39" class="realtime">XX</td>
                                    <td>A</td>
                                </tr>
                                <tr>
                                    <td>Real Power</td>
                                    <td id="Inverter_Get_AcOutputRealPower39" class="realtime">XXX.X</td>
                                    <td>kW</td>
                                    <td>Reactive Power</td>
                                    <td id="Inverter_Get_AcOutputReactivePower39" class="realtime">XXX.X</td>
                                    <td>kVAr</td>
                                    <td>Power Factor</td>
                                    <td id="Inverter_Get_AcOutputPowerFactor39" class="realtime">.XX</td>
                                    <td>%</td>
                                </tr>
                                <tr>
                                    <th>Status</th>
                                    <td>Fault Code</td>
                                    <td>XX</td>
                                    <td></td>
                                    <td>Efficiency</td>
                                    <td id="Inverter_Get_Efficiency39" class="realtime">XX.X</td>
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
