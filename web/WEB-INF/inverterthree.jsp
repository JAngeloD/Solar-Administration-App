<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style><%@include file="/WEB-INF//css/style.css"%></style>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="javascript/TablesAjax.js"></script>
        <title>Inverters 20 - 29</title>
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
                                            <th colspan="10">Inverter | 20</th>
                                        </tr>
                                        <tr>
                                            <th>DC Input</th>
                                            <td>DC Power</td>
                                            <td id="InvertergetDcRealPower20" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="InvertergetDcVolts20" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="InvertergetDcCurrent20" class="realtime">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="InvertergetAcOutputPhaseABVoltage20" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="InvertergetAcOutputPhaseBCVoltage20" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="InvertergetAcOutputPhaseCAVoltage20" class="realtime">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseACurrent20" class="realtime">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseBCurrent20" class="realtime">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseCCurrent20" class="realtime">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="InvertergetAcOutputRealPower20" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="InvertergetAcOutputReactivePower20" class="realtime">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="InvertergetAcOutputPowerFactor20" class="realtime">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="InvertergetEfficiency20" class="realtime">XX.X</td>
                                            <td>%</td>
                                            <td>Temperature</td>
                                            <td>XX</td>
                                            <td>°C</td>
                                        </tr>
                                    </table></td></tr></table>
                    </td>
                    <td><table><tr><td><table>
                                        <tr>
                                            <th colspan="10">Inverter | 25</th>
                                        </tr>
                                        <tr>
                                            <th>DC Input</th>
                                            <td>DC Power</td>
                                            <td id="InvertergetDcRealPower25" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="InvertergetDcVolts25" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="InvertergetDcCurrent25" class="realtime">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="InvertergetAcOutputPhaseABVoltage25" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="InvertergetAcOutputPhaseBCVoltage25" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="InvertergetAcOutputPhaseCAVoltage25" class="realtime">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseACurrent25" class="realtime">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseBCurrent25" class="realtime">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseCCurrent25" class="realtime">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="InvertergetAcOutputRealPower25" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="InvertergetAcOutputReactivePower25" class="realtime">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="InvertergetAcOutputPowerFactor25" class="realtime">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="InvertergetEfficiency25" class="realtime">XX.X</td>
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
                                            <th colspan="10">Inverter | 21</th>
                                        </tr>
                                        <tr>
                                            <th>DC Input</th>
                                            <td>DC Power</td>
                                            <td id="InvertergetDcRealPower21" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="InvertergetDcVolts21" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="InvertergetDcCurrent21" class="realtime">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="InvertergetAcOutputPhaseABVoltage21" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="InvertergetAcOutputPhaseBCVoltage21" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="InvertergetAcOutputPhaseCAVoltage21" class="realtime">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseACurrent21" class="realtime">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseBCurrent21" class="realtime">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseCCurrent21" class="realtime">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="InvertergetAcOutputRealPower21" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="InvertergetAcOutputReactivePower21" class="realtime">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="InvertergetAcOutputPowerFactor21" class="realtime">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="InvertergetEfficiency21" class="realtime">XX.X</td>
                                            <td>%</td>
                                            <td>Temperature</td>
                                            <td>XX</td>
                                            <td>°C</td>
                                        </tr>
                                    </table></td></tr></table>
                    </td>
                    <td><table><tr><td><table>
                                        <tr>
                                            <th colspan="10">Inverter | 26</th>
                                        </tr>
                                        <tr>
                                            <th>DC Input</th>
                                            <td>DC Power</td>
                                            <td id="InvertergetDcRealPower26" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="InvertergetDcVolts26" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="InvertergetDcCurrent26" class="realtime">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="InvertergetAcOutputPhaseABVoltage26" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="InvertergetAcOutputPhaseBCVoltage26" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="InvertergetAcOutputPhaseCAVoltage26" class="realtime">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseACurrent26" class="realtime">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseBCurrent26" class="realtime">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseCCurrent26" class="realtime">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="InvertergetAcOutputRealPower26" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="InvertergetAcOutputReactivePower26" class="realtime">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="InvertergetAcOutputPowerFactor26" class="realtime">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="InvertergetEfficiency26" class="realtime">XX.X</td>
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
                                            <th colspan="10">Inverter | 22</th>
                                        </tr>
                                        <tr>
                                            <th>DC Input</th>
                                            <td>DC Power</td>
                                            <td id="InvertergetDcRealPower22" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="InvertergetDcVolts22" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="InvertergetDcCurrent22" class="realtime">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="InvertergetAcOutputPhaseABVoltage22" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="InvertergetAcOutputPhaseBCVoltage22" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="InvertergetAcOutputPhaseCAVoltage22" class="realtime">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseACurrent22" class="realtime">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseBCurrent22" class="realtime">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseCCurrent22" class="realtime">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="InvertergetAcOutputRealPower22" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="InvertergetAcOutputReactivePower22" class="realtime">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="InvertergetAcOutputPowerFactor22" class="realtime">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="InvertergetEfficiency22" class="realtime">XX.X</td>
                                            <td>%</td>
                                            <td>Temperature</td>
                                            <td>XX</td>
                                            <td>°C</td>
                                        </tr>
                                    </table></td></tr></table>
                    </td>
                    <td><table><tr><td><table>
                                        <tr>
                                            <th colspan="10">Inverter | 27</th>
                                        </tr>
                                        <tr>
                                            <th>DC Input</th>
                                            <td>DC Power</td>
                                            <td id="InvertergetDcRealPower27" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="InvertergetDcVolts27" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="InvertergetDcCurrent27" class="realtime">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="InvertergetAcOutputPhaseABVoltage27" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="InvertergetAcOutputPhaseBCVoltage27" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="InvertergetAcOutputPhaseCAVoltage27" class="realtime">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseACurrent27" class="realtime">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseBCurrent27" class="realtime">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseCCurrent27" class="realtime">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="InvertergetAcOutputRealPower27" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="InvertergetAcOutputReactivePower27" class="realtime">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="InvertergetAcOutputPowerFactor27" class="realtime">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="InvertergetEfficiency27" class="realtime">XX.X</td>
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
                                            <th colspan="10">Inverter | 23</th>
                                        </tr>
                                        <tr>
                                            <th>DC Input</th>
                                            <td>DC Power</td>
                                            <td id="InvertergetDcRealPower23" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="InvertergetDcVolts23" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="InvertergetDcCurrent23" class="realtime">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="InvertergetAcOutputPhaseABVoltage23" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="InvertergetAcOutputPhaseBCVoltage23" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="InvertergetAcOutputPhaseCAVoltage23" class="realtime">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseACurrent23" class="realtime">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseBCurrent23" class="realtime">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseCCurrent23" class="realtime">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="InvertergetAcOutputRealPower23" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="InvertergetAcOutputReactivePower23" class="realtime">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="InvertergetAcOutputPowerFactor23" class="realtime">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="InvertergetEfficiency23" class="realtime">XX.X</td>
                                            <td>%</td>
                                            <td>Temperature</td>
                                            <td>XX</td>
                                            <td>°C</td>
                                        </tr>
                                    </table></td></tr></table>
                    </td>
                    <td><table><tr><td><table>
                                        <tr>
                                            <th colspan="10">Inverter | 28</th>
                                        </tr>
                                        <tr>
                                            <th>DC Input</th>
                                            <td>DC Power</td>
                                            <td id="InvertergetDcRealPower28" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="InvertergetDcVolts28" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="InvertergetDcCurrent28" class="realtime">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="InvertergetAcOutputPhaseABVoltage28" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="InvertergetAcOutputPhaseBCVoltage28" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="InvertergetAcOutputPhaseCAVoltage28" class="realtime">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseACurrent28" class="realtime">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseBCurrent28" class="realtime">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseCCurrent28" class="realtime">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="InvertergetAcOutputRealPower28" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="InvertergetAcOutputReactivePower28" class="realtime">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="InvertergetAcOutputPowerFactor28" class="realtime">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="InvertergetEfficiency28" class="realtime">XX.X</td>
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
                                            <th colspan="10">Inverter | 24</th>
                                        </tr>
                                        <tr>
                                            <th>DC Input</th>
                                            <td>DC Power</td>
                                            <td id="InvertergetDcRealPower24" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="InvertergetDcVolts24" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="InvertergetDcCurrent24" class="realtime">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="InvertergetAcOutputPhaseABVoltage24" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="InvertergetAcOutputPhaseBCVoltage24" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="InvertergetAcOutputPhaseCAVoltage24" class="realtime">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseACurrent24" class="realtime">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseBCurrent24" class="realtime">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseCCurrent24" class="realtime">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="InvertergetAcOutputRealPower24" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="InvertergetAcOutputReactivePower24" class="realtime">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="InvertergetAcOutputPowerFactor24" class="realtime">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="InvertergetEfficiency24" class="realtime">XX.X</td>
                                            <td>%</td>
                                            <td>Temperature</td>
                                            <td>XX</td>
                                            <td>°C</td>
                                        </tr>
                                    </table></td></tr></table>
                    </td>
                    <td><table><tr><td><table>
                                        <tr>
                                            <th colspan="10">Inverter | 29</th>
                                        </tr>
                                        <tr>
                                            <th>DC Input</th>
                                            <td>DC Power</td>
                                            <td id="InvertergetDcRealPower29" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="InvertergetDcVolts29" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="InvertergetDcCurrent29" class="realtime">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="InvertergetAcOutputPhaseABVoltage29" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="InvertergetAcOutputPhaseBCVoltage29" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="InvertergetAcOutputPhaseCAVoltage29" class="realtime">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseACurrent29" class="realtime">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseBCurrent29" class="realtime">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="InvertergetAcOutputPhaseCCurrent29" class="realtime">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="InvertergetAcOutputRealPower29" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="InvertergetAcOutputReactivePower29" class="realtime">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="InvertergetAcOutputPowerFactor29" class="realtime">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="InvertergetEfficiency29" class="realtime">XX.X</td>
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
