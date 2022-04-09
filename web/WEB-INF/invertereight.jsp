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
    
      <title>Inverters 35 - 39</title>
   </head>
   <body>
      <nav  class="navbar navbar-expand-lg navbar-light" style="background-color: #f3f3f3;"> 
        <div class="container-fluid">
          <h1 class="left">INVERTERS 35-39</h1>
         
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
                           <td>--</td>
                           <td></td>
                           <td>Efficiency</td>
                           <td id="Inverter_Get_Efficiency35" class="realtime">XX.X</td>
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
                           <td>--</td>
                           <td></td>
                           <td>Efficiency</td>
                           <td id="Inverter_Get_Efficiency36" class="realtime">XX.X</td>
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
                           <td>--</td>
                           <td></td>
                           <td>Efficiency</td>
                           <td id="Inverter_Get_Efficiency37" class="realtime">XX.X</td>
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
                           <td>--</td>
                           <td></td>
                           <td>Efficiency</td>
                           <td id="Inverter_Get_Efficiency38" class="realtime">XX.X</td>
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
                           <td>--</td>
                           <td></td>
                           <td>Efficiency</td>
                           <td id="Inverter_Get_Efficiency39" class="realtime">XX.X</td>
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