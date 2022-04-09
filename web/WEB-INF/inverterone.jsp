<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <!--        <style><%@include file="/WEB-INF//css/style.css"%></style>-->
      <style><%@include file="/WEB-INF//css/table.css"%></style>
      <style><%@include file="/WEB-INF//css/newHead.css"%></style>
      <style><%@include file="/WEB-INF//css/inverterhome.css"%></style>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
      <script src="javascript/TablesAjax.js"></script>
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    
      <title>Inverters 1 - 6</title>
   </head>
   <body>
       <nav  class="navbar navbar-expand-lg navbar-light" style="background-color: #f3f3f3;"> 
        <div class="container-fluid">
          <h1 class="left">INVERTER HOME</h1>
         
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button><div class="float-right box">
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul  id="navigation"class="navbar-nav me-auto mb-2 mb-lg-0">

              <li class="nav-item" id="currentPage" f>
                <a class="nav-link"  id="current" aria-current="page">Inverters</a>
              </li>
             
              <li class="nav-item" id="menuButton1" f>
                <a class="nav-link active"  id="buttonMenu1" aria-current="page" href="home">Home</a>
              </li>

             
       
              <li class="nav-item dropdown" id="menuButton1" >
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  Menu
                </a>
                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                  <li id="menuButton2"><a class="dropdown-item" id="buttonMenu1" href="writelog">Operator Log</a></li>
                  <li id="menuButton2"><a class="dropdown-item" id="buttonMenu1" href="readlog">Read Logs</a></li>
                  
                  <li id="menuButton2"><a class="dropdown-item" id="buttonMenu1" href="reports">Reports</a></li>
                    <li id="menuButton2"><a class="dropdown-item" id="buttonMenu1" href="inverterhome">Inverters</a></li>
                      <li id="menuButton2"><a class="dropdown-item" id="buttonMenu1" href="pccdetail">PCC</a></li>
                        <li id="menuButton2"><a class="dropdown-item" id="buttonMenu1" href="weather">Weather</a></li>
                  <li id="menuButton2"><a class="dropdown-item" id="buttonMenu1" href="useraccounts">Account</a></li>
                  <li id="menuButton2"><a class="dropdown-item"id="buttonMenu1" href="login?action=logout">Logout</a></li>

                </ul>
              </li>
              </div>
              </div>
            </ul>
          </div>
        </div>
      </nav>
      <div class="wrapall" id="electricDiagram">
         <div class="center">
            <table>
               <tr>
                  <td>
                     <table>
                        <tr>
                           <th colspan="10">Inverter | 1</th>
                        </tr>
                        <tr>
                           <th>DC Input</th>
                           <td>DC Power</td>
                           <td id="Inverter_Get_DcRealPower1" class="realtime">XXX.X</td>
                           <td>kW</td>
                           <td>DC Voltage</td>
                           <td id="Inverter_Get_DcVolts1" class="realtime">XXX</td>
                           <td>V</td>
                           <td>DC Current</td>
                           <td id="Inverter_Get_DcCurrent1" class="realtime">XX.X</td>
                           <td>A</td>
                        </tr>
                        <tr>
                           <th rowspan="3">AC Output</th>
                           <td>Vab</td>
                           <td id="Inverter_Get_AcOutputPhaseABVoltage1" class="realtime">XXX</td>
                           <td>V</td>
                           <td>Vbc</td>
                           <td id="Inverter_Get_AcOutputPhaseBCVoltage1" class="realtime">XXX</td>
                           <td>V</td>
                           <td>Vca</td>
                           <td id="Inverter_Get_AcOutputPhaseCAVoltage1" class="realtime">XXX</td>
                           <td>V</td>
                        </tr>
                        <tr>
                           <td>A Phase Current</td>
                           <td id="Inverter_Get_AcOutputPhaseACurrent1" class="realtime">XX</td>
                           <td>A</td>
                           <td>B Phase Current</td>
                           <td id="Inverter_Get_AcOutputPhaseBCurrent1" class="realtime">XXX</td>
                           <td>A</td>
                           <td>C Phase Current</td>
                           <td id="Inverter_Get_AcOutputPhaseCCurrent1" class="realtime">XX</td>
                           <td>A</td>
                        </tr>
                        <tr>
                           <td>Real Power</td>
                           <td id="Inverter_Get_AcOutputRealPower1" class="realtime">XXX.X</td>
                           <td>kW</td>
                           <td>Reactive Power</td>
                           <td id="Inverter_Get_AcOutputReactivePower1" class="realtime">XXX.X</td>
                           <td>kVAr</td>
                           <td>Power Factor</td>
                           <td id="Inverter_Get_AcOutputPowerFactor1" class="realtime">.XX</td>
                           <td>%</td>
                        </tr>
                        <tr>
                           <th>Status</th>
                           <td>Fault Code</td>
                           <td>--</td>
                           <td></td>
                           <td>Efficiency</td>
                           <td id="Inverter_Get_Efficiency1" class="realtime">XX.X</td>
                           <td>%</td>
                        </tr>
                     </table>
                  </td>
               </tr>
            </table>
            <table>
               <tr>
                  <td>
                     <table>
                        <tr>
                           <th colspan="10">Inverter | 2</th>
                        </tr>
                        <tr>
                           <th>DC Input</th>
                           <td>DC Power</td>
                           <td id="Inverter_Get_DcRealPower2" class="realtime">XXX.X</td>
                           <td>kW</td>
                           <td>DC Voltage</td>
                           <td id="Inverter_Get_DcVolts2" class="realtime">XXX</td>
                           <td>V</td>
                           <td>DC Current</td>
                           <td id="Inverter_Get_DcCurrent2" class="realtime">XX.X</td>
                           <td>A</td>
                        </tr>
                        <tr>
                           <th rowspan="3">AC Output</th>
                           <td>Vab</td>
                           <td id="Inverter_Get_AcOutputPhaseABVoltage2" class="realtime">XXX</td>
                           <td>V</td>
                           <td>Vbc</td>
                           <td id="Inverter_Get_AcOutputPhaseBCVoltage2" class="realtime">XXX</td>
                           <td>V</td>
                           <td>Vca</td>
                           <td id="Inverter_Get_AcOutputPhaseCAVoltage2" class="realtime">XXX</td>
                           <td>V</td>
                        </tr>
                        <tr>
                           <td>A Phase Current</td>
                           <td id="Inverter_Get_AcOutputPhaseACurrent2" class="realtime">XX</td>
                           <td>A</td>
                           <td>B Phase Current</td>
                           <td id="Inverter_Get_AcOutputPhaseBCurrent2" class="realtime">XXX</td>
                           <td>A</td>
                           <td>C Phase Current</td>
                           <td id="Inverter_Get_AcOutputPhaseCCurrent2" class="realtime">XX</td>
                           <td>A</td>
                        </tr>
                        <tr>
                           <td>Real Power</td>
                           <td id="Inverter_Get_AcOutputRealPower2" class="realtime">XXX.X</td>
                           <td>kW</td>
                           <td>Reactive Power</td>
                           <td id="Inverter_Get_AcOutputReactivePower2" class="realtime">XXX.X</td>
                           <td>kVAr</td>
                           <td>Power Factor</td>
                           <td id="Inverter_Get_AcOutputPowerFactor2" class="realtime">.XX</td>
                           <td>%</td>
                        </tr>
                        <tr>
                           <th>Status</th>
                           <td>Fault Code</td>
                           <td>--</td>
                           <td></td>
                           <td>Efficiency</td>
                           <td id="Inverter_Get_Efficiency2" class="realtime">XX.X</td>
                           <td>%</td>
                        </tr>
                     </table>
                  </td>
               </tr>
            </table>
            <table>
               <tr>
                  <td>
                     <table>
                        <tr>
                           <th colspan="10">Inverter | 3</th>
                        </tr>
                        <tr>
                           <th>DC Input</th>
                           <td>DC Power</td>
                           <td id="Inverter_Get_DcRealPower3" class="realtime">XXX.X</td>
                           <td>kW</td>
                           <td>DC Voltage</td>
                           <td id="Inverter_Get_DcVolts3" class="realtime">XXX</td>
                           <td>V</td>
                           <td>DC Current</td>
                           <td id="Inverter_Get_DcCurrent3" class="realtime">XX.X</td>
                           <td>A</td>
                        </tr>
                        <tr>
                           <th rowspan="3">AC Output</th>
                           <td>Vab</td>
                           <td id="Inverter_Get_AcOutputPhaseABVoltage3" class="realtime">XXX</td>
                           <td>V</td>
                           <td>Vbc</td>
                           <td id="Inverter_Get_AcOutputPhaseBCVoltage3" class="realtime">XXX</td>
                           <td>V</td>
                           <td>Vca</td>
                           <td id="Inverter_Get_AcOutputPhaseCAVoltage3" class="realtime">XXX</td>
                           <td>V</td>
                        </tr>
                        <tr>
                           <td>A Phase Current</td>
                           <td id="Inverter_Get_AcOutputPhaseACurrent3" class="realtime">XX</td>
                           <td>A</td>
                           <td>B Phase Current</td>
                           <td id="Inverter_Get_AcOutputPhaseBCurrent3" class="realtime">XXX</td>
                           <td>A</td>
                           <td>C Phase Current</td>
                           <td id="Inverter_Get_AcOutputPhaseCCurrent3" class="realtime">XX</td>
                           <td>A</td>
                        </tr>
                        <tr>
                           <td>Real Power</td>
                           <td id="Inverter_Get_AcOutputRealPower3" class="realtime">XXX.X</td>
                           <td>kW</td>
                           <td>Reactive Power</td>
                           <td id="Inverter_Get_AcOutputReactivePower3" class="realtime">XXX.X</td>
                           <td>kVAr</td>
                           <td>Power Factor</td>
                           <td id="Inverter_Get_AcOutputPowerFactor3" class="realtime">.XX</td>
                           <td>%</td>
                        </tr>
                        <tr>
                           <th>Status</th>
                           <td>Fault Code</td>
                           <td>--</td>
                           <td></td>
                           <td>Efficiency</td>
                           <td id="Inverter_Get_Efficiency3" class="realtime">XX.X</td>
                           <td>%</td>
                        </tr>
                     </table>
                  </td>
               </tr>
            </table>
            <table>
               <tr>
                  <td>
                     <table>
                        <tr>
                           <th colspan="10">Inverter | 4</th>
                        </tr>
                        <tr>
                           <th>DC Input</th>
                           <td>DC Power</td>
                           <td id="Inverter_Get_DcRealPower4" class="realtime">XXX.X</td>
                           <td>kW</td>
                           <td>DC Voltage</td>
                           <td id="Inverter_Get_DcVolts4" class="realtime">XXX</td>
                           <td>V</td>
                           <td>DC Current</td>
                           <td id="Inverter_Get_DcCurrent4" class="realtime">XX.X</td>
                           <td>A</td>
                        </tr>
                        <tr>
                           <th rowspan="3">AC Output</th>
                           <td>Vab</td>
                           <td id="Inverter_Get_AcOutputPhaseABVoltage4" class="realtime">XXX</td>
                           <td>V</td>
                           <td>Vbc</td>
                           <td id="Inverter_Get_AcOutputPhaseBCVoltage4" class="realtime">XXX</td>
                           <td>V</td>
                           <td>Vca</td>
                           <td id="Inverter_Get_AcOutputPhaseCAVoltage4" class="realtime">XXX</td>
                           <td>V</td>
                        </tr>
                        <tr>
                           <td>A Phase Current</td>
                           <td id="Inverter_Get_AcOutputPhaseACurrent4" class="realtime">XX</td>
                           <td>A</td>
                           <td>B Phase Current</td>
                           <td id="Inverter_Get_AcOutputPhaseBCurrent4" class="realtime">XXX</td>
                           <td>A</td>
                           <td>C Phase Current</td>
                           <td id="Inverter_Get_AcOutputPhaseCCurrent4" class="realtime">XX</td>
                           <td>A</td>
                        </tr>
                        <tr>
                           <td>Real Power</td>
                           <td id="Inverter_Get_AcOutputRealPower4" class="realtime">XXX.X</td>
                           <td>kW</td>
                           <td>Reactive Power</td>
                           <td id="Inverter_Get_AcOutputReactivePower4" class="realtime">XXX.X</td>
                           <td>kVAr</td>
                           <td>Power Factor</td>
                           <td id="Inverter_Get_AcOutputPowerFactor4" class="realtime">.XX</td>
                           <td>%</td>
                        </tr>
                        <tr>
                           <th>Status</th>
                           <td>Fault Code</td>
                           <td>--</td>
                           <td></td>
                           <td>Efficiency</td>
                           <td id="Inverter_Get_Efficiency4" class="realtime">XX.X</td>
                           <td>%</td>
                        </tr>
                     </table>
                  </td>
               </tr>
            </table>
            <table>
               <tr>
                  <td>
                     <table>
                        <tr>
                           <th colspan="10">Inverter | 5</th>
                        </tr>
                        <tr>
                           <th>DC Input</th>
                           <td>DC Power</td>
                           <td id="Inverter_Get_DcRealPower5" class="realtime">XXX.X</td>
                           <td>kW</td>
                           <td>DC Voltage</td>
                           <td id="Inverter_Get_DcVolts5" class="realtime">XXX</td>
                           <td>V</td>
                           <td>DC Current</td>
                           <td id="Inverter_Get_DcCurrent5" class="realtime">XX.X</td>
                           <td>A</td>
                        </tr>
                        <tr>
                           <th rowspan="3">AC Output</th>
                           <td>Vab</td>
                           <td id="Inverter_Get_AcOutputPhaseABVoltage5" class="realtime">XXX</td>
                           <td>V</td>
                           <td>Vbc</td>
                           <td id="Inverter_Get_AcOutputPhaseBCVoltage5" class="realtime">XXX</td>
                           <td>V</td>
                           <td>Vca</td>
                           <td id="Inverter_Get_AcOutputPhaseCAVoltage5" class="realtime">XXX</td>
                           <td>V</td>
                        </tr>
                        <tr>
                           <td>A Phase Current</td>
                           <td id="Inverter_Get_AcOutputPhaseACurrent5" class="realtime">XX</td>
                           <td>A</td>
                           <td>B Phase Current</td>
                           <td id="Inverter_Get_AcOutputPhaseBCurrent5" class="realtime">XXX</td>
                           <td>A</td>
                           <td>C Phase Current</td>
                           <td id="Inverter_Get_AcOutputPhaseCCurrent5" class="realtime">XX</td>
                           <td>A</td>
                        </tr>
                        <tr>
                           <td>Real Power</td>
                           <td id="Inverter_Get_AcOutputRealPower5" class="realtime">XXX.X</td>
                           <td>kW</td>
                           <td>Reactive Power</td>
                           <td id="Inverter_Get_AcOutputReactivePower5" class="realtime">XXX.X</td>
                           <td>kVAr</td>
                           <td>Power Factor</td>
                           <td id="Inverter_Get_AcOutputPowerFactor5" class="realtime">.XX</td>
                           <td>%</td>
                        </tr>
                        <tr>
                           <th>Status</th>
                           <td>Fault Code</td>
                           <td>--</td>
                           <td></td>
                           <td>Efficiency</td>
                           <td id="Inverter_Get_Efficiency5" class="realtime">XX.X</td>
                           <td>%</td>
                        </tr>
                     </table>
                  </td>
               </tr>
            </table>
         </div>
      </div>
   </body>
</html>