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
                                            <td id="Inverter_Get_DcRealPower01" class="realtime" >XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="Inverter_Get_DcVolts01" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="Inverter_Get_DcCurrent01" class="realtime">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="Inverter_Get_AcOutputPhaseABVoltage01" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="Inverter_Get_AcOutputPhaseBCVoltage01" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="Inverter_Get_AcOutputPhaseCAVoltage01" class="realtime">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseACurrent01" class="realtime">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseBCurrent01" class="realtime">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseCCurrent01" class="realtime">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="Inverter_Get_AcOutputRealPower01" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="Inverter_Get_AcOutputReactivePower01" class="realtime">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="Inverter_Get_AcOutputPowerFactor01" class="realtime">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="Inverter_Get_Efficiency01" class="realtime">XX.X</td>
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
                                            <td id="Inverter_Get_DcRealPower06" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="Inverter_Get_DcVolts06" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="Inverter_Get_DcCurrent06" class="realtime">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="Inverter_Get_AcOutputPhaseABVoltage06" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="Inverter_Get_AcOutputPhaseBCVoltage06" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="Inverter_Get_AcOutputPhaseCAVoltage06" class="realtime">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseACurrent06" class="realtime">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseBCurrent06" class="realtime">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseCCurrent06" class="realtime">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="Inverter_Get_AcOutputRealPower06" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="Inverter_Get_AcOutputReactivePower06" class="realtime">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="Inverter_Get_AcOutputPowerFactor06" class="realtime">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="Inverter_Get_Efficiency06" class="realtime">XX.X</td>
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
                                            <td id="Inverter_Get_DcRealPower02" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="Inverter_Get_DcVolts02" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="Inverter_Get_DcCurrent02" class="realtime">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="Inverter_Get_AcOutputPhaseABVoltage02" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="Inverter_Get_AcOutputPhaseBCVoltage02" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="Inverter_Get_AcOutputPhaseCAVoltage02" class="realtime">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseACurrent02" class="realtime">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseBCurrent02" class="realtime">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseCCurrent02" class="realtime">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="Inverter_Get_AcOutputRealPower02" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="Inverter_Get_AcOutputReactivePower02" class="realtime">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="Inverter_Get_AcOutputPowerFactor02" class="realtime">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="Inverter_Get_Efficiency02" class="realtime">XX.X</td>
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
                                            <td id="Inverter_Get_DcRealPower07" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="Inverter_Get_DcVolts07" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="Inverter_Get_DcCurrent07" class="realtime">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="Inverter_Get_AcOutputPhaseABVoltage07" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="Inverter_Get_AcOutputPhaseBCVoltage07" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="Inverter_Get_AcOutputPhaseCAVoltage07" class="realtime">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseACurrent07" class="realtime">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseBCurrent07" class="realtime">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseCCurrent07" class="realtime">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="Inverter_Get_AcOutputRealPower07" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="Inverter_Get_AcOutputReactivePower07" class="realtime">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="Inverter_Get_AcOutputPowerFactor07" class="realtime">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="Inverter_Get_Efficiency07" class="realtime">XX.X</td>
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
                                            <td id="Inverter_Get_DcRealPower03" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="Inverter_Get_DcVolts03" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="Inverter_Get_DcCurrent03" class="realtime">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="Inverter_Get_AcOutputPhaseABVoltage03" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="Inverter_Get_AcOutputPhaseBCVoltage03" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="Inverter_Get_AcOutputPhaseCAVoltage03" class="realtime">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseACurrent03" class="realtime">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseBCurrent03" class="realtime">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseCCurrent03" class="realtime">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="Inverter_Get_AcOutputRealPower03" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="Inverter_Get_AcOutputReactivePower03" class="realtime">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="Inverter_Get_AcOutputPowerFactor03" class="realtime">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="Inverter_Get_Efficiency03" class="realtime">XX.X</td>
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
                                            <td id="Inverter_Get_DcRealPower08" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="Inverter_Get_DcVolts08" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="Inverter_Get_DcCurrent08" class="realtime">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="Inverter_Get_AcOutputPhaseABVoltage08" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="Inverter_Get_AcOutputPhaseBCVoltage08" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="Inverter_Get_AcOutputPhaseCAVoltage08" class="realtime">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseACurrent08" class="realtime">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseBCurrent08" class="realtime">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseCCurrent08" class="realtime">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="Inverter_Get_AcOutputRealPower08" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="Inverter_Get_AcOutputReactivePower08" class="realtime">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="Inverter_Get_AcOutputPowerFactor08" class="realtime">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="Inverter_Get_Efficiency08" class="realtime">XX.X</td>
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
                                            <td id="Inverter_Get_DcRealPower04" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="Inverter_Get_DcVolts04" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="Inverter_Get_DcCurrent04" class="realtime">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="Inverter_Get_AcOutputPhaseABVoltage04" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="Inverter_Get_AcOutputPhaseBCVoltage04" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="Inverter_Get_AcOutputPhaseCAVoltage04" class="realtime">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseACurrent04" class="realtime">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseBCurrent04" class="realtime">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseCCurrent04" class="realtime">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="Inverter_Get_AcOutputRealPower04" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="Inverter_Get_AcOutputReactivePower04" class="realtime">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="Inverter_Get_AcOutputPowerFactor04" class="realtime">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="Inverter_Get_Efficiency04" class="realtime">XX.X</td>
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
                                            <td id="Inverter_Get_DcRealPower09" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="Inverter_Get_DcVolts09" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="Inverter_Get_DcCurrent09" class="realtime">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="Inverter_Get_AcOutputPhaseABVoltage09" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="Inverter_Get_AcOutputPhaseBCVoltage09" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="Inverter_Get_AcOutputPhaseCAVoltage09" class="realtime">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseACurrent09" class="realtime">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseBCurrent09" class="realtime">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseCCurrent09" class="realtime">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="Inverter_Get_AcOutputRealPower09" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="Inverter_Get_AcOutputReactivePower09" class="realtime">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="Inverter_Get_AcOutputPowerFactor09" class="realtime">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="Inverter_Get_Efficiency09" class="realtime">XX.X</td>
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
                                            <td id="Inverter_Get_DcRealPower05" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="Inverter_Get_DcVolts05" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="Inverter_Get_DcCurrent05" class="realtime">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="Inverter_Get_AcOutputPhaseABVoltage05" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="Inverter_Get_AcOutputPhaseBCVoltage05" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="Inverter_Get_AcOutputPhaseCAVoltage05" class="realtime">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseACurrent05" class="realtime">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseBCurrent05" class="realtime">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseCCurrent05" class="realtime">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="Inverter_Get_AcOutputRealPower05" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="Inverter_Get_AcOutputReactivePower05" class="realtime">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="Inverter_Get_AcOutputPowerFactor05" class="realtime">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="Inverter_Get_Efficiency05" class="realtime">XX.X</td>
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
