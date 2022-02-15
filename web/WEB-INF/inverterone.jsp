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
                                            <th colspan="10">Inverter | 1</th>
                                        </tr>
                                        <tr>
                                            <th>DC Input</th>
                                            <td>DC Power</td>
                                            <td id="InvertergetDcRealPower1">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="InvertergetDcVolts1">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="InvertergetDcCurrent1">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="InvertergetAcOutputPhaseABVoltage1">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="InvertergetAcOutputPhaseBCVoltage1">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="InvertergetAcOutputPhaseCAVoltage1">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseACurrent1">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseBCurrent1">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseCCurrent1">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="InvertergetAcOutputRealPower1">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="InvertergetAcOutputReactivePower1">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="InvertergetAcOutputPowerFactor1">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="InvertergetEfficiency1">XX.X</td>
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
                                            <td id="InvertergetDcRealPower6">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="InvertergetDcVolts6">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="InvertergetDcCurrent6">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="InvertergetAcOutputPhaseABVoltage6">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="InvertergetAcOutputPhaseBCVoltage6">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="InvertergetAcOutputPhaseCAVoltage6">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseACurrent6">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseBCurrent6">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseCCurrent6">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="InvertergetAcOutputRealPower6">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="InvertergetAcOutputReactivePower6">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="InvertergetAcOutputPowerFactor6">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="InvertergetEfficiency6">XX.X</td>
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
                                            <td id="InvertergetDcRealPower2">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="InvertergetDcVolts2">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="InvertergetDcCurrent2">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="InvertergetAcOutputPhaseABVoltage2">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="InvertergetAcOutputPhaseBCVoltage2">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="InvertergetAcOutputPhaseCAVoltage2">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseACurrent2">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseBCurrent2">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseCCurrent2">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="InvertergetAcOutputRealPower2">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="InvertergetAcOutputReactivePower2">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="InvertergetAcOutputPowerFactor2">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="InvertergetEfficiency2">XX.X</td>
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
                                            <td id="InvertergetDcRealPower7">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="InvertergetDcVolts7">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="InvertergetDcCurrent7">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="InvertergetAcOutputPhaseABVoltage7">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="InvertergetAcOutputPhaseBCVoltage7">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="InvertergetAcOutputPhaseCAVoltage7">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseACurrent7">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseBCurrent7">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseCCurrent7">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="InvertergetAcOutputRealPower7">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="InvertergetAcOutputReactivePower7">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="InvertergetAcOutputPowerFactor7">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="InvertergetEfficiency7">XX.X</td>
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
                                            <td id="InvertergetDcRealPower3">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="InvertergetDcVolts3">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="InvertergetDcCurrent3">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="InvertergetAcOutputPhaseABVoltage3">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="InvertergetAcOutputPhaseBCVoltage3">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="InvertergetAcOutputPhaseCAVoltage3">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseACurrent3">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseBCurrent3">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseCCurrent3">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="InvertergetAcOutputRealPower3">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="InvertergetAcOutputReactivePower3">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="InvertergetAcOutputPowerFactor3">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="InvertergetEfficiency3">XX.X</td>
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
                                            <td id="InvertergetDcRealPower8">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="InvertergetDcVolts8">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="InvertergetDcCurrent8">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="InvertergetAcOutputPhaseABVoltage8">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="InvertergetAcOutputPhaseBCVoltage8">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="InvertergetAcOutputPhaseCAVoltage8">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseACurrent8">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseBCurrent8">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseCCurrent8">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="InvertergetAcOutputRealPower8">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="InvertergetAcOutputReactivePower8">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="InvertergetAcOutputPowerFactor8">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="InvertergetEfficiency8">XX.X</td>
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
                                            <td id="InvertergetDcRealPower4">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="InvertergetDcVolts4">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="InvertergetDcCurrent4">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="InvertergetAcOutputPhaseABVoltage4">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="InvertergetAcOutputPhaseBCVoltage4">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="InvertergetAcOutputPhaseCAVoltage4">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseACurrent4">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseBCurrent4">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseCCurrent4">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="InvertergetAcOutputRealPower4">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="InvertergetAcOutputReactivePower4">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="InvertergetAcOutputPowerFactor4">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="InvertergetEfficiency4">XX.X</td>
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
                                            <td id="InvertergetDcRealPower9">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="InvertergetDcVolts9">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="InvertergetDcCurrent9">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="InvertergetAcOutputPhaseABVoltage9">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="InvertergetAcOutputPhaseBCVoltage9">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="InvertergetAcOutputPhaseCAVoltage9">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseACurrent9">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseBCurrent9">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseCCurrent9">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="InvertergetAcOutputRealPower9">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="InvertergetAcOutputReactivePower9">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="InvertergetAcOutputPowerFactor9">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="InvertergetEfficiency9">XX.X</td>
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
                    <td id="InvertergetDcRealPower5">XXX.X</td>
                    <td>kW</td>
                    <td>DC Voltage</td>
                    <td id="InvertergetDcVolts5">XXX</td>
                    <td>V</td>
                    <td>DC Current</td>
                    <td id="InvertergetDcCurrent5">XX.X</td>
                    <td>A</td>
                </tr>
                <tr>
                    <th rowspan="3">AC Output</th>
                    <td>Vab</td>
                    <td id="InvertergetAcOutputPhaseABVoltage5">XXX</td>
                    <td>V</td>
                    <td>Vbc</td>
                    <td id="InvertergetAcOutputPhaseBCVoltage5">XXX</td>
                    <td>V</td>
                    <td>Vca</td>
                    <td id="InvertergetAcOutputPhaseCAVoltage5">XXX</td>
                    <td>V</td>
                </tr>
                <tr>
                    <td>A Phase Current</td>
                    <td id="InvertergetAcOutputPhaseACurrent5">XX</td>
                    <td>A</td>
                    <td>B Phase Current</td>
                    <td id="InvertergetAcOutputPhaseBCurrent5">XXX</td>
                    <td>A</td>
                    <td>C Phase Current</td>
                    <td id="InvertergetAcOutputPhaseCCurrent5">XX</td>
                    <td>A</td>
                </tr>
                <tr>
                    <td>Real Power</td>
                    <td id="InvertergetAcOutputRealPower5">XXX.X</td>
                    <td>kW</td>
                    <td>Reactive Power</td>
                    <td id="InvertergetAcOutputReactivePower5">XXX.X</td>
                    <td>kVAr</td>
                    <td>Power Factor</td>
                    <td id="InvertergetAcOutputPowerFactor5">.XX</td>
                    <td>%</td>
                </tr>
                <tr>
                    <th>Status</th>
                    <td>Fault Code</td>
                    <td>XX</td>
                    <td></td>
                    <td>Efficiency</td>
                    <td id="InvertergetEfficiency5">XX.X</td>
                    <td>%</td>
                    <td>Temperature</td>
                    <td>XX</td>
                    <td>°C</td>
                </tr>
            </table>
        </div>
    </body>
</html>
