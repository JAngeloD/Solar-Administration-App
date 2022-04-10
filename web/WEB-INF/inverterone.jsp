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
    
      <title>Inverters 1 - 5</title>
   </head>
   <body>
       <nav  class="navbar navbar-expand-lg navbar-light" style="background-color: #f3f3f3;"> 
        <div class="container-fluid">
          <h1 class="left">INVERTERS 1-5</h1>
         
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button><div class="float-right box">
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul  id="navigation"class="navbar-nav me-auto mb-2 mb-lg-0">

              <li class="nav-item" id="currentPage" f>
                <a class="nav-link"  id="current" aria-current="page">1-5</a>
              </li>
             
              <li class="nav-item" id="menuButton1" f>
                <a class="nav-link active"  id="buttonMenu1" aria-current="page" href="inverterhome">INVERTERS</a>
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
    <th scope="col" colspan="10">Inverter | 01</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row" rowspan="1">DC Input</th>
         <td >DC Power</td>
                           <td id="Inverter_Get_DcRealPower01" class="realtime">XXX.X</td>
                           <td>kW</td>
                           <td>DC Voltage</td>
                           <td id="Inverter_Get_DcVolt01" class="realtime">XXX</td>
                           <td>V</td>
                           <td>DC Current</td>
                           <td id="Inverter_Get_DcCurrent01" class="realtime">XX.X</td>
                           <td>A</td>
    </tr>
    <tr>
      <th scope="row" rowspan="3">AC Output</th>
     <td>Vab</td>
                           <td id="Inverter_Get_AcOutputPhaseAbVoltage01" class="realtime">XXX</td>
                           <td>V</td>
                           <td>Vbc</td>
                           <td id="Inverter_Get_AcOutputPhaseBcVoltage01" class="realtime">XXX</td>
                           <td>V</td>
                           <td>Vca</td>
                           <td id="Inverter_Get_AcOutputPhaseCaVoltage01" class="realtime">XXX</td>
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
      <th scope="row" rowspan="1">Status</th>
    <td>Fault Code</td>
                           <td>--</td>
                           <td></td>
                           <td>Efficiency</td>
                           <td id="Inverter_Get_Efficiency01" class="realtime">XX.X</td>
                           <td>%</td>
    </tr>
  </tbody>
</table>
       
    <table id="table"class="table table-hover table-bordered ">
  <thead>
    <tr>
    <th scope="col" colspan="10">Inverter | 02</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row" rowspan="1">DC Input</th>
         <td >DC Power</td>
                           <td id="Inverter_Get_DcRealPower02" class="realtime">XXX.X</td>
                           <td>kW</td>
                           <td>DC Voltage</td>
                           <td id="Inverter_Get_DcVolt02" class="realtime">XXX</td>
                           <td>V</td>
                           <td>DC Current</td>
                           <td id="Inverter_Get_DcCurrent02" class="realtime">XX.X</td>
                           <td>A</td>
    </tr>
    <tr>
      <th scope="row" rowspan="3">AC Output</th>
     <td>Vab</td>
                           <td id="Inverter_Get_AcOutputPhaseAbVoltage02" class="realtime">XXX</td>
                           <td>V</td>
                           <td>Vbc</td>
                           <td id="Inverter_Get_AcOutputPhaseBcVoltage02" class="realtime">XXX</td>
                           <td>V</td>
                           <td>Vca</td>
                           <td id="Inverter_Get_AcOutputPhaseCaVoltage02" class="realtime">XXX</td>
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
      <th scope="row" rowspan="1">Status</th>
    <td>Fault Code</td>
                           <td>--</td>
                           <td></td>
                           <td>Efficiency</td>
                           <td id="Inverter_Get_Efficiency02" class="realtime">XX.X</td>
                           <td>%</td>
    </tr>
  </tbody>
</table>
                     
                     <table id="table"class="table table-hover table-bordered ">
  <thead>
    <tr>
    <th scope="col" colspan="10">Inverter | 03</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row" rowspan="1">DC Input</th>
         <td >DC Power</td>
                           <td id="Inverter_Get_DcRealPower03" class="realtime">XXX.X</td>
                           <td>kW</td>
                           <td>DC Voltage</td>
                           <td id="Inverter_Get_DcVolt03" class="realtime">XXX</td>
                           <td>V</td>
                           <td>DC Current</td>
                           <td id="Inverter_Get_DcCurrent03" class="realtime">XX.X</td>
                           <td>A</td>
    </tr>
    <tr>
      <th scope="row" rowspan="3">AC Output</th>
     <td>Vab</td>
                           <td id="Inverter_Get_AcOutputPhaseAbVoltage03" class="realtime">XXX</td>
                           <td>V</td>
                           <td>Vbc</td>
                           <td id="Inverter_Get_AcOutputPhaseBcVoltage03" class="realtime">XXX</td>
                           <td>V</td>
                           <td>Vca</td>
                           <td id="Inverter_Get_AcOutputPhaseCaVoltage03" class="realtime">XXX</td>
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
      <th scope="row" rowspan="1">Status</th>
    <td>Fault Code</td>
                           <td>--</td>
                           <td></td>
                           <td>Efficiency</td>
                           <td id="Inverter_Get_Efficiency03" class="realtime">XX.X</td>
                           <td>%</td>
    </tr>
  </tbody>
</table>
                     
                     
                     <table id="table"class="table table-hover table-bordered ">
  <thead>
    <tr>
    <th scope="col" colspan="10">Inverter | 04</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row" rowspan="1">DC Input</th>
         <td >DC Power</td>
                           <td id="Inverter_Get_DcRealPower04" class="realtime">XXX.X</td>
                           <td>kW</td>
                           <td>DC Voltage</td>
                           <td id="Inverter_Get_DcVolt04" class="realtime">XXX</td>
                           <td>V</td>
                           <td>DC Current</td>
                           <td id="Inverter_Get_DcCurrent04" class="realtime">XX.X</td>
                           <td>A</td>
    </tr>
    <tr>
      <th scope="row" rowspan="3">AC Output</th>
     <td>Vab</td>
                           <td id="Inverter_Get_AcOutputPhaseAbVoltage04" class="realtime">XXX</td>
                           <td>V</td>
                           <td>Vbc</td>
                           <td id="Inverter_Get_AcOutputPhaseBcVoltage04" class="realtime">XXX</td>
                           <td>V</td>
                           <td>Vca</td>
                           <td id="Inverter_Get_AcOutputPhaseCaVoltage04" class="realtime">XXX</td>
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
      <th scope="row" rowspan="1">Status</th>
    <td>Fault Code</td>
                           <td>--</td>
                           <td></td>
                           <td>Efficiency</td>
                           <td id="Inverter_Get_Efficiency04" class="realtime">XX.X</td>
                           <td>%</td>
    </tr>
  </tbody>
</table>
                     <table id="table"class="table table-hover table-bordered ">
  <thead>
    <tr>
    <th scope="col" colspan="10">Inverter | 05</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row" rowspan="1">DC Input</th>
         <td >DC Power</td>
                           <td id="Inverter_Get_DcRealPower05" class="realtime">XXX.X</td>
                           <td>kW</td>
                           <td>DC Voltage</td>
                           <td id="Inverter_Get_DcVolt05" class="realtime">XXX</td>
                           <td>V</td>
                           <td>DC Current</td>
                           <td id="Inverter_Get_DcCurrent05" class="realtime">XX.X</td>
                           <td>A</td>
    </tr>
    <tr>
      <th scope="row" rowspan="3">AC Output</th>
     <td>Vab</td>
                           <td id="Inverter_Get_AcOutputPhaseAbVoltage05" class="realtime">XXX</td>
                           <td>V</td>
                           <td>Vbc</td>
                           <td id="Inverter_Get_AcOutputPhaseBcVoltage05" class="realtime">XXX</td>
                           <td>V</td>
                           <td>Vca</td>
                           <td id="Inverter_Get_AcOutputPhaseCaVoltage05" class="realtime">XXX</td>
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
      <th scope="row" rowspan="1">Status</th>
    <td>Fault Code</td>
                           <td>--</td>
                           <td></td>
                           <td>Efficiency</td>
                           <td id="Inverter_Get_Efficiency05" class="realtime">XX.X</td>
                           <td>%</td>
    </tr>
  </tbody>
</table>
       
       
       
                 </div>
                 
                </div>
   </body>
</html>