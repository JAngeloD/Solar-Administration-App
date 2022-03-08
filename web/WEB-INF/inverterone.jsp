<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style><%@include file="/WEB-INF//css/style.css"%></style>
        <style><%@include file="/WEB-INF//css/table.css"%></style>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="javascript/TablesAjax.js"></script>
        <title>Inverters 1 - 9</title>
    </head>
    <body>
        <ul>
            <li class="menuButton"><a href="login?action=logout">Logout</a></li>
            <li class="menuButton"><a href="inverterfour">Account</a></li>
            <li class="menuButton"><a href="home">Home</a></li>
            <li><a href="inverterhome">Back to Inverter Home</a></li>
            <h1 class="left">Inverter Performance</h1>
        </ul>

        <div class="center">

            <table>
                <tr>
                    <td><table><tr><td><table>
                                        <tr>
                                            <th colspan="10">Inverter | 1</th>
                                        </tr>
                                        <tr>
                                            <th>DC Input</th>
                                            <td>DC Power</td>
                                            <td id="InvertergetDcRealPower1" class="realtime" >XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="InvertergetDcVolts1" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="InvertergetDcCurrent1" class="realtime">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="InvertergetAcOutputPhaseABVoltage1" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="InvertergetAcOutputPhaseBCVoltage1" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="InvertergetAcOutputPhaseCAVoltage1" class="realtime">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseACurrent1" class="realtime">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseBCurrent1" class="realtime">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseCCurrent1" class="realtime">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="InvertergetAcOutputRealPower1" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="InvertergetAcOutputReactivePower1" class="realtime">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="InvertergetAcOutputPowerFactor1" class="realtime">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="InvertergetEfficiency1" class="realtime">XX.X</td>
                                            <td>%</td>
                                            <td>Temperature</td>
                                            <td>XX</td>
                                            <td>°C</td>
                                        </tr>
                                    </table></td></tr></table>
                    </td>
                    <td><table><tr><td><table>
                                        <tr>
                                            <th colspan="10">Inverter | 6</th>
                                        </tr>
                                        <tr>
                                            <th>DC Input</th>
                                            <td>DC Power</td>
                                            <td id="InvertergetDcRealPower6" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="InvertergetDcVolts6" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="InvertergetDcCurrent6" class="realtime">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="InvertergetAcOutputPhaseABVoltage6" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="InvertergetAcOutputPhaseBCVoltage6" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="InvertergetAcOutputPhaseCAVoltage6" class="realtime">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseACurrent6" class="realtime">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseBCurrent6" class="realtime">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseCCurrent6" class="realtime">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="InvertergetAcOutputRealPower6" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="InvertergetAcOutputReactivePower6" class="realtime">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="InvertergetAcOutputPowerFactor6" class="realtime">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="InvertergetEfficiency6" class="realtime">XX.X</td>
                                            <td>%</td>
                                            <td>Temperature</td>
                                            <td>XX</td>
                                            <td>°C</td>
                                        </tr>
                                    </table></td></tr></table>
                    </td>
                </tr>
            </table>

            <table>
                <tr>
                    <td><table><tr><td><table>
                                        <tr>
                                            <th colspan="10">Inverter | 2</th>
                                        </tr>
                                        <tr>
                                            <th>DC Input</th>
                                            <td>DC Power</td>
                                            <td id="InvertergetDcRealPower2" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="InvertergetDcVolts2" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="InvertergetDcCurrent2" class="realtime">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="InvertergetAcOutputPhaseABVoltage2" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="InvertergetAcOutputPhaseBCVoltage2" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="InvertergetAcOutputPhaseCAVoltage2" class="realtime">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseACurrent2" class="realtime">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseBCurrent2" class="realtime">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseCCurrent2" class="realtime">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="InvertergetAcOutputRealPower2" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="InvertergetAcOutputReactivePower2" class="realtime">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="InvertergetAcOutputPowerFactor2" class="realtime">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="InvertergetEfficiency2" class="realtime">XX.X</td>
                                            <td>%</td>
                                            <td>Temperature</td>
                                            <td>XX</td>
                                            <td>°C</td>
                                        </tr>
                                    </table></td></tr></table>
                    </td>
                    <td><table><tr><td><table>
                                        <tr>
                                            <th colspan="10">Inverter | 7</th>
                                        </tr>
                                        <tr>
                                            <th>DC Input</th>
                                            <td>DC Power</td>
                                            <td id="InvertergetDcRealPower7" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="InvertergetDcVolts7" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="InvertergetDcCurrent7" class="realtime">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="InvertergetAcOutputPhaseABVoltage7" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="InvertergetAcOutputPhaseBCVoltage7" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="InvertergetAcOutputPhaseCAVoltage7" class="realtime">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseACurrent7" class="realtime">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseBCurrent7" class="realtime">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseCCurrent7" class="realtime">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="InvertergetAcOutputRealPower7" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="InvertergetAcOutputReactivePower7" class="realtime">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="InvertergetAcOutputPowerFactor7" class="realtime">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="InvertergetEfficiency7" class="realtime">XX.X</td>
                                            <td>%</td>
                                            <td>Temperature</td>
                                            <td>XX</td>
                                            <td>°C</td>
                                        </tr>
                                    </table></td></tr></table>
                    </td>
                </tr>
            </table>

            <table>
                <tr>
                    <td><table><tr><td><table>
                                        <tr>
                                            <th colspan="10">Inverter | 3</th>
                                        </tr>
                                        <tr>
                                            <th>DC Input</th>
                                            <td>DC Power</td>
                                            <td id="InvertergetDcRealPower3" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="InvertergetDcVolts3" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="InvertergetDcCurrent3" class="realtime">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="InvertergetAcOutputPhaseABVoltage3" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="InvertergetAcOutputPhaseBCVoltage3" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="InvertergetAcOutputPhaseCAVoltage3" class="realtime">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseACurrent3" class="realtime">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseBCurrent3" class="realtime">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseCCurrent3" class="realtime">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="InvertergetAcOutputRealPower3" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="InvertergetAcOutputReactivePower3" class="realtime">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="InvertergetAcOutputPowerFactor3" class="realtime">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="InvertergetEfficiency3" class="realtime">XX.X</td>
                                            <td>%</td>
                                            <td>Temperature</td>
                                            <td>XX</td>
                                            <td>°C</td>
                                        </tr>
                                    </table></td></tr></table>
                    </td>
                    <td><table><tr><td><table>
                                        <tr>
                                            <th colspan="10">Inverter | 8</th>
                                        </tr>
                                        <tr>
                                            <th>DC Input</th>
                                            <td>DC Power</td>
                                            <td id="InvertergetDcRealPower8" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="InvertergetDcVolts8" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="InvertergetDcCurrent8" class="realtime">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="InvertergetAcOutputPhaseABVoltage8" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="InvertergetAcOutputPhaseBCVoltage8" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="InvertergetAcOutputPhaseCAVoltage8" class="realtime">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseACurrent8" class="realtime">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseBCurrent8" class="realtime">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseCCurrent8" class="realtime">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="InvertergetAcOutputRealPower8" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="InvertergetAcOutputReactivePower8" class="realtime">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="InvertergetAcOutputPowerFactor8" class="realtime">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="InvertergetEfficiency8" class="realtime">XX.X</td>
                                            <td>%</td>
                                            <td>Temperature</td>
                                            <td>XX</td>
                                            <td>°C</td>
                                        </tr>
                                    </table></td></tr></table>
                    </td>
                </tr>
            </table>

            <table>
                <tr>
                    <td><table><tr><td><table>
                                        <tr>
                                            <th colspan="10">Inverter | 4</th>
                                        </tr>
                                        <tr>
                                            <th>DC Input</th>
                                            <td>DC Power</td>
                                            <td id="InvertergetDcRealPower4" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="InvertergetDcVolts4" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="InvertergetDcCurrent4" class="realtime">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="InvertergetAcOutputPhaseABVoltage4" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="InvertergetAcOutputPhaseBCVoltage4" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="InvertergetAcOutputPhaseCAVoltage4" class="realtime">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseACurrent4" class="realtime">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseBCurrent4" class="realtime">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseCCurrent4" class="realtime">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="InvertergetAcOutputRealPower4" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="InvertergetAcOutputReactivePower4" class="realtime">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="InvertergetAcOutputPowerFactor4" class="realtime">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="InvertergetEfficiency4" class="realtime">XX.X</td>
                                            <td>%</td>
                                            <td>Temperature</td>
                                            <td>XX</td>
                                            <td>°C</td>
                                        </tr>
                                    </table></td></tr></table>
                    </td>
                    <td><table><tr><td><table>
                                        <tr>
                                            <th colspan="10">Inverter | 9</th>
                                        </tr>
                                        <tr>
                                            <th>DC Input</th>
                                            <td>DC Power</td>
                                            <td id="InvertergetDcRealPower9" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="InvertergetDcVolts9" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="InvertergetDcCurrent9" class="realtime">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="InvertergetAcOutputPhaseABVoltage9" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="InvertergetAcOutputPhaseBCVoltage9" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="InvertergetAcOutputPhaseCAVoltage9" class="realtime">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseACurrent9" class="realtime">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseBCurrent9" class="realtime">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseCCurrent9" class="realtime">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="InvertergetAcOutputRealPower9" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="InvertergetAcOutputReactivePower9" class="realtime">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="InvertergetAcOutputPowerFactor9" class="realtime">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="InvertergetEfficiency9" class="realtime">XX.X</td>
                                            <td>%</td>
                                            <td>Temperature</td>
                                            <td>XX</td>
                                            <td>°C</td>
                                        </tr>
                                    </table></td></tr></table>
                    </td>
                </tr>
            </table>

            <table>

                <tr>
                    <td><table><tr><td><table>
                                        <tr>
                                            <th colspan="10">Inverter | 5</th>
                                        </tr>
                                        <tr>
                                            <th>DC Input</th>
                                            <td>DC Power</td>
                                            <td id="InvertergetDcRealPower5" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="InvertergetDcVolts5" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="InvertergetDcCurrent5" class="realtime">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="InvertergetAcOutputPhaseABVoltage5" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="InvertergetAcOutputPhaseBCVoltage5" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="InvertergetAcOutputPhaseCAVoltage5" class="realtime">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseACurrent5" class="realtime">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseBCurrent5" class="realtime">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseCCurrent5" class="realtime">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="InvertergetAcOutputRealPower5" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="InvertergetAcOutputReactivePower5" class="realtime">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="InvertergetAcOutputPowerFactor5" class="realtime">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="InvertergetEfficiency5" class="realtime">XX.X</td>
                                            <td>%</td>
                                            <td>Temperature</td>
                                            <td>XX</td>
                                            <td>°C</td>
                                        </tr>
                                    </table></td></tr></table>
                    </td>


                </tr>



            </table>
        </div>
    </body>
</html>
