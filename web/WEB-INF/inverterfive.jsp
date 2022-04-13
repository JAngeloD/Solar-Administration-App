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
<!--              <style><%@include file="/WEB-INF/css/bootstrap.min.css"%></style>
<script src="javascript/bootstrap.bundle.min.js"></script>-->
        <title>Inverters 21-25</title>
    </head>
    <body>
        <nav  class="navbar navbar-expand-lg navbar-light" style="background-color: #f3f3f3;"> 
            <div class="container-fluid">
                <h1 class="left">INVERTERS 21-25</h1>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="float-right box">
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul  id="navigation"class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item" id="currentPage" f>
                                <a class="nav-link"  id="current" aria-current="page">21-25</a>
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
                        </ul>
                    </div>
                </div>                
            </div>        
        </nav>
        <div class="wrapall" id="electricDiagram">
            <div id="data" >
                <table id="table"class="table table-hover table-bordered ">
                    <thead>
                        <tr>
                            <th scope="col" colspan="10">Inverter | 21</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row" rowspan="1">DC Input</th>
                            <td >DC Power</td>
                            <td id="Inverter_Get_DcRealPower21" class="realtime">XXX.X</td>
                            <td>kW</td>
                            <td>DC Voltage</td>
                            <td id="Inverter_Get_DcVolt21" class="realtime">XXX</td>
                            <td>V</td>
                            <td>DC Current</td>
                            <td id="Inverter_Get_DcCurrent21" class="realtime">XX.X</td>
                            <td>A</td>
                        </tr>
                        <tr>
                            <th scope="row" rowspan="3">AC Output</th>
                            <td>Vab</td>
                            <td id="Inverter_Get_AcOutputPhaseAbVoltage21" class="realtime">XXX</td>
                            <td>V</td>
                            <td>Vbc</td>
                            <td id="Inverter_Get_AcOutputPhaseBcVoltage21" class="realtime">XXX</td>
                            <td>V</td>
                            <td>Vca</td>
                            <td id="Inverter_Get_AcOutputPhaseCaVoltage21" class="realtime">XXX</td>
                            <td>V</td>
                        </tr>
                        <tr>
                            <td>A Phase Current</td>
                            <td id="Inverter_Get_AcOutputPhaseACurrent21" class="realtime">XX</td>
                            <td>A</td>
                            <td>B Phase Current</td>
                            <td id="Inverter_Get_AcOutputPhaseBCurrent21" class="realtime">XXX</td>
                            <td>A</td>
                            <td>C Phase Current</td>
                            <td id="Inverter_Get_AcOutputPhaseCCurrent21" class="realtime">XX</td>
                            <td>A</td>
                        </tr>
                        <tr>
                            <td>Real Power</td>
                            <td id="Inverter_Get_AcOutputRealPower21" class="realtime">XXX.X</td>
                            <td>kW</td>
                            <td>Reactive Power</td>
                            <td id="Inverter_Get_AcOutputReactivePower21" class="realtime">XXX.X</td>
                            <td>kVAr</td>
                            <td>Power Factor</td>
                            <td id="Inverter_Get_AcOutputPowerFactor21" class="realtime">.XX</td>
                            <td>%</td>
                        </tr>
                        <tr>
                            <th scope="row" rowspan="1">Status</th>
                            <td>Fault Code</td>
                            <td>--</td>
                            <td></td>
                            <td>Efficiency</td>
                            <td id="Inverter_Get_Efficiency21" class="realtime">XX.X</td>
                            <td>%</td>
                        </tr>
                    </tbody>
                </table>
                <table id="table"class="table table-hover table-bordered ">
                    <thead>
                        <tr>
                            <th scope="col" colspan="10">Inverter | 22</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row" rowspan="1">DC Input</th>
                            <td >DC Power</td>
                            <td id="Inverter_Get_DcRealPower22" class="realtime">XXX.X</td>
                            <td>kW</td>
                            <td>DC Voltage</td>
                            <td id="Inverter_Get_DcVolt22" class="realtime">XXX</td>
                            <td>V</td>
                            <td>DC Current</td>
                            <td id="Inverter_Get_DcCurrent22" class="realtime">XX.X</td>
                            <td>A</td>
                        </tr>
                        <tr>
                            <th scope="row" rowspan="3">AC Output</th>
                            <td>Vab</td>
                            <td id="Inverter_Get_AcOutputPhaseAbVoltage22" class="realtime">XXX</td>
                            <td>V</td>
                            <td>Vbc</td>
                            <td id="Inverter_Get_AcOutputPhaseBcVoltage22" class="realtime">XXX</td>
                            <td>V</td>
                            <td>Vca</td>
                            <td id="Inverter_Get_AcOutputPhaseCaVoltage22" class="realtime">XXX</td>
                            <td>V</td>
                        </tr>
                        <tr>
                            <td>A Phase Current</td>
                            <td id="Inverter_Get_AcOutputPhaseACurrent22" class="realtime">XX</td>
                            <td>A</td>
                            <td>B Phase Current</td>
                            <td id="Inverter_Get_AcOutputPhaseBCurrent22" class="realtime">XXX</td>
                            <td>A</td>
                            <td>C Phase Current</td>
                            <td id="Inverter_Get_AcOutputPhaseCCurrent22" class="realtime">XX</td>
                            <td>A</td>
                        </tr>
                        <tr>
                            <td>Real Power</td>
                            <td id="Inverter_Get_AcOutputRealPower22" class="realtime">XXX.X</td>
                            <td>kW</td>
                            <td>Reactive Power</td>
                            <td id="Inverter_Get_AcOutputReactivePower22" class="realtime">XXX.X</td>
                            <td>kVAr</td>
                            <td>Power Factor</td>
                            <td id="Inverter_Get_AcOutputPowerFactor22" class="realtime">.XX</td>
                            <td>%</td>
                        </tr>
                        <tr>
                            <th scope="row" rowspan="1">Status</th>
                            <td>Fault Code</td>
                            <td>--</td>
                            <td></td>
                            <td>Efficiency</td>
                            <td id="Inverter_Get_Efficiency22" class="realtime">XX.X</td>
                            <td>%</td>
                        </tr>
                    </tbody>
                </table>
                <table id="table"class="table table-hover table-bordered ">
                    <thead>
                        <tr>
                            <th scope="col" colspan="10">Inverter | 23</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row" rowspan="1">DC Input</th>
                            <td >DC Power</td>
                            <td id="Inverter_Get_DcRealPower23" class="realtime">XXX.X</td>
                            <td>kW</td>
                            <td>DC Voltage</td>
                            <td id="Inverter_Get_DcVolt23" class="realtime">XXX</td>
                            <td>V</td>
                            <td>DC Current</td>
                            <td id="Inverter_Get_DcCurrent23" class="realtime">XX.X</td>
                            <td>A</td>
                        </tr>
                        <tr>
                            <th scope="row" rowspan="3">AC Output</th>
                            <td>Vab</td>
                            <td id="Inverter_Get_AcOutputPhaseAbVoltage23" class="realtime">XXX</td>
                            <td>V</td>
                            <td>Vbc</td>
                            <td id="Inverter_Get_AcOutputPhaseBcVoltage23" class="realtime">XXX</td>
                            <td>V</td>
                            <td>Vca</td>
                            <td id="Inverter_Get_AcOutputPhaseCaVoltage23" class="realtime">XXX</td>
                            <td>V</td>
                        </tr>
                        <tr>
                            <td>A Phase Current</td>
                            <td id="Inverter_Get_AcOutputPhaseACurrent23" class="realtime">XX</td>
                            <td>A</td>
                            <td>B Phase Current</td>
                            <td id="Inverter_Get_AcOutputPhaseBCurrent23" class="realtime">XXX</td>
                            <td>A</td>
                            <td>C Phase Current</td>
                            <td id="Inverter_Get_AcOutputPhaseCCurrent23" class="realtime">XX</td>
                            <td>A</td>
                        </tr>
                        <tr>
                            <td>Real Power</td>
                            <td id="Inverter_Get_AcOutputRealPower23" class="realtime">XXX.X</td>
                            <td>kW</td>
                            <td>Reactive Power</td>
                            <td id="Inverter_Get_AcOutputReactivePower23" class="realtime">XXX.X</td>
                            <td>kVAr</td>
                            <td>Power Factor</td>
                            <td id="Inverter_Get_AcOutputPowerFactor23" class="realtime">.XX</td>
                            <td>%</td>
                        </tr>
                        <tr>
                            <th scope="row" rowspan="1">Status</th>
                            <td>Fault Code</td>
                            <td>--</td>
                            <td></td>
                            <td>Efficiency</td>
                            <td id="Inverter_Get_Efficiency23" class="realtime">XX.X</td>
                            <td>%</td>
                        </tr>
                    </tbody>
                </table>
                <table id="table"class="table table-hover table-bordered ">
                    <thead>
                        <tr>
                            <th scope="col" colspan="10">Inverter | 24</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row" rowspan="1">DC Input</th>
                            <td >DC Power</td>
                            <td id="Inverter_Get_DcRealPower24" class="realtime">XXX.X</td>
                            <td>kW</td>
                            <td>DC Voltage</td>
                            <td id="Inverter_Get_DcVolt24" class="realtime">XXX</td>
                            <td>V</td>
                            <td>DC Current</td>
                            <td id="Inverter_Get_DcCurrent24" class="realtime">XX.X</td>
                            <td>A</td>
                        </tr>
                        <tr>
                            <th scope="row" rowspan="3">AC Output</th>
                            <td>Vab</td>
                            <td id="Inverter_Get_AcOutputPhaseAbVoltage24" class="realtime">XXX</td>
                            <td>V</td>
                            <td>Vbc</td>
                            <td id="Inverter_Get_AcOutputPhaseBcVoltage24" class="realtime">XXX</td>
                            <td>V</td>
                            <td>Vca</td>
                            <td id="Inverter_Get_AcOutputPhaseCaVoltage24" class="realtime">XXX</td>
                            <td>V</td>
                        </tr>
                        <tr>
                            <td>A Phase Current</td>
                            <td id="Inverter_Get_AcOutputPhaseACurrent24" class="realtime">XX</td>
                            <td>A</td>
                            <td>B Phase Current</td>
                            <td id="Inverter_Get_AcOutputPhaseBCurrent24" class="realtime">XXX</td>
                            <td>A</td>
                            <td>C Phase Current</td>
                            <td id="Inverter_Get_AcOutputPhaseCCurrent24" class="realtime">XX</td>
                            <td>A</td>
                        </tr>
                        <tr>
                            <td>Real Power</td>
                            <td id="Inverter_Get_AcOutputRealPower24" class="realtime">XXX.X</td>
                            <td>kW</td>
                            <td>Reactive Power</td>
                            <td id="Inverter_Get_AcOutputReactivePower24" class="realtime">XXX.X</td>
                            <td>kVAr</td>
                            <td>Power Factor</td>
                            <td id="Inverter_Get_AcOutputPowerFactor24" class="realtime">.XX</td>
                            <td>%</td>
                        </tr>
                        <tr>
                            <th scope="row" rowspan="1">Status</th>
                            <td>Fault Code</td>
                            <td>--</td>
                            <td></td>
                            <td>Efficiency</td>
                            <td id="Inverter_Get_Efficiency24" class="realtime">XX.X</td>
                            <td>%</td>
                        </tr>
                    </tbody>
                </table>
                <table id="table"class="table table-hover table-bordered ">
                    <thead>
                        <tr>
                            <th scope="col" colspan="10">Inverter | 25</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row" rowspan="1">DC Input</th>
                            <td >DC Power</td>
                            <td id="Inverter_Get_DcRealPower25" class="realtime">XXX.X</td>
                            <td>kW</td>
                            <td>DC Voltage</td>
                            <td id="Inverter_Get_DcVolt25" class="realtime">XXX</td>
                            <td>V</td>
                            <td>DC Current</td>
                            <td id="Inverter_Get_DcCurrent25" class="realtime">XX.X</td>
                            <td>A</td>
                        </tr>
                        <tr>
                            <th scope="row" rowspan="3">AC Output</th>
                            <td>Vab</td>
                            <td id="Inverter_Get_AcOutputPhaseAbVoltage25" class="realtime">XXX</td>
                            <td>V</td>
                            <td>Vbc</td>
                            <td id="Inverter_Get_AcOutputPhaseBcVoltage25" class="realtime">XXX</td>
                            <td>V</td>
                            <td>Vca</td>
                            <td id="Inverter_Get_AcOutputPhaseCaVoltage25" class="realtime">XXX</td>
                            <td>V</td>
                        </tr>
                        <tr>
                            <td>A Phase Current</td>
                            <td id="Inverter_Get_AcOutputPhaseACurrent25" class="realtime">XX</td>
                            <td>A</td>
                            <td>B Phase Current</td>
                            <td id="Inverter_Get_AcOutputPhaseBCurrent25" class="realtime">XXX</td>
                            <td>A</td>
                            <td>C Phase Current</td>
                            <td id="Inverter_Get_AcOutputPhaseCCurrent25" class="realtime">XX</td>
                            <td>A</td>
                        </tr>
                        <tr>
                            <td>Real Power</td>
                            <td id="Inverter_Get_AcOutputRealPower25" class="realtime">XXX.X</td>
                            <td>kW</td>
                            <td>Reactive Power</td>
                            <td id="Inverter_Get_AcOutputReactivePower25" class="realtime">XXX.X</td>
                            <td>kVAr</td>
                            <td>Power Factor</td>
                            <td id="Inverter_Get_AcOutputPowerFactor25" class="realtime">.XX</td>
                            <td>%</td>
                        </tr>
                        <tr>
                            <th scope="row" rowspan="1">Status</th>
                            <td>Fault Code</td>
                            <td>--</td>
                            <td></td>
                            <td>Efficiency</td>
                            <td id="Inverter_Get_Efficiency25" class="realtime">XX.X</td>
                            <td>%</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
   </body>
</html>