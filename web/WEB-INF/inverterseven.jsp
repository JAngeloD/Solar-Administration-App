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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha334-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha334-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-growl/1.0.0/jquery.bootstrap-growl.min.js" integrity="sha512-pBoUgBw+mK85IYWlMTSeBQ0Djx3u23anXFNQfBiIm2D8MbVT9lr+IxUccP8AMMQ6LCvgnlhUCK3ZCThaBCr8Ng==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="javascript/messageUtil.js"></script>
        <title>Inverters 31 - 35</title>
    </head>
    <body>
        <nav  class="navbar navbar-expand-lg navbar-light" style="background-color: #f3f3f3;"> 
            <div class="container-fluid">
                <h1 class="left">INVERTERS 31-35</h1>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="float-right box">
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul  id="navigation"class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item" id="currentPage" f>
                                <a class="nav-link"  id="current" aria-current="page">31-35</a>
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
                            <th scope="col" colspan="10">Inverter | 31</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row" rowspan="1">DC Input</th>
                            <td >DC Power</td>
                            <td id="Inverter_Get_DcRealPower31" class="realtime">XXX.X</td>
                            <td>kW</td>
                            <td>DC Voltage</td>
                            <td id="Inverter_Get_DcVolt31" class="realtime">XXX</td>
                            <td>V</td>
                            <td>DC Current</td>
                            <td id="Inverter_Get_DcCurrent31" class="realtime">XX.X</td>
                            <td>A</td>
                        </tr>
                        <tr>
                            <th scope="row" rowspan="3">AC Output</th>
                            <td>Vab</td>
                            <td id="Inverter_Get_AcOutputPhaseAbVoltage31" class="realtime">XXX</td>
                            <td>V</td>
                            <td>Vbc</td>
                            <td id="Inverter_Get_AcOutputPhaseBcVoltage31" class="realtime">XXX</td>
                            <td>V</td>
                            <td>Vca</td>
                            <td id="Inverter_Get_AcOutputPhaseCaVoltage31" class="realtime">XXX</td>
                            <td>V</td>
                        </tr>
                        <tr>
                            <td>A Phase Current</td>
                            <td id="Inverter_Get_AcOutputPhaseACurrent31" class="realtime">XX</td>
                            <td>A</td>
                            <td>B Phase Current</td>
                            <td id="Inverter_Get_AcOutputPhaseBCurrent31" class="realtime">XXX</td>
                            <td>A</td>
                            <td>C Phase Current</td>
                            <td id="Inverter_Get_AcOutputPhaseCCurrent31" class="realtime">XX</td>
                            <td>A</td>
                        </tr>
                        <tr>
                            <td>Real Power</td>
                            <td id="Inverter_Get_AcOutputRealPower31" class="realtime">XXX.X</td>
                            <td>kW</td>
                            <td>Reactive Power</td>
                            <td id="Inverter_Get_AcOutputReactivePower31" class="realtime">XXX.X</td>
                            <td>kVAr</td>
                            <td>Power Factor</td>
                            <td id="Inverter_Get_AcOutputPowerFactor31" class="realtime">.XX</td>
                            <td>%</td>
                        </tr>
                        <tr>
                            <th scope="row" rowspan="1">Status</th>
                            <td>Fault Code</td>
                            <td>--</td>
                            <td></td>
                            <td>Efficiency</td>
                            <td id="Inverter_Get_Efficiency31" class="realtime">XX.X</td>
                            <td>%</td>
                        </tr>
                    </tbody>
                </table>
                <table id="table"class="table table-hover table-bordered ">
                    <thead>
                        <tr>
                            <th scope="col" colspan="10">Inverter | 32</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row" rowspan="1">DC Input</th>
                            <td >DC Power</td>
                            <td id="Inverter_Get_DcRealPower32" class="realtime">XXX.X</td>
                            <td>kW</td>
                            <td>DC Voltage</td>
                            <td id="Inverter_Get_DcVolt32" class="realtime">XXX</td>
                            <td>V</td>
                            <td>DC Current</td>
                            <td id="Inverter_Get_DcCurrent32" class="realtime">XX.X</td>
                            <td>A</td>
                        </tr>
                        <tr>
                            <th scope="row" rowspan="3">AC Output</th>
                            <td>Vab</td>
                            <td id="Inverter_Get_AcOutputPhaseAbVoltage32" class="realtime">XXX</td>
                            <td>V</td>
                            <td>Vbc</td>
                            <td id="Inverter_Get_AcOutputPhaseBcVoltage32" class="realtime">XXX</td>
                            <td>V</td>
                            <td>Vca</td>
                            <td id="Inverter_Get_AcOutputPhaseCaVoltage32" class="realtime">XXX</td>
                            <td>V</td>
                        </tr>
                        <tr>
                            <td>A Phase Current</td>
                            <td id="Inverter_Get_AcOutputPhaseACurrent32" class="realtime">XX</td>
                            <td>A</td>
                            <td>B Phase Current</td>
                            <td id="Inverter_Get_AcOutputPhaseBCurrent32" class="realtime">XXX</td>
                            <td>A</td>
                            <td>C Phase Current</td>
                            <td id="Inverter_Get_AcOutputPhaseCCurrent32" class="realtime">XX</td>
                            <td>A</td>
                        </tr>
                        <tr>
                            <td>Real Power</td>
                            <td id="Inverter_Get_AcOutputRealPower32" class="realtime">XXX.X</td>
                            <td>kW</td>
                            <td>Reactive Power</td>
                            <td id="Inverter_Get_AcOutputReactivePower32" class="realtime">XXX.X</td>
                            <td>kVAr</td>
                            <td>Power Factor</td>
                            <td id="Inverter_Get_AcOutputPowerFactor32" class="realtime">.XX</td>
                            <td>%</td>
                        </tr>
                        <tr>
                            <th scope="row" rowspan="1">Status</th>
                            <td>Fault Code</td>
                            <td>--</td>
                            <td></td>
                            <td>Efficiency</td>
                            <td id="Inverter_Get_Efficiency32" class="realtime">XX.X</td>
                            <td>%</td>
                        </tr>
                    </tbody>
                </table>
                <table id="table"class="table table-hover table-bordered ">
                    <thead>
                        <tr>
                            <th scope="col" colspan="10">Inverter | 33</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row" rowspan="1">DC Input</th>
                            <td >DC Power</td>
                            <td id="Inverter_Get_DcRealPower33" class="realtime">XXX.X</td>
                            <td>kW</td>
                            <td>DC Voltage</td>
                            <td id="Inverter_Get_DcVolt33" class="realtime">XXX</td>
                            <td>V</td>
                            <td>DC Current</td>
                            <td id="Inverter_Get_DcCurrent33" class="realtime">XX.X</td>
                            <td>A</td>
                        </tr>
                        <tr>
                            <th scope="row" rowspan="3">AC Output</th>
                            <td>Vab</td>
                            <td id="Inverter_Get_AcOutputPhaseAbVoltage33" class="realtime">XXX</td>
                            <td>V</td>
                            <td>Vbc</td>
                            <td id="Inverter_Get_AcOutputPhaseBcVoltage33" class="realtime">XXX</td>
                            <td>V</td>
                            <td>Vca</td>
                            <td id="Inverter_Get_AcOutputPhaseCaVoltage33" class="realtime">XXX</td>
                            <td>V</td>
                        </tr>
                        <tr>
                            <td>A Phase Current</td>
                            <td id="Inverter_Get_AcOutputPhaseACurrent33" class="realtime">XX</td>
                            <td>A</td>
                            <td>B Phase Current</td>
                            <td id="Inverter_Get_AcOutputPhaseBCurrent33" class="realtime">XXX</td>
                            <td>A</td>
                            <td>C Phase Current</td>
                            <td id="Inverter_Get_AcOutputPhaseCCurrent33" class="realtime">XX</td>
                            <td>A</td>
                        </tr>
                        <tr>
                            <td>Real Power</td>
                            <td id="Inverter_Get_AcOutputRealPower33" class="realtime">XXX.X</td>
                            <td>kW</td>
                            <td>Reactive Power</td>
                            <td id="Inverter_Get_AcOutputReactivePower33" class="realtime">XXX.X</td>
                            <td>kVAr</td>
                            <td>Power Factor</td>
                            <td id="Inverter_Get_AcOutputPowerFactor33" class="realtime">.XX</td>
                            <td>%</td>
                        </tr>
                        <tr>
                            <th scope="row" rowspan="1">Status</th>
                            <td>Fault Code</td>
                            <td>--</td>
                            <td></td>
                            <td>Efficiency</td>
                            <td id="Inverter_Get_Efficiency33" class="realtime">XX.X</td>
                            <td>%</td>
                        </tr>
                    </tbody>
                </table>
                <table id="table"class="table table-hover table-bordered ">
                    <thead>
                        <tr>
                            <th scope="col" colspan="10">Inverter | 34</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row" rowspan="1">DC Input</th>
                            <td >DC Power</td>
                            <td id="Inverter_Get_DcRealPower34" class="realtime">XXX.X</td>
                            <td>kW</td>
                            <td>DC Voltage</td>
                            <td id="Inverter_Get_DcVolt34" class="realtime">XXX</td>
                            <td>V</td>
                            <td>DC Current</td>
                            <td id="Inverter_Get_DcCurrent34" class="realtime">XX.X</td>
                            <td>A</td>
                        </tr>
                        <tr>
                            <th scope="row" rowspan="3">AC Output</th>
                            <td>Vab</td>
                            <td id="Inverter_Get_AcOutputPhaseAbVoltage34" class="realtime">XXX</td>
                            <td>V</td>
                            <td>Vbc</td>
                            <td id="Inverter_Get_AcOutputPhaseBcVoltage34" class="realtime">XXX</td>
                            <td>V</td>
                            <td>Vca</td>
                            <td id="Inverter_Get_AcOutputPhaseCaVoltage34" class="realtime">XXX</td>
                            <td>V</td>
                        </tr>
                        <tr>
                            <td>A Phase Current</td>
                            <td id="Inverter_Get_AcOutputPhaseACurrent34" class="realtime">XX</td>
                            <td>A</td>
                            <td>B Phase Current</td>
                            <td id="Inverter_Get_AcOutputPhaseBCurrent34" class="realtime">XXX</td>
                            <td>A</td>
                            <td>C Phase Current</td>
                            <td id="Inverter_Get_AcOutputPhaseCCurrent34" class="realtime">XX</td>
                            <td>A</td>
                        </tr>
                        <tr>
                            <td>Real Power</td>
                            <td id="Inverter_Get_AcOutputRealPower34" class="realtime">XXX.X</td>
                            <td>kW</td>
                            <td>Reactive Power</td>
                            <td id="Inverter_Get_AcOutputReactivePower34" class="realtime">XXX.X</td>
                            <td>kVAr</td>
                            <td>Power Factor</td>
                            <td id="Inverter_Get_AcOutputPowerFactor34" class="realtime">.XX</td>
                            <td>%</td>
                        </tr>
                        <tr>
                            <th scope="row" rowspan="1">Status</th>
                            <td>Fault Code</td>
                            <td>--</td>
                            <td></td>
                            <td>Efficiency</td>
                            <td id="Inverter_Get_Efficiency34" class="realtime">XX.X</td>
                            <td>%</td>
                        </tr>
                    </tbody>
                </table>
                <table id="table"class="table table-hover table-bordered ">
                    <thead>
                        <tr>
                            <th scope="col" colspan="10">Inverter | 35</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row" rowspan="1">DC Input</th>
                            <td >DC Power</td>
                            <td id="Inverter_Get_DcRealPower35" class="realtime">XXX.X</td>
                            <td>kW</td>
                            <td>DC Voltage</td>
                            <td id="Inverter_Get_DcVolt35" class="realtime">XXX</td>
                            <td>V</td>
                            <td>DC Current</td>
                            <td id="Inverter_Get_DcCurrent35" class="realtime">XX.X</td>
                            <td>A</td>
                        </tr>
                        <tr>
                            <th scope="row" rowspan="3">AC Output</th>
                            <td>Vab</td>
                            <td id="Inverter_Get_AcOutputPhaseAbVoltage35" class="realtime">XXX</td>
                            <td>V</td>
                            <td>Vbc</td>
                            <td id="Inverter_Get_AcOutputPhaseBcVoltage35" class="realtime">XXX</td>
                            <td>V</td>
                            <td>Vca</td>
                            <td id="Inverter_Get_AcOutputPhaseCaVoltage35" class="realtime">XXX</td>
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
                            <th scope="row" rowspan="1">Status</th>
                            <td>Fault Code</td>
                            <td>--</td>
                            <td></td>
                            <td>Efficiency</td>
                            <td id="Inverter_Get_Efficiency35" class="realtime">XX.X</td>
                            <td>%</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
   </body>
</html>