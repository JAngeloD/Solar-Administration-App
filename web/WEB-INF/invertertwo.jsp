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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-growl/1.0.0/jquery.bootstrap-growl.min.js" integrity="sha512-pBoUgBw+mK85IYWlMTSeBQ0Djx3u23anXFNQfBiIm2D8MbVT9lr+IxUccP8AMMQ6LCvgnlhUCK3ZCThaBCr8Ng==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="javascript/messageUtil.js"></script>
        <title>Inverters 6-10</title>
    </head>
    <body>
        <nav  class="navbar navbar-expand-lg navbar-light" style="background-color: #f3f3f3;"> 
            <div class="container-fluid">
                <h1 class="left">INVERTERS 6-10</h1>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="float-right box">
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul  id="navigation"class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item" id="currentPage" f>
                                <a class="nav-link"  id="current" aria-current="page">6-10</a>
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
                            <th scope="col" colspan="10">Inverter | 06</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row" rowspan="1">DC Input</th>
                            <td >DC Power</td>
                            <td id="Inverter_Get_DcRealPower06" class="realtime">XXX.X</td>
                            <td>kW</td>
                            <td>DC Voltage</td>
                            <td id="Inverter_Get_DcVolt06" class="realtime">XXX</td>
                            <td>V</td>
                            <td>DC Current</td>
                            <td id="Inverter_Get_DcCurrent06" class="realtime">XX.X</td>
                            <td>A</td>
                        </tr>
                        <tr>
                            <th scope="row" rowspan="3">AC Output</th>
                            <td>Vab</td>
                            <td id="Inverter_Get_AcOutputPhaseAbVoltage06" class="realtime">XXX</td>
                            <td>V</td>
                            <td>Vbc</td>
                            <td id="Inverter_Get_AcOutputPhaseBcVoltage06" class="realtime">XXX</td>
                            <td>V</td>
                            <td>Vca</td>
                            <td id="Inverter_Get_AcOutputPhaseCaVoltage06" class="realtime">XXX</td>
                            <td>V</td>
                        </tr>
                        <tr>
                            <td>A Phase Current</td>
                            <td id="Inverter_Get_AcOutputPhaseACurrent06" class="realtime">XX</td>
                            <td>A</td>
                            <td>B Phase Current</td>
                            <td id="Inverter_Get_AcOutputPhaseBCurrent06" class="realtime">XXX</td>
                            <td>A</td>
                            <td>C Phase Current</td>
                            <td id="Inverter_Get_AcOutputPhaseCCurrent06" class="realtime">XX</td>
                            <td>A</td>
                        </tr>
                        <tr>
                            <td>Real Power</td>
                            <td id="Inverter_Get_AcOutputRealPower06" class="realtime">XXX.X</td>
                            <td>kW</td>
                            <td>Reactive Power</td>
                            <td id="Inverter_Get_AcOutputReactivePower06" class="realtime">XXX.X</td>
                            <td>kVAr</td>
                            <td>Power Factor</td>
                            <td id="Inverter_Get_AcOutputPowerFactor06" class="realtime">.XX</td>
                            <td>%</td>
                        </tr>
                        <tr>
                            <th scope="row" rowspan="1">Status</th>
                            <td>Fault Code</td>
                            <td>--</td>
                            <td></td>
                            <td>Efficiency</td>
                            <td id="Inverter_Get_Efficiency06" class="realtime">XX.X</td>
                            <td>%</td>
                        </tr>
                    </tbody>
                </table>
                <table id="table"class="table table-hover table-bordered ">
                    <thead>
                        <tr>
                            <th scope="col" colspan="10">Inverter | 07</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row" rowspan="1">DC Input</th>
                            <td >DC Power</td>
                            <td id="Inverter_Get_DcRealPower07" class="realtime">XXX.X</td>
                            <td>kW</td>
                            <td>DC Voltage</td>
                            <td id="Inverter_Get_DcVolt07" class="realtime">XXX</td>
                            <td>V</td>
                            <td>DC Current</td>
                            <td id="Inverter_Get_DcCurrent07" class="realtime">XX.X</td>
                            <td>A</td>
                        </tr>
                        <tr>
                            <th scope="row" rowspan="3">AC Output</th>
                            <td>Vab</td>
                            <td id="Inverter_Get_AcOutputPhaseAbVoltage07" class="realtime">XXX</td>
                            <td>V</td>
                            <td>Vbc</td>
                            <td id="Inverter_Get_AcOutputPhaseBcVoltage07" class="realtime">XXX</td>
                            <td>V</td>
                            <td>Vca</td>
                            <td id="Inverter_Get_AcOutputPhaseCaVoltage07" class="realtime">XXX</td>
                            <td>V</td>
                        </tr>
                        <tr>
                            <td>A Phase Current</td>
                            <td id="Inverter_Get_AcOutputPhaseACurrent07" class="realtime">XX</td>
                            <td>A</td>
                            <td>B Phase Current</td>
                            <td id="Inverter_Get_AcOutputPhaseBCurrent07" class="realtime">XXX</td>
                            <td>A</td>
                            <td>C Phase Current</td>
                            <td id="Inverter_Get_AcOutputPhaseCCurrent07" class="realtime">XX</td>
                            <td>A</td>
                        </tr>
                        <tr>
                            <td>Real Power</td>
                            <td id="Inverter_Get_AcOutputRealPower07" class="realtime">XXX.X</td>
                            <td>kW</td>
                            <td>Reactive Power</td>
                            <td id="Inverter_Get_AcOutputReactivePower07" class="realtime">XXX.X</td>
                            <td>kVAr</td>
                            <td>Power Factor</td>
                            <td id="Inverter_Get_AcOutputPowerFactor07" class="realtime">.XX</td>
                            <td>%</td>
                        </tr>
                        <tr>
                            <th scope="row" rowspan="1">Status</th>
                            <td>Fault Code</td>
                            <td>--</td>
                            <td></td>
                            <td>Efficiency</td>
                            <td id="Inverter_Get_Efficiency07" class="realtime">XX.X</td>
                            <td>%</td>
                        </tr>
                    </tbody>
                </table>
                <table id="table"class="table table-hover table-bordered ">
                    <thead>
                        <tr>
                            <th scope="col" colspan="10">Inverter | 08</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row" rowspan="1">DC Input</th>
                            <td >DC Power</td>
                            <td id="Inverter_Get_DcRealPower08" class="realtime">XXX.X</td>
                            <td>kW</td>
                            <td>DC Voltage</td>
                            <td id="Inverter_Get_DcVolt08" class="realtime">XXX</td>
                            <td>V</td>
                            <td>DC Current</td>
                            <td id="Inverter_Get_DcCurrent08" class="realtime">XX.X</td>
                            <td>A</td>
                        </tr>
                        <tr>
                            <th scope="row" rowspan="3">AC Output</th>
                            <td>Vab</td>
                            <td id="Inverter_Get_AcOutputPhaseAbVoltage08" class="realtime">XXX</td>
                            <td>V</td>
                            <td>Vbc</td>
                            <td id="Inverter_Get_AcOutputPhaseBcVoltage08" class="realtime">XXX</td>
                            <td>V</td>
                            <td>Vca</td>
                            <td id="Inverter_Get_AcOutputPhaseCaVoltage08" class="realtime">XXX</td>
                            <td>V</td>
                        </tr>
                        <tr>
                            <td>A Phase Current</td>
                            <td id="Inverter_Get_AcOutputPhaseACurrent08" class="realtime">XX</td>
                            <td>A</td>
                            <td>B Phase Current</td>
                            <td id="Inverter_Get_AcOutputPhaseBCurrent08" class="realtime">XXX</td>
                            <td>A</td>
                            <td>C Phase Current</td>
                            <td id="Inverter_Get_AcOutputPhaseCCurrent08" class="realtime">XX</td>
                            <td>A</td>
                        </tr>
                        <tr>
                            <td>Real Power</td>
                            <td id="Inverter_Get_AcOutputRealPower08" class="realtime">XXX.X</td>
                            <td>kW</td>
                            <td>Reactive Power</td>
                            <td id="Inverter_Get_AcOutputReactivePower08" class="realtime">XXX.X</td>
                            <td>kVAr</td>
                            <td>Power Factor</td>
                            <td id="Inverter_Get_AcOutputPowerFactor08" class="realtime">.XX</td>
                            <td>%</td>
                        </tr>
                        <tr>
                            <th scope="row" rowspan="1">Status</th>
                            <td>Fault Code</td>
                            <td>--</td>
                            <td></td>
                            <td>Efficiency</td>
                            <td id="Inverter_Get_Efficiency08" class="realtime">XX.X</td>
                            <td>%</td>
                        </tr>
                    </tbody>
                </table>
                <table id="table"class="table table-hover table-bordered ">
                    <thead>
                        <tr>
                            <th scope="col" colspan="10">Inverter | 09</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row" rowspan="1">DC Input</th>
                            <td >DC Power</td>
                            <td id="Inverter_Get_DcRealPower09" class="realtime">XXX.X</td>
                            <td>kW</td>
                            <td>DC Voltage</td>
                            <td id="Inverter_Get_DcVolt09" class="realtime">XXX</td>
                            <td>V</td>
                            <td>DC Current</td>
                            <td id="Inverter_Get_DcCurrent09" class="realtime">XX.X</td>
                            <td>A</td>
                        </tr>
                        <tr>
                            <th scope="row" rowspan="3">AC Output</th>
                            <td>Vab</td>
                            <td id="Inverter_Get_AcOutputPhaseAbVoltage09" class="realtime">XXX</td>
                            <td>V</td>
                            <td>Vbc</td>
                            <td id="Inverter_Get_AcOutputPhaseBcVoltage09" class="realtime">XXX</td>
                            <td>V</td>
                            <td>Vca</td>
                            <td id="Inverter_Get_AcOutputPhaseCaVoltage09" class="realtime">XXX</td>
                            <td>V</td>
                        </tr>
                        <tr>
                            <td>A Phase Current</td>
                            <td id="Inverter_Get_AcOutputPhaseACurrent09" class="realtime">XX</td>
                            <td>A</td>
                            <td>B Phase Current</td>
                            <td id="Inverter_Get_AcOutputPhaseBCurrent09" class="realtime">XXX</td>
                            <td>A</td>
                            <td>C Phase Current</td>
                            <td id="Inverter_Get_AcOutputPhaseCCurrent09" class="realtime">XX</td>
                            <td>A</td>
                        </tr>
                        <tr>
                            <td>Real Power</td>
                            <td id="Inverter_Get_AcOutputRealPower09" class="realtime">XXX.X</td>
                            <td>kW</td>
                            <td>Reactive Power</td>
                            <td id="Inverter_Get_AcOutputReactivePower09" class="realtime">XXX.X</td>
                            <td>kVAr</td>
                            <td>Power Factor</td>
                            <td id="Inverter_Get_AcOutputPowerFactor09" class="realtime">.XX</td>
                            <td>%</td>
                        </tr>
                        <tr>
                            <th scope="row" rowspan="1">Status</th>
                            <td>Fault Code</td>
                            <td>--</td>
                            <td></td>
                            <td>Efficiency</td>
                            <td id="Inverter_Get_Efficiency09" class="realtime">XX.X</td>
                            <td>%</td>
                        </tr>
                    </tbody>
                </table>
                <table id="table"class="table table-hover table-bordered ">
                    <thead>
                        <tr>
                            <th scope="col" colspan="10">Inverter | 10</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row" rowspan="1">DC Input</th>
                            <td >DC Power</td>
                            <td id="Inverter_Get_DcRealPower10" class="realtime">XXX.X</td>
                            <td>kW</td>
                            <td>DC Voltage</td>
                            <td id="Inverter_Get_DcVolt10" class="realtime">XXX</td>
                            <td>V</td>
                            <td>DC Current</td>
                            <td id="Inverter_Get_DcCurrent10" class="realtime">XX.X</td>
                            <td>A</td>
                        </tr>
                        <tr>
                            <th scope="row" rowspan="3">AC Output</th>
                            <td>Vab</td>
                            <td id="Inverter_Get_AcOutputPhaseAbVoltage10" class="realtime">XXX</td>
                            <td>V</td>
                            <td>Vbc</td>
                            <td id="Inverter_Get_AcOutputPhaseBcVoltage10" class="realtime">XXX</td>
                            <td>V</td>
                            <td>Vca</td>
                            <td id="Inverter_Get_AcOutputPhaseCaVoltage10" class="realtime">XXX</td>
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
                            <th scope="row" rowspan="1">Status</th>
                            <td>Fault Code</td>
                            <td>--</td>
                            <td></td>
                            <td>Efficiency</td>
                            <td id="Inverter_Get_Efficiency10" class="realtime">XX.X</td>
                            <td>%</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
