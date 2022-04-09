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
    
      <title>Inverters 11-15</title>
   </head>
   <body>
       <nav  class="navbar navbar-expand-lg navbar-light" style="background-color: #f3f3f3;"> 
        <div class="container-fluid">
          <h1 class="left">INVERTERS 11-15</h1>
         
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button><div class="float-right box">
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul  id="navigation"class="navbar-nav me-auto mb-2 mb-lg-0">

              <li class="nav-item" id="currentPage" f>
                <a class="nav-link"  id="current" aria-current="page">11-15</a>
              </li>
             
              <li class="nav-item" id="menuButton1" f>
                <a class="nav-link active"  id="buttonMenu1" aria-current="page" href="inverterhome">Inverters</a>
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

                 <div id="data" >
      
               <table id="table"class="table table-hover table-bordered ">
  <thead>
    <tr>
    <th scope="col" colspan="10">Inverter | 11</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row" rowspan="1">DC Input</th>
         <td >DC Power</td>
                           <td id="Inverter_Get_DcRealPower11" class="realtime">XXX.X</td>
                           <td>kW</td>
                           <td>DC Voltage</td>
                           <td id="Inverter_Get_DcVolt11" class="realtime">XXX</td>
                           <td>V</td>
                           <td>DC Current</td>
                           <td id="Inverter_Get_DcCurrent11" class="realtime">XX.X</td>
                           <td>A</td>
    </tr>
    <tr>
      <th scope="row" rowspan="3">AC Output</th>
     <td>Vab</td>
                           <td id="Inverter_Get_AcOutputPhaseAbVoltage11" class="realtime">XXX</td>
                           <td>V</td>
                           <td>Vbc</td>
                           <td id="Inverter_Get_AcOutputPhaseBcVoltage11" class="realtime">XXX</td>
                           <td>V</td>
                           <td>Vca</td>
                           <td id="Inverter_Get_AcOutputPhaseCaVoltage11" class="realtime">XXX</td>
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
      <th scope="row" rowspan="1">Status</th>
    <td>Fault Code</td>
                           <td>--</td>
                           <td></td>
                           <td>Efficiency</td>
                           <td id="Inverter_Get_Efficiency11" class="realtime">XX.X</td>
                           <td>%</td>
    </tr>
  </tbody>
</table>
       
    <table id="table"class="table table-hover table-bordered ">
  <thead>
    <tr>
    <th scope="col" colspan="10">Inverter | 12</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row" rowspan="1">DC Input</th>
         <td >DC Power</td>
                           <td id="Inverter_Get_DcRealPower12" class="realtime">XXX.X</td>
                           <td>kW</td>
                           <td>DC Voltage</td>
                           <td id="Inverter_Get_DcVolt12" class="realtime">XXX</td>
                           <td>V</td>
                           <td>DC Current</td>
                           <td id="Inverter_Get_DcCurrent12" class="realtime">XX.X</td>
                           <td>A</td>
    </tr>
    <tr>
      <th scope="row" rowspan="3">AC Output</th>
     <td>Vab</td>
                           <td id="Inverter_Get_AcOutputPhaseAbVoltage12" class="realtime">XXX</td>
                           <td>V</td>
                           <td>Vbc</td>
                           <td id="Inverter_Get_AcOutputPhaseBcVoltage12" class="realtime">XXX</td>
                           <td>V</td>
                           <td>Vca</td>
                           <td id="Inverter_Get_AcOutputPhaseCaVoltage12" class="realtime">XXX</td>
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
      <th scope="row" rowspan="1">Status</th>
    <td>Fault Code</td>
                           <td>--</td>
                           <td></td>
                           <td>Efficiency</td>
                           <td id="Inverter_Get_Efficiency12" class="realtime">XX.X</td>
                           <td>%</td>
    </tr>
  </tbody>
</table>
                     
                     <table id="table"class="table table-hover table-bordered ">
  <thead>
    <tr>
    <th scope="col" colspan="10">Inverter | 13</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row" rowspan="1">DC Input</th>
         <td >DC Power</td>
                           <td id="Inverter_Get_DcRealPower13" class="realtime">XXX.X</td>
                           <td>kW</td>
                           <td>DC Voltage</td>
                           <td id="Inverter_Get_DcVolt13" class="realtime">XXX</td>
                           <td>V</td>
                           <td>DC Current</td>
                           <td id="Inverter_Get_DcCurrent13" class="realtime">XX.X</td>
                           <td>A</td>
    </tr>
    <tr>
      <th scope="row" rowspan="3">AC Output</th>
     <td>Vab</td>
                           <td id="Inverter_Get_AcOutputPhaseAbVoltage13" class="realtime">XXX</td>
                           <td>V</td>
                           <td>Vbc</td>
                           <td id="Inverter_Get_AcOutputPhaseBcVoltage13" class="realtime">XXX</td>
                           <td>V</td>
                           <td>Vca</td>
                           <td id="Inverter_Get_AcOutputPhaseCaVoltage13" class="realtime">XXX</td>
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
      <th scope="row" rowspan="1">Status</th>
    <td>Fault Code</td>
                           <td>--</td>
                           <td></td>
                           <td>Efficiency</td>
                           <td id="Inverter_Get_Efficiency13" class="realtime">XX.X</td>
                           <td>%</td>
    </tr>
  </tbody>
</table>
                     
                     
                     <table id="table"class="table table-hover table-bordered ">
  <thead>
    <tr>
    <th scope="col" colspan="10">Inverter | 14</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row" rowspan="1">DC Input</th>
         <td >DC Power</td>
                           <td id="Inverter_Get_DcRealPower14" class="realtime">XXX.X</td>
                           <td>kW</td>
                           <td>DC Voltage</td>
                           <td id="Inverter_Get_DcVolt14" class="realtime">XXX</td>
                           <td>V</td>
                           <td>DC Current</td>
                           <td id="Inverter_Get_DcCurrent14" class="realtime">XX.X</td>
                           <td>A</td>
    </tr>
    <tr>
      <th scope="row" rowspan="3">AC Output</th>
     <td>Vab</td>
                           <td id="Inverter_Get_AcOutputPhaseAbVoltage14" class="realtime">XXX</td>
                           <td>V</td>
                           <td>Vbc</td>
                           <td id="Inverter_Get_AcOutputPhaseBcVoltage14" class="realtime">XXX</td>
                           <td>V</td>
                           <td>Vca</td>
                           <td id="Inverter_Get_AcOutputPhaseCaVoltage14" class="realtime">XXX</td>
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
      <th scope="row" rowspan="1">Status</th>
    <td>Fault Code</td>
                           <td>--</td>
                           <td></td>
                           <td>Efficiency</td>
                           <td id="Inverter_Get_Efficiency14" class="realtime">XX.X</td>
                           <td>%</td>
    </tr>
  </tbody>
</table>
                     <table id="table"class="table table-hover table-bordered ">
  <thead>
    <tr>
    <th scope="col" colspan="10">Inverter | 15</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row" rowspan="1">DC Input</th>
         <td >DC Power</td>
                           <td id="Inverter_Get_DcRealPower15" class="realtime">XXX.X</td>
                           <td>kW</td>
                           <td>DC Voltage</td>
                           <td id="Inverter_Get_DcVolt15" class="realtime">XXX</td>
                           <td>V</td>
                           <td>DC Current</td>
                           <td id="Inverter_Get_DcCurrent15" class="realtime">XX.X</td>
                           <td>A</td>
    </tr>
    <tr>
      <th scope="row" rowspan="3">AC Output</th>
     <td>Vab</td>
                           <td id="Inverter_Get_AcOutputPhaseAbVoltage15" class="realtime">XXX</td>
                           <td>V</td>
                           <td>Vbc</td>
                           <td id="Inverter_Get_AcOutputPhaseBcVoltage15" class="realtime">XXX</td>
                           <td>V</td>
                           <td>Vca</td>
                           <td id="Inverter_Get_AcOutputPhaseCaVoltage15" class="realtime">XXX</td>
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
      <th scope="row" rowspan="1">Status</th>
    <td>Fault Code</td>
                           <td>--</td>
                           <td></td>
                           <td>Efficiency</td>
                           <td id="Inverter_Get_Efficiency15" class="realtime">XX.X</td>
                           <td>%</td>
    </tr>
  </tbody>
</table>
       
       
       
                 </div>
                 
                </div>
   </body>
</html>