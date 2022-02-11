<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style><%@include file="/WEB-INF//css/style.css"%></style>
        <title>Inverters 1 - 9</title>
    </head>
    <body>
        <ul>
            <h1 class="left">Inverter Performance 1 - 9</h1>
            <li><a href="inverterhome">Back to Inverter</a></li>
            <li><a href="inverterfour">Inverter 30-39</a></li>
            <li><a href="inverterthree">Inverter 20-29</a></li>
            <li><a href="invertertwo">Inverter 10-19</a></li>
        </ul>

        <table>
            <tr>
                <td><table><tr><td><table>
                                    <tr>
                                        <th colspan="10">Inverter | 1</th>
                                    </tr>
                                    <tr>
                                        <th>DC Input</th>
                                        <td>DC Power</td>
                                        <td id="InvertergetDcRealPower">XXX.X</td>
                                        <td>kW</td>
                                        <td>DC Voltage</td>
                                        <td id="InvertergetDcVolts">XXX</td>
                                        <td>V</td>
                                        <td>DC Current</td>
                                        <td id="InvertergetDcCurrent">XX.X</td>
                                        <td>A</td>
                                    </tr>
                                    <tr>
                                        <th rowspan="3">AC Output</th>
                                        <td>Vab</td>
                                        <td id="InvertergetAcOutputPhaseABVoltage">XXX</td>
                                        <td>V</td>
                                        <td>Vbc</td>
                                        <td id="InvertergetAcOutputPhaseBCVoltage">XXX</td>
                                        <td>V</td>
                                        <td>Vca</td>
                                        <td id="InvertergetAcOutputPhaseCAVoltage">XXX</td>
                                        <td>V</td>
                                    </tr>
                                    <tr>
                                        <td>A Phase Current</td>
                                        <td id="InvertergetAcOutputPhaseACurrent">XX</td>
                                        <td>A</td>
                                        <td>B Phase Current</td>
                                        <td id="InvertergetAcOutputPhaseBCurrent">XXX</td>
                                        <td>A</td>
                                        <td>C Phase Current</td>
                                        <td id="InvertergetAcOutputPhaseCCurrent">XX</td>
                                        <td>A</td>
                                    </tr>
                                    <tr>
                                        <td>Real Power</td>
                                        <td id="InvertergetAcOutputRealPower">XXX.X</td>
                                        <td>kW</td>
                                        <td>Reactive Power</td>
                                        <td id="InvertergetAcOutputReactivePower">XXX.X</td>
                                        <td>kVAr</td>
                                        <td>Power Factor</td>
                                        <td id="InvertergetAcOutputPowerFactor">.XX</td>
                                        <td>%</td>
                                    </tr>
                                    <tr>
                                        <th>Status</th>
                                        <td>Fault Code</td>
                                        <td id="Inverterget">XX</td>
                                        <td></td>
                                        <td>Efficiency</td>
                                        <td id="InvertergetEfficiency">XX.X</td>
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
                                        <td id="InvertergetDCPower">XXX.X</td>
                                        <td>kW</td>
                                        <td>DC Voltage</td>
                                        <td>XXX</td>
                                        <td>V</td>
                                        <td>DC Current</td>
                                        <td>XX.X</td>
                                        <td>A</td>
                                    </tr>
                                    <tr>
                                        <th rowspan="3">AC Output</th>
                                        <td>Vab</td>
                                        <td>XXX</td>
                                        <td>V</td>
                                        <td>Vbc</td>
                                        <td>XXX</td>
                                        <td>V</td>
                                        <td>Vca</td>
                                        <td>XXX</td>
                                        <td>V</td>
                                    </tr>
                                    <tr>
                                        <td>A Phase Current</td>
                                        <td>XX</td>
                                        <td>A</td>
                                        <td>B Phase Current</td>
                                        <td>XXX</td>
                                        <td>A</td>
                                        <td>C Phase Current</td>
                                        <td>XX</td>
                                        <td>A</td>
                                    </tr>
                                    <tr>
                                        <td>Real Power</td>
                                        <td>XXX.X</td>
                                        <td>kW</td>
                                        <td>Reactive Power</td>
                                        <td>XXX.X</td>
                                        <td>kVAr</td>
                                        <td>Power Factor</td>
                                        <td>.XX</td>
                                        <td>%</td>
                                    </tr>
                                    <tr>
                                        <th>Status</th>
                                        <td>Fault Code</td>
                                        <td>XX</td>
                                        <td></td>
                                        <td>Efficiency</td>
                                        <td>XX.X</td>
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
                                        <td id="InvertergetDCPower">XXX.X</td>
                                        <td>kW</td>
                                        <td>DC Voltage</td>
                                        <td>XXX</td>
                                        <td>V</td>
                                        <td>DC Current</td>
                                        <td>XX.X</td>
                                        <td>A</td>
                                    </tr>
                                    <tr>
                                        <th rowspan="3">AC Output</th>
                                        <td>Vab</td>
                                        <td>XXX</td>
                                        <td>V</td>
                                        <td>Vbc</td>
                                        <td>XXX</td>
                                        <td>V</td>
                                        <td>Vca</td>
                                        <td>XXX</td>
                                        <td>V</td>
                                    </tr>
                                    <tr>
                                        <td>A Phase Current</td>
                                        <td>XX</td>
                                        <td>A</td>
                                        <td>B Phase Current</td>
                                        <td>XXX</td>
                                        <td>A</td>
                                        <td>C Phase Current</td>
                                        <td>XX</td>
                                        <td>A</td>
                                    </tr>
                                    <tr>
                                        <td>Real Power</td>
                                        <td>XXX.X</td>
                                        <td>kW</td>
                                        <td>Reactive Power</td>
                                        <td>XXX.X</td>
                                        <td>kVAr</td>
                                        <td>Power Factor</td>
                                        <td>.XX</td>
                                        <td>%</td>
                                    </tr>
                                    <tr>
                                        <th>Status</th>
                                        <td>Fault Code</td>
                                        <td>XX</td>
                                        <td></td>
                                        <td>Efficiency</td>
                                        <td>XX.X</td>
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
                                        <td id="InvertergetDCPower">XXX.X</td>
                                        <td>kW</td>
                                        <td>DC Voltage</td>
                                        <td>XXX</td>
                                        <td>V</td>
                                        <td>DC Current</td>
                                        <td>XX.X</td>
                                        <td>A</td>
                                    </tr>
                                    <tr>
                                        <th rowspan="3">AC Output</th>
                                        <td>Vab</td>
                                        <td>XXX</td>
                                        <td>V</td>
                                        <td>Vbc</td>
                                        <td>XXX</td>
                                        <td>V</td>
                                        <td>Vca</td>
                                        <td>XXX</td>
                                        <td>V</td>
                                    </tr>
                                    <tr>
                                        <td>A Phase Current</td>
                                        <td>XX</td>
                                        <td>A</td>
                                        <td>B Phase Current</td>
                                        <td>XXX</td>
                                        <td>A</td>
                                        <td>C Phase Current</td>
                                        <td>XX</td>
                                        <td>A</td>
                                    </tr>
                                    <tr>
                                        <td>Real Power</td>
                                        <td>XXX.X</td>
                                        <td>kW</td>
                                        <td>Reactive Power</td>
                                        <td>XXX.X</td>
                                        <td>kVAr</td>
                                        <td>Power Factor</td>
                                        <td>.XX</td>
                                        <td>%</td>
                                    </tr>
                                    <tr>
                                        <th>Status</th>
                                        <td>Fault Code</td>
                                        <td>XX</td>
                                        <td></td>
                                        <td>Efficiency</td>
                                        <td>XX.X</td>
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
                                        <td id="InvertergetDCPower">XXX.X</td>
                                        <td>kW</td>
                                        <td>DC Voltage</td>
                                        <td>XXX</td>
                                        <td>V</td>
                                        <td>DC Current</td>
                                        <td>XX.X</td>
                                        <td>A</td>
                                    </tr>
                                    <tr>
                                        <th rowspan="3">AC Output</th>
                                        <td>Vab</td>
                                        <td>XXX</td>
                                        <td>V</td>
                                        <td>Vbc</td>
                                        <td>XXX</td>
                                        <td>V</td>
                                        <td>Vca</td>
                                        <td>XXX</td>
                                        <td>V</td>
                                    </tr>
                                    <tr>
                                        <td>A Phase Current</td>
                                        <td>XX</td>
                                        <td>A</td>
                                        <td>B Phase Current</td>
                                        <td>XXX</td>
                                        <td>A</td>
                                        <td>C Phase Current</td>
                                        <td>XX</td>
                                        <td>A</td>
                                    </tr>
                                    <tr>
                                        <td>Real Power</td>
                                        <td>XXX.X</td>
                                        <td>kW</td>
                                        <td>Reactive Power</td>
                                        <td>XXX.X</td>
                                        <td>kVAr</td>
                                        <td>Power Factor</td>
                                        <td>.XX</td>
                                        <td>%</td>
                                    </tr>
                                    <tr>
                                        <th>Status</th>
                                        <td>Fault Code</td>
                                        <td>XX</td>
                                        <td></td>
                                        <td>Efficiency</td>
                                        <td>XX.X</td>
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
                                        <td id="InvertergetDCPower">XXX.X</td>
                                        <td>kW</td>
                                        <td>DC Voltage</td>
                                        <td>XXX</td>
                                        <td>V</td>
                                        <td>DC Current</td>
                                        <td>XX.X</td>
                                        <td>A</td>
                                    </tr>
                                    <tr>
                                        <th rowspan="3">AC Output</th>
                                        <td>Vab</td>
                                        <td>XXX</td>
                                        <td>V</td>
                                        <td>Vbc</td>
                                        <td>XXX</td>
                                        <td>V</td>
                                        <td>Vca</td>
                                        <td>XXX</td>
                                        <td>V</td>
                                    </tr>
                                    <tr>
                                        <td>A Phase Current</td>
                                        <td>XX</td>
                                        <td>A</td>
                                        <td>B Phase Current</td>
                                        <td>XXX</td>
                                        <td>A</td>
                                        <td>C Phase Current</td>
                                        <td>XX</td>
                                        <td>A</td>
                                    </tr>
                                    <tr>
                                        <td>Real Power</td>
                                        <td>XXX.X</td>
                                        <td>kW</td>
                                        <td>Reactive Power</td>
                                        <td>XXX.X</td>
                                        <td>kVAr</td>
                                        <td>Power Factor</td>
                                        <td>.XX</td>
                                        <td>%</td>
                                    </tr>
                                    <tr>
                                        <th>Status</th>
                                        <td>Fault Code</td>
                                        <td>XX</td>
                                        <td></td>
                                        <td>Efficiency</td>
                                        <td>XX.X</td>
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
                                        <td id="InvertergetDCPower">XXX.X</td>
                                        <td>kW</td>
                                        <td>DC Voltage</td>
                                        <td>XXX</td>
                                        <td>V</td>
                                        <td>DC Current</td>
                                        <td>XX.X</td>
                                        <td>A</td>
                                    </tr>
                                    <tr>
                                        <th rowspan="3">AC Output</th>
                                        <td>Vab</td>
                                        <td>XXX</td>
                                        <td>V</td>
                                        <td>Vbc</td>
                                        <td>XXX</td>
                                        <td>V</td>
                                        <td>Vca</td>
                                        <td>XXX</td>
                                        <td>V</td>
                                    </tr>
                                    <tr>
                                        <td>A Phase Current</td>
                                        <td>XX</td>
                                        <td>A</td>
                                        <td>B Phase Current</td>
                                        <td>XXX</td>
                                        <td>A</td>
                                        <td>C Phase Current</td>
                                        <td>XX</td>
                                        <td>A</td>
                                    </tr>
                                    <tr>
                                        <td>Real Power</td>
                                        <td>XXX.X</td>
                                        <td>kW</td>
                                        <td>Reactive Power</td>
                                        <td>XXX.X</td>
                                        <td>kVAr</td>
                                        <td>Power Factor</td>
                                        <td>.XX</td>
                                        <td>%</td>
                                    </tr>
                                    <tr>
                                        <th>Status</th>
                                        <td>Fault Code</td>
                                        <td>XX</td>
                                        <td></td>
                                        <td>Efficiency</td>
                                        <td>XX.X</td>
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
                                        <td id="InvertergetDCPower">XXX.X</td>
                                        <td>kW</td>
                                        <td>DC Voltage</td>
                                        <td>XXX</td>
                                        <td>V</td>
                                        <td>DC Current</td>
                                        <td>XX.X</td>
                                        <td>A</td>
                                    </tr>
                                    <tr>
                                        <th rowspan="3">AC Output</th>
                                        <td>Vab</td>
                                        <td>XXX</td>
                                        <td>V</td>
                                        <td>Vbc</td>
                                        <td>XXX</td>
                                        <td>V</td>
                                        <td>Vca</td>
                                        <td>XXX</td>
                                        <td>V</td>
                                    </tr>
                                    <tr>
                                        <td>A Phase Current</td>
                                        <td>XX</td>
                                        <td>A</td>
                                        <td>B Phase Current</td>
                                        <td>XXX</td>
                                        <td>A</td>
                                        <td>C Phase Current</td>
                                        <td>XX</td>
                                        <td>A</td>
                                    </tr>
                                    <tr>
                                        <td>Real Power</td>
                                        <td>XXX.X</td>
                                        <td>kW</td>
                                        <td>Reactive Power</td>
                                        <td>XXX.X</td>
                                        <td>kVAr</td>
                                        <td>Power Factor</td>
                                        <td>.XX</td>
                                        <td>%</td>
                                    </tr>
                                    <tr>
                                        <th>Status</th>
                                        <td>Fault Code</td>
                                        <td>XX</td>
                                        <td></td>
                                        <td>Efficiency</td>
                                        <td>XX.X</td>
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
                <th colspan="10">Inverter | 5</th>
            </tr>
            <tr>
                <th>DC Input</th>
                <td>DC Power</td>
                <td id="InvertergetDCPower">XXX.X</td>
                <td>kW</td>
                <td>DC Voltage</td>
                <td>XXX</td>
                <td>V</td>
                <td>DC Current</td>
                <td>XX.X</td>
                <td>A</td>
            </tr>
            <tr>
                <th rowspan="3">AC Output</th>
                <td>Vab</td>
                <td>XXX</td>
                <td>V</td>
                <td>Vbc</td>
                <td>XXX</td>
                <td>V</td>
                <td>Vca</td>
                <td>XXX</td>
                <td>V</td>
            </tr>
            <tr>
                <td>A Phase Current</td>
                <td>XX</td>
                <td>A</td>
                <td>B Phase Current</td>
                <td>XXX</td>
                <td>A</td>
                <td>C Phase Current</td>
                <td>XX</td>
                <td>A</td>
            </tr>
            <tr>
                <td>Real Power</td>
                <td>XXX.X</td>
                <td>kW</td>
                <td>Reactive Power</td>
                <td>XXX.X</td>
                <td>kVAr</td>
                <td>Power Factor</td>
                <td>.XX</td>
                <td>%</td>
            </tr>
            <tr>
                <th>Status</th>
                <td>Fault Code</td>
                <td>XX</td>
                <td></td>
                <td>Efficiency</td>
                <td>XX.X</td>
                <td>%</td>
                <td>Temperature</td>
                <td>XX</td>
                <td>°C</td>
            </tr>
        </table>
    </body>
</html>
