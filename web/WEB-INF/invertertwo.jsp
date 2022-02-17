<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style><%@include file="/WEB-INF//css/style.css"%></style>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="javascript/TablesAjax.js"></script>
        <title>Inverters 10 - 19</title>
    </head>
    <body>
        <ul>
            <li class="menuButton"><a href="home">Logout</a></li>
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
                                            <th colspan="10">Inverter | 10</th>
                                        </tr>
                                        <tr>
                                            <th>DC Input</th>
                                            <td>DC Power</td>
                                            <td id="InvertergetDcRealPower10" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="InvertergetDcVolts10" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="InvertergetDcCurrent10" class="realtime">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="InvertergetAcOutputPhaseABVoltage10" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="InvertergetAcOutputPhaseBCVoltage10" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="InvertergetAcOutputPhaseCAVoltage10" class="realtime">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseACurrent10" class="realtime">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseBCurrent10" class="realtime">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseCCurrent10" class="realtime">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="InvertergetAcOutputRealPower10" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="InvertergetAcOutputReactivePower10" class="realtime">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="InvertergetAcOutputPowerFactor10" class="realtime">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="InvertergetEfficiency10" class="realtime">XX.X</td>
                                            <td>%</td>
                                            <td>Temperature</td>
                                            <td>XX</td>
                                            <td>°C</td>
                                        </tr>
                                    </table></td></tr></table>
                    </td>
                    <td><table><tr><td><table>
                                        <tr>
                                            <th colspan="10">Inverter | 15</th>
                                        </tr>
                                        <tr>
                                            <th>DC Input</th>
                                            <td>DC Power</td>
                                            <td id="InvertergetDcRealPower15" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="InvertergetDcVolts15" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="InvertergetDcCurrent15" class="realtime">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="InvertergetAcOutputPhaseABVoltage15" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="InvertergetAcOutputPhaseBCVoltage15" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="InvertergetAcOutputPhaseCAVoltage15" class="realtime">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseACurrent15" class="realtime">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseBCurrent15" class="realtime">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseCCurrent15" class="realtime">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="InvertergetAcOutputRealPower15" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="InvertergetAcOutputReactivePower15" class="realtime">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="InvertergetAcOutputPowerFactor15" class="realtime">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="InvertergetEfficiency15" class="realtime">XX.X</td>
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
                                            <th colspan="10">Inverter | 11</th>
                                        </tr>
                                        <tr>
                                            <th>DC Input</th>
                                            <td>DC Power</td>
                                            <td id="InvertergetDcRealPower11" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="InvertergetDcVolts11" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="InvertergetDcCurrent11" class="realtime">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="InvertergetAcOutputPhaseABVoltage11" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="InvertergetAcOutputPhaseBCVoltage11" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="InvertergetAcOutputPhaseCAVoltage11" class="realtime">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseACurrent11" class="realtime">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseBCurrent11" class="realtime">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseCCurrent11" class="realtime">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="InvertergetAcOutputRealPower11" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="InvertergetAcOutputReactivePower11" class="realtime">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="InvertergetAcOutputPowerFactor11" class="realtime">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="InvertergetEfficiency11" class="realtime">XX.X</td>
                                            <td>%</td>
                                            <td>Temperature</td>
                                            <td>XX</td>
                                            <td>°C</td>
                                        </tr>
                                    </table></td></tr></table>
                    </td>
                    <td><table><tr><td><table>
                                        <tr>
                                            <th colspan="10">Inverter | 16</th>
                                        </tr>
                                        <tr>
                                            <th>DC Input</th>
                                            <td>DC Power</td>
                                            <td id="InvertergetDcRealPower16" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="InvertergetDcVolts16" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="InvertergetDcCurrent16" class="realtime">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="InvertergetAcOutputPhaseABVoltage16" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="InvertergetAcOutputPhaseBCVoltage16" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="InvertergetAcOutputPhaseCAVoltage16" class="realtime">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseACurrent16" class="realtime">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseBCurrent16" class="realtime">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseCCurrent16" class="realtime">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="InvertergetAcOutputRealPower16" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="InvertergetAcOutputReactivePower16" class="realtime">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="InvertergetAcOutputPowerFactor16" class="realtime">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="InvertergetEfficiency16" class="realtime">XX.X</td>
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
                                            <th colspan="10">Inverter | 12</th>
                                        </tr>
                                        <tr>
                                            <th>DC Input</th>
                                            <td>DC Power</td>
                                            <td id="InvertergetDcRealPower12" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="InvertergetDcVolts12" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="InvertergetDcCurrent12" class="realtime">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="InvertergetAcOutputPhaseABVoltage12" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="InvertergetAcOutputPhaseBCVoltage12" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="InvertergetAcOutputPhaseCAVoltage12" class="realtime">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseACurrent12" class="realtime">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseBCurrent12" class="realtime">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseCCurrent12" class="realtime">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="InvertergetAcOutputRealPower12" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="InvertergetAcOutputReactivePower12" class="realtime">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="InvertergetAcOutputPowerFactor12" class="realtime">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="InvertergetEfficiency12" class="realtime">XX.X</td>
                                            <td>%</td>
                                            <td>Temperature</td>
                                            <td>XX</td>
                                            <td>°C</td>
                                        </tr>
                                    </table></td></tr></table>
                    </td>
                    <td><table><tr><td><table>
                                        <tr>
                                            <th colspan="10">Inverter | 17</th>
                                        </tr>
                                        <tr>
                                            <th>DC Input</th>
                                            <td>DC Power</td>
                                            <td id="InvertergetDcRealPower17" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="InvertergetDcVolts17" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="InvertergetDcCurrent17" class="realtime">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="InvertergetAcOutputPhaseABVoltage17" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="InvertergetAcOutputPhaseBCVoltage17" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="InvertergetAcOutputPhaseCAVoltage17" class="realtime">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseACurrent17" class="realtime">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseBCurrent17" class="realtime">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseCCurrent17" class="realtime">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="InvertergetAcOutputRealPower17" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="InvertergetAcOutputReactivePower17" class="realtime">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="InvertergetAcOutputPowerFactor17" class="realtime">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="InvertergetEfficiency17" class="realtime">XX.X</td>
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
                                            <th colspan="10">Inverter | 13</th>
                                        </tr>
                                        <tr>
                                            <th>DC Input</th>
                                            <td>DC Power</td>
                                            <td id="InvertergetDcRealPower13" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="InvertergetDcVolts13" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="InvertergetDcCurrent13" class="realtime">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="InvertergetAcOutputPhaseABVoltage13" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="InvertergetAcOutputPhaseBCVoltage13" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="InvertergetAcOutputPhaseCAVoltage13" class="realtime">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseACurrent13" class="realtime">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseBCurrent13" class="realtime">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseCCurrent13" class="realtime">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="InvertergetAcOutputRealPower13" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="InvertergetAcOutputReactivePower13" class="realtime">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="InvertergetAcOutputPowerFactor13" class="realtime">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="InvertergetEfficiency13" class="realtime">XX.X</td>
                                            <td>%</td>
                                            <td>Temperature</td>
                                            <td>XX</td>
                                            <td>°C</td>
                                        </tr>
                                    </table></td></tr></table>
                    </td>
                    <td><table><tr><td><table>
                                        <tr>
                                            <th colspan="10">Inverter | 18</th>
                                        </tr>
                                        <tr>
                                            <th>DC Input</th>
                                            <td>DC Power</td>
                                            <td id="InvertergetDcRealPower18" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="InvertergetDcVolts18" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="InvertergetDcCurrent18" class="realtime">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="InvertergetAcOutputPhaseABVoltage18" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="InvertergetAcOutputPhaseBCVoltage18" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="InvertergetAcOutputPhaseCAVoltage18" class="realtime">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseACurrent18" class="realtime">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseBCurrent18" class="realtime">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseCCurrent18" class="realtime">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="InvertergetAcOutputRealPower18" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="InvertergetAcOutputReactivePower18" class="realtime">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="InvertergetAcOutputPowerFactor18" class="realtime">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="InvertergetEfficiency18" class="realtime">XX.X</td>
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
                                            <th colspan="10">Inverter | 14</th>
                                        </tr>
                                        <tr>
                                            <th>DC Input</th>
                                            <td>DC Power</td>
                                            <td id="InvertergetDcRealPower14" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="InvertergetDcVolts14" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="InvertergetDcCurrent14" class="realtime">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="InvertergetAcOutputPhaseABVoltage14" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="InvertergetAcOutputPhaseBCVoltage14" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="InvertergetAcOutputPhaseCAVoltage14" class="realtime">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseACurrent14" class="realtime">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseBCurrent14" class="realtime">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseCCurrent14" class="realtime">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="InvertergetAcOutputRealPower14" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="InvertergetAcOutputReactivePower14" class="realtime">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="InvertergetAcOutputPowerFactor14" class="realtime">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="InvertergetEfficiency14" class="realtime">XX.X</td>
                                            <td>%</td>
                                            <td>Temperature</td>
                                            <td>XX</td>
                                            <td>°C</td>
                                        </tr>
                                    </table></td></tr></table>
                    </td>
                    <td><table><tr><td><table>
                                        <tr>
                                            <th colspan="10">Inverter | 19</th>
                                        </tr>
                                        <tr>
                                            <th>DC Input</th>
                                            <td>DC Power</td>
                                            <td id="InvertergetDcRealPower19" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="InvertergetDcVolts19" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="InvertergetDcCurrent19" class="realtime">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="InvertergetAcOutputPhaseABVoltage19" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="InvertergetAcOutputPhaseBCVoltage19" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="InvertergetAcOutputPhaseCAVoltage19" class="realtime">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseACurrent19" class="realtime">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseBCurrent19" class="realtime">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseCCurrent19" class="realtime">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="InvertergetAcOutputRealPower19" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="InvertergetAcOutputReactivePower19" class="realtime">XXX.X</td>
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
                                            <td id="InvertergetEfficiency19" class="realtime">XX.X</td>
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
