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
        <title>Inverters 21-25</title>
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
                <li class="currentPage"><a class="buttonMenu2" id="current" class="active":active >Inverters 30-34</a></li>

                <h1 class="left">INVERTER 30-34</h1>
            </ul>
        </div>
        <div class="wrapall" id="electricDiagram">
            <div class="center">

                <table>
                    <tr>
                        <td><table>
                                <tr>
                                    <th colspan="10">Inverter | 20</th>
                                </tr>
                                <tr>
                                    <th>DC Input</th>
                                    <td>DC Power</td>
                                    <td id="Inverter_Get_DcRealPower20" class="realtime">XXX.X</td>
                                    <td>kW</td>
                                    <td>DC Voltage</td>
                                    <td id="Inverter_Get_DcVolts20" class="realtime">XXX</td>
                                    <td>V</td>
                                    <td>DC Current</td>
                                    <td id="Inverter_Get_DcCurrent20" class="realtime">XX.X</td>
                                    <td>A</td>
                                </tr>
                                <tr>
                                    <th rowspan="3">AC Output</th>
                                    <td>Vab</td>
                                    <td id="Inverter_Get_AcOutputPhaseABVoltage20" class="realtime">XXX</td>
                                    <td>V</td>
                                    <td>Vbc</td>
                                    <td id="Inverter_Get_AcOutputPhaseBCVoltage20" class="realtime">XXX</td>
                                    <td>V</td>
                                    <td>Vca</td>
                                    <td id="Inverter_Get_AcOutputPhaseCAVoltage20" class="realtime">XXX</td>
                                    <td>V</td>
                                </tr>
                                <tr>
                                    <td>A Phase Current</td>
                                    <td id="Inverter_Get_AcOutputPhaseACurrent20" class="realtime">XX</td>
                                    <td>A</td>
                                    <td>B Phase Current</td>
                                    <td id="Inverter_Get_AcOutputPhaseBCurrent20" class="realtime">XXX</td>
                                    <td>A</td>
                                    <td>C Phase Current</td>
                                    <td id="Inverter_Get_AcOutputPhaseCCurrent20" class="realtime">XX</td>
                                    <td>A</td>
                                </tr>
                                <tr>
                                    <td>Real Power</td>
                                    <td id="Inverter_Get_AcOutputRealPower20" class="realtime">XXX.X</td>
                                    <td>kW</td>
                                    <td>Reactive Power</td>
                                    <td id="Inverter_Get_AcOutputReactivePower20" class="realtime">XXX.X</td>
                                    <td>kVAr</td>
                                    <td>Power Factor</td>
                                    <td id="Inverter_Get_AcOutputPowerFactor20" class="realtime">.XX</td>
                                    <td>%</td>
                                </tr>
                                <tr>
                                    <th>Status</th>
                                    <td>Fault Code</td>
                                    <td>XX</td>
                                    <td></td>
                                    <td>Efficiency</td>
                                    <td id="Inverter_Get_Efficiency20" class="realtime">XX.X</td>
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
                                    <th colspan="10">Inverter | 21</th>
                                </tr>
                                <tr>
                                    <th>DC Input</th>
                                    <td>DC Power</td>
                                    <td id="Inverter_Get_DcRealPower21" class="realtime">XXX.X</td>
                                    <td>kW</td>
                                    <td>DC Voltage</td>
                                    <td id="Inverter_Get_DcVolts21" class="realtime">XXX</td>
                                    <td>V</td>
                                    <td>DC Current</td>
                                    <td id="Inverter_Get_DcCurrent21" class="realtime">XX.X</td>
                                    <td>A</td>
                                </tr>
                                <tr>
                                    <th rowspan="3">AC Output</th>
                                    <td>Vab</td>
                                    <td id="Inverter_Get_AcOutputPhaseABVoltage21" class="realtime">XXX</td>
                                    <td>V</td>
                                    <td>Vbc</td>
                                    <td id="Inverter_Get_AcOutputPhaseBCVoltage21" class="realtime">XXX</td>
                                    <td>V</td>
                                    <td>Vca</td>
                                    <td id="Inverter_Get_AcOutputPhaseCAVoltage31" class="realtime">XXX</td>
                                    <td>V</td>
                                </tr>
                                <tr>
                                    <td>A Phase Current</td>
                                    <td id="Inverter_Get_AcOutputPhaseACurrent31" class="realtime">XX</td>
                                    <td>A</td>
                                    <td>B Phase Current</td>
                                    <td id="Inverter_Get_AcOutputPhaseBCurrent31" class="realtime">XXX</td>
                                    <td>A</td>
                                    <td>C Phase Current</td>
                                    <td id="Inverter_Get_AcOutputPhaseCCurrent31" class="realtime">XX</td>
                                    <td>A</td>
                                </tr>
                                <tr>
                                    <td>Real Power</td>
                                    <td id="Inverter_Get_AcOutputRealPower31" class="realtime">XXX.X</td>
                                    <td>kW</td>
                                    <td>Reactive Power</td>
                                    <td id="Inverter_Get_AcOutputReactivePower31" class="realtime">XXX.X</td>
                                    <td>kVAr</td>
                                    <td>Power Factor</td>
                                    <td id="Inverter_Get_AcOutputPowerFactor31" class="realtime">.XX</td>
                                    <td>%</td>
                                </tr>
                                <tr>
                                    <th>Status</th>
                                    <td>Fault Code</td>
                                    <td>XX</td>
                                    <td></td>
                                    <td>Efficiency</td>
                                    <td id="Inverter_Get_Efficiency31" class="realtime">XX.X</td>
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
                                    <th colspan="10">Inverter | 32</th>
                                </tr>
                                <tr>
                                    <th>DC Input</th>
                                    <td>DC Power</td>
                                    <td id="Inverter_Get_DcRealPower32" class="realtime">XXX.X</td>
                                    <td>kW</td>
                                    <td>DC Voltage</td>
                                    <td id="Inverter_Get_DcVolts32" class="realtime">XXX</td>
                                    <td>V</td>
                                    <td>DC Current</td>
                                    <td id="Inverter_Get_DcCurrent32" class="realtime">XX.X</td>
                                    <td>A</td>
                                </tr>
                                <tr>
                                    <th rowspan="3">AC Output</th>
                                    <td>Vab</td>
                                    <td id="Inverter_Get_AcOutputPhaseABVoltage32" class="realtime">XXX</td>
                                    <td>V</td>
                                    <td>Vbc</td>
                                    <td id="Inverter_Get_AcOutputPhaseBCVoltage32" class="realtime">XXX</td>
                                    <td>V</td>
                                    <td>Vca</td>
                                    <td id="Inverter_Get_AcOutputPhaseCAVoltage32" class="realtime">XXX</td>
                                    <td>V</td>
                                </tr>
                                <tr>
                                    <td>A Phase Current</td>
                                    <td id="Inverter_Get_AcOutputPhaseACurrent32" class="realtime">XX</td>
                                    <td>A</td>
                                    <td>B Phase Current</td>
                                    <td id="Inverter_Get_AcOutputPhaseBCurrent32" class="realtime">XXX</td>
                                    <td>A</td>
                                    <td>C Phase Current</td>
                                    <td id="Inverter_Get_AcOutputPhaseCCurrent32" class="realtime">XX</td>
                                    <td>A</td>
                                </tr>
                                <tr>
                                    <td>Real Power</td>
                                    <td id="Inverter_Get_AcOutputRealPower32" class="realtime">XXX.X</td>
                                    <td>kW</td>
                                    <td>Reactive Power</td>
                                    <td id="Inverter_Get_AcOutputReactivePower32" class="realtime">XXX.X</td>
                                    <td>kVAr</td>
                                    <td>Power Factor</td>
                                    <td id="Inverter_Get_AcOutputPowerFactor32" class="realtime">.XX</td>
                                    <td>%</td>
                                </tr>
                                <tr>
                                    <th>Status</th>
                                    <td>Fault Code</td>
                                    <td>XX</td>
                                    <td></td>
                                    <td>Efficiency</td>
                                    <td id="Inverter_Get_Efficiency32" class="realtime">XX.X</td>
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
                                    <th colspan="10">Inverter | 33</th>
                                </tr>
                                <tr>
                                    <th>DC Input</th>
                                    <td>DC Power</td>
                                    <td id="Inverter_Get_DcRealPower33" class="realtime">XXX.X</td>
                                    <td>kW</td>
                                    <td>DC Voltage</td>
                                    <td id="Inverter_Get_DcVolts33" class="realtime">XXX</td>
                                    <td>V</td>
                                    <td>DC Current</td>
                                    <td id="Inverter_Get_DcCurrent33" class="realtime">XX.X</td>
                                    <td>A</td>
                                </tr>
                                <tr>
                                    <th rowspan="3">AC Output</th>
                                    <td>Vab</td>
                                    <td id="Inverter_Get_AcOutputPhaseABVoltage33" class="realtime">XXX</td>
                                    <td>V</td>
                                    <td>Vbc</td>
                                    <td id="Inverter_Get_AcOutputPhaseBCVoltage33" class="realtime">XXX</td>
                                    <td>V</td>
                                    <td>Vca</td>
                                    <td id="Inverter_Get_AcOutputPhaseCAVoltage33" class="realtime">XXX</td>
                                    <td>V</td>
                                </tr>
                                <tr>
                                    <td>A Phase Current</td>
                                    <td id="Inverter_Get_AcOutputPhaseACurrent33" class="realtime">XX</td>
                                    <td>A</td>
                                    <td>B Phase Current</td>
                                    <td id="Inverter_Get_AcOutputPhaseBCurrent33" class="realtime">XXX</td>
                                    <td>A</td>
                                    <td>C Phase Current</td>
                                    <td id="Inverter_Get_AcOutputPhaseCCurrent33" class="realtime">XX</td>
                                    <td>A</td>
                                </tr>
                                <tr>
                                    <td>Real Power</td>
                                    <td id="Inverter_Get_AcOutputRealPower33" class="realtime">XXX.X</td>
                                    <td>kW</td>
                                    <td>Reactive Power</td>
                                    <td id="Inverter_Get_AcOutputReactivePower33" class="realtime">XXX.X</td>
                                    <td>kVAr</td>
                                    <td>Power Factor</td>
                                    <td id="Inverter_Get_AcOutputPowerFactor33" class="realtime">.XX</td>
                                    <td>%</td>
                                </tr>
                                <tr>
                                    <th>Status</th>
                                    <td>Fault Code</td>
                                    <td>XX</td>
                                    <td></td>
                                    <td>Efficiency</td>
                                    <td id="Inverter_Get_Efficiency33" class="realtime">XX.X</td>
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
                                    <th colspan="10">Inverter | 34</th>
                                </tr>
                                <tr>
                                    <th>DC Input</th>
                                    <td>DC Power</td>
                                    <td id="Inverter_Get_DcRealPower34" class="realtime">XXX.X</td>
                                    <td>kW</td>
                                    <td>DC Voltage</td>
                                    <td id="Inverter_Get_DcVolts34" class="realtime">XXX</td>
                                    <td>V</td>
                                    <td>DC Current</td>
                                    <td id="Inverter_Get_DcCurrent34" class="realtime">XX.X</td>
                                    <td>A</td>
                                </tr>
                                <tr>
                                    <th rowspan="3">AC Output</th>
                                    <td>Vab</td>
                                    <td id="Inverter_Get_AcOutputPhaseABVoltage34" class="realtime">XXX</td>
                                    <td>V</td>
                                    <td>Vbc</td>
                                    <td id="Inverter_Get_AcOutputPhaseBCVoltage34" class="realtime">XXX</td>
                                    <td>V</td>
                                    <td>Vca</td>
                                    <td id="Inverter_Get_AcOutputPhaseCAVoltage34" class="realtime">XXX</td>
                                    <td>V</td>
                                </tr>
                                <tr>
                                    <td>A Phase Current</td>
                                    <td id="Inverter_Get_AcOutputPhaseACurrent34" class="realtime">XX</td>
                                    <td>A</td>
                                    <td>B Phase Current</td>
                                    <td id="Inverter_Get_AcOutputPhaseBCurrent34" class="realtime">XXX</td>
                                    <td>A</td>
                                    <td>C Phase Current</td>
                                    <td id="Inverter_Get_AcOutputPhaseCCurrent34" class="realtime">XX</td>
                                    <td>A</td>
                                </tr>
                                <tr>
                                    <td>Real Power</td>
                                    <td id="Inverter_Get_AcOutputRealPower34" class="realtime">XXX.X</td>
                                    <td>kW</td>
                                    <td>Reactive Power</td>
                                    <td id="Inverter_Get_AcOutputReactivePower34" class="realtime">XXX.X</td>
                                    <td>kVAr</td>
                                    <td>Power Factor</td>
                                    <td id="Inverter_Get_AcOutputPowerFactor34" class="realtime">.XX</td>
                                    <td>%</td>
                                </tr>
                                <tr>
                                    <th>Status</th>
                                    <td>Fault Code</td>
                                    <td>XX</td>
                                    <td></td>
                                    <td>Efficiency</td>
                                    <td id="Inverter_Get_Efficiency34" class="realtime">XX.X</td>
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
