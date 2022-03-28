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
        <title>Inverters 10 - 19</title>
    </head>
    <body>
        
       <div class="headerS">
            <ul  id="navigation" class="nav">
      
              <li class="menuButton1"><a class="buttonMenu1" href="login?action=logout">Logout</a></li>
              <li class="menuButton1"><a class="buttonMenu1" href="account">Account</a></li>
              <li class="menuButton1"><a class="buttonMenu1" href="home">Home</a></li>
                      <li class="menuButton1"><a class="buttonMenu1" href="reports">Reports</a></li>
        <li class="menuButton1"><a class="buttonMenu1" href="writelog">Operator Log</a></li>
              <li class="menuButton1"><a class="buttonMenu1" href="inverterhome">Inverter Home</a></li>
              <li class="currentPage"><a class="buttonMenu2" id="current" class="active":active >Inverters 10-19</a></li>
          
              <h1 class="left">INVERTER 10-19</h1>
            </ul>
          </div>
<div class="wrapall" id="electricDiagram">
        <div class="center">  

            <table>
                <tr>
                    <td><table>
                                        <tr>
                                            <th colspan="10">Inverter | 10</th>
                                        </tr>
                                        <tr>
                                            <th>DC Input</th>
                                            <td>DC Power</td>
                                            <td id="Inverter_Get_DcRealPower10" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="Inverter_Get_DcVolts10" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="Inverter_Get_DcCurrent10" class="realtime">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="Inverter_Get_AcOutputPhaseABVoltage10" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="Inverter_Get_AcOutputPhaseBCVoltage10" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="Inverter_Get_AcOutputPhaseCAVoltage10" class="realtime">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseACurrent10" class="realtime">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseBCurrent10" class="realtime">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseCCurrent10" class="realtime">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="Inverter_Get_AcOutputRealPower10" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="Inverter_Get_AcOutputReactivePower10" class="realtime">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="Inverter_Get_AcOutputPowerFactor10" class="realtime">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="Inverter_Get_Efficiency10" class="realtime">XX.X</td>
                                            <td>%</td>
                                            <td>Temperature</td>
                                            <td>XX</td>
                                            <td>°C</td>
                                        </tr>
                                    </table>
                    </td>
                   <td><table>
                                        <tr>
                                            <th colspan="10">Inverter | 15</th>
                                        </tr>
                                        <tr>
                                            <th>DC Input</th>
                                            <td>DC Power</td>
                                            <td id="Inverter_Get_DcRealPower15" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="Inverter_Get_DcVolts15" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="Inverter_Get_DcCurrent15" class="realtime">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="Inverter_Get_AcOutputPhaseABVoltage15" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="Inverter_Get_AcOutputPhaseBCVoltage15" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="Inverter_Get_AcOutputPhaseCAVoltage15" class="realtime">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseACurrent15" class="realtime">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseBCurrent15" class="realtime">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseCCurrent15" class="realtime">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="Inverter_Get_AcOutputRealPower15" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="Inverter_Get_AcOutputReactivePower15" class="realtime">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="Inverter_Get_AcOutputPowerFactor15" class="realtime">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="Inverter_Get_Efficiency15" class="realtime">XX.X</td>
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
                                            <th colspan="10">Inverter | 11</th>
                                        </tr>
                                        <tr>
                                            <th>DC Input</th>
                                            <td>DC Power</td>
                                            <td id="Inverter_Get_DcRealPower11" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="Inverter_Get_DcVolts11" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="Inverter_Get_DcCurrent11" class="realtime">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="Inverter_Get_AcOutputPhaseABVoltage11" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="Inverter_Get_AcOutputPhaseBCVoltage11" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="Inverter_Get_AcOutputPhaseCAVoltage11" class="realtime">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseACurrent11" class="realtime">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseBCurrent11" class="realtime">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseCCurrent11" class="realtime">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="Inverter_Get_AcOutputRealPower11" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="Inverter_Get_AcOutputReactivePower11" class="realtime">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="Inverter_Get_AcOutputPowerFactor11" class="realtime">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="Inverter_Get_Efficiency11" class="realtime">XX.X</td>
                                            <td>%</td>
                                            <td>Temperature</td>
                                            <td>XX</td>
                                            <td>°C</td>
                                        </tr>
                                   </table>
                    </td>
                   <td><table>
                                        <tr>
                                            <th colspan="10">Inverter | 16</th>
                                        </tr>
                                        <tr>
                                            <th>DC Input</th>
                                            <td>DC Power</td>
                                            <td id="Inverter_Get_DcRealPower16" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="Inverter_Get_DcVolts16" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="Inverter_Get_DcCurrent16" class="realtime">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="Inverter_Get_AcOutputPhaseABVoltage16" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="Inverter_Get_AcOutputPhaseBCVoltage16" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="Inverter_Get_AcOutputPhaseCAVoltage16" class="realtime">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseACurrent16" class="realtime">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseBCurrent16" class="realtime">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseCCurrent16" class="realtime">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="Inverter_Get_AcOutputRealPower16" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="Inverter_Get_AcOutputReactivePower16" class="realtime">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="Inverter_Get_AcOutputPowerFactor16" class="realtime">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="Inverter_Get_Efficiency16" class="realtime">XX.X</td>
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
                                            <th colspan="10">Inverter | 12</th>
                                        </tr>
                                        <tr>
                                            <th>DC Input</th>
                                            <td>DC Power</td>
                                            <td id="Inverter_Get_DcRealPower12" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="Inverter_Get_DcVolts12" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="Inverter_Get_DcCurrent12" class="realtime">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="Inverter_Get_AcOutputPhaseABVoltage12" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="Inverter_Get_AcOutputPhaseBCVoltage12" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="Inverter_Get_AcOutputPhaseCAVoltage12" class="realtime">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseACurrent12" class="realtime">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseBCurrent12" class="realtime">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseCCurrent12" class="realtime">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="Inverter_Get_AcOutputRealPower12" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="Inverter_Get_AcOutputReactivePower12" class="realtime">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="Inverter_Get_AcOutputPowerFactor12" class="realtime">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="Inverter_Get_Efficiency12" class="realtime">XX.X</td>
                                            <td>%</td>
                                            <td>Temperature</td>
                                            <td>XX</td>
                                            <td>°C</td>
                                        </tr>
                                 </table>
                    </td>
                    <td><table>
                                        <tr>
                                            <th colspan="10">Inverter | 17</th>
                                        </tr>
                                        <tr>
                                            <th>DC Input</th>
                                            <td>DC Power</td>
                                            <td id="Inverter_Get_DcRealPower17" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="Inverter_Get_DcVolts17" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="Inverter_Get_DcCurrent17" class="realtime">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="Inverter_Get_AcOutputPhaseABVoltage17" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="Inverter_Get_AcOutputPhaseBCVoltage17" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="Inverter_Get_AcOutputPhaseCAVoltage17" class="realtime">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseACurrent17" class="realtime">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseBCurrent17" class="realtime">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseCCurrent17" class="realtime">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="Inverter_Get_AcOutputRealPower17" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="Inverter_Get_AcOutputReactivePower17" class="realtime">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="Inverter_Get_AcOutputPowerFactor17" class="realtime">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="Inverter_Get_Efficiency17" class="realtime">XX.X</td>
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
                                            <th colspan="10">Inverter | 13</th>
                                        </tr>
                                        <tr>
                                            <th>DC Input</th>
                                            <td>DC Power</td>
                                            <td id="Inverter_Get_DcRealPower13" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="Inverter_Get_DcVolts13" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="Inverter_Get_DcCurrent13" class="realtime">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="Inverter_Get_AcOutputPhaseABVoltage13" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="Inverter_Get_AcOutputPhaseBCVoltage13" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="Inverter_Get_AcOutputPhaseCAVoltage13" class="realtime">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseACurrent13" class="realtime">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseBCurrent13" class="realtime">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseCCurrent13" class="realtime">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="Inverter_Get_AcOutputRealPower13" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="Inverter_Get_AcOutputReactivePower13" class="realtime">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="Inverter_Get_AcOutputPowerFactor13" class="realtime">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="Inverter_Get_Efficiency13" class="realtime">XX.X</td>
                                            <td>%</td>
                                            <td>Temperature</td>
                                            <td>XX</td>
                                            <td>°C</td>
                                        </tr>
                                  </table>
                    </td>
                   <td><table>
                                        <tr>
                                            <th colspan="10">Inverter | 18</th>
                                        </tr>
                                        <tr>
                                            <th>DC Input</th>
                                            <td>DC Power</td>
                                            <td id="Inverter_Get_DcRealPower18" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="Inverter_Get_DcVolts18" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="Inverter_Get_DcCurrent18" class="realtime">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="Inverter_Get_AcOutputPhaseABVoltage18" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="Inverter_Get_AcOutputPhaseBCVoltage18" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="Inverter_Get_AcOutputPhaseCAVoltage18" class="realtime">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseACurrent18" class="realtime">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseBCurrent18" class="realtime">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseCCurrent18" class="realtime">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="Inverter_Get_AcOutputRealPower18" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="Inverter_Get_AcOutputReactivePower18" class="realtime">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="Inverter_Get_AcOutputPowerFactor18" class="realtime">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="Inverter_Get_Efficiency18" class="realtime">XX.X</td>
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
                                            <th colspan="10">Inverter | 14</th>
                                        </tr>
                                        <tr>
                                            <th>DC Input</th>
                                            <td>DC Power</td>
                                            <td id="Inverter_Get_DcRealPower14" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="Inverter_Get_DcVolts14" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="Inverter_Get_DcCurrent14" class="realtime">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="Inverter_Get_AcOutputPhaseABVoltage14" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="Inverter_Get_AcOutputPhaseBCVoltage14" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="Inverter_Get_AcOutputPhaseCAVoltage14" class="realtime">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseACurrent14" class="realtime">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseBCurrent14" class="realtime">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseCCurrent14" class="realtime">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="Inverter_Get_AcOutputRealPower14" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="Inverter_Get_AcOutputReactivePower14" class="realtime">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="Inverter_Get_AcOutputPowerFactor14" class="realtime">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="Inverter_Get_Efficiency14" class="realtime">XX.X</td>
                                            <td>%</td>
                                            <td>Temperature</td>
                                            <td>XX</td>
                                            <td>°C</td>
                                        </tr>
                                    </table>
                    </td>
                   <td><table>
                                        <tr>
                                            <th colspan="10">Inverter | 19</th>
                                        </tr>
                                        <tr>
                                            <th>DC Input</th>
                                            <td>DC Power</td>
                                            <td id="Inverter_Get_DcRealPower19" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>DC Voltage</td>
                                            <td id="Inverter_Get_DcVolts19" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>DC Current</td>
                                            <td id="Inverter_Get_DcCurrent19" class="realtime">XX.X</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <th rowspan="3">AC Output</th>
                                            <td>Vab</td>
                                            <td id="Inverter_Get_AcOutputPhaseABVoltage19" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vbc</td>
                                            <td id="Inverter_Get_AcOutputPhaseBCVoltage19" class="realtime">XXX</td>
                                            <td>V</td>
                                            <td>Vca</td>
                                            <td id="Inverter_Get_AcOutputPhaseCAVoltage19" class="realtime">XXX</td>
                                            <td>V</td>
                                        </tr>
                                        <tr>
                                            <td>A Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseACurrent19" class="realtime">XX</td>
                                            <td>A</td>
                                            <td>B Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseBCurrent19" class="realtime">XXX</td>
                                            <td>A</td>
                                            <td>C Phase Current</td>
                                            <td id="Inverter_Get_AcOutputPhaseCCurrent19" class="realtime">XX</td>
                                            <td>A</td>
                                        </tr>
                                        <tr>
                                            <td>Real Power</td>
                                            <td id="Inverter_Get_AcOutputRealPower19" class="realtime">XXX.X</td>
                                            <td>kW</td>
                                            <td>Reactive Power</td>
                                            <td id="Inverter_Get_AcOutputReactivePower19" class="realtime">XXX.X</td>
                                            <td>kVAr</td>
                                            <td>Power Factor</td>
                                            <td id="Inverter_Get_AcOutputPowerFactor7" class="realtime">.XX</td>
                                            <td>%</td>
                                        </tr>
                                        <tr>
                                            <th>Status</th>
                                            <td>Fault Code</td>
                                            <td>XX</td>
                                            <td></td>
                                            <td>Efficiency</td>
                                            <td id="Inverter_Get_Efficiency19" class="realtime">XX.X</td>
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
