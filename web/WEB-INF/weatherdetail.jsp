<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style><%@include file="/WEB-INF/css/weatherdetail.css"%></style>
        <style><%@include file="/WEB-INF/css/header.css"%></style>

        <script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="javascript/WeatherPageAjax.js"></script>
        <title>Weather Detail</title>
    </head>
    <body>
        <div class="headerS">
            <ul  id="navigation" class="nav">

                <li class="menuButton1"><a class="buttonMenu1" href="login?action=logout">Logout</a></li>
                <li class="menuButton1"><a class="buttonMenu1" href="account">Account</a></li>
                <li class="menuButton1"><a class="buttonMenu1" href="home">Home</a></li>
                <li class="menuButton1"><a class="buttonMenu1" href="reports">Reports</a></li>
                <li class="menuButton1"><a class="buttonMenu1" href="writelog">Operator Log</a></li>
                <li class="currentPage"><a class="buttonMenu2" id="current" class="active":active >Weather</a></li>

                <h1 class="left">WEATHER DETAILS</h1>
            </ul>
        </div>
        <div class="wrapall" id="electricDiagram">
            <div id="graphs">

                <table id="mainTable" width="100%">
                    <tr>
                        <td>

                            <div id="power">
                                <div id="root">

                                </div>
                            </div>
                        </td>
                        <td>
                            <div id="wind">
                                <div id="windGraph">

                                </div>
                            </div>
                        </td>
                    </tr>

                </table>
            </div>

            <div id="data" >
                <table id="weatherData" width="100%">





                    <tr>
                        <th colspan="4"></th>
                        <th colspan="4">   Current</th>

                        <th colspan="4"> Maximum</th>

                        <th colspan="4"> Minimum</th> 

                    </tr>
                    <tr>

                        <th colspan="4">Solar Irradiance (POA)</th>
                        <td colspan="4" id="FacilitygetSolarIrridinacePOA" class="realtime">


                            W / sq m
                        </td>

                        <td colspan="4" id="FacilitygetSolarIrridinacePOAMax" class="realtime">

                            W / sq m
                        </td>


                        <td colspan="4"id="FacilitygetSolarIrridinacePOAMin" class="realtime">
                             W / sq m
                        </td>
                    </tr>
                    <tr>
                        <th colspan="4">Solar Irradiance (GHI)</th>


                        <td colspan="4" id="FacilitygetSolarIrridinaceGHI" class="realtime">

                            W / sq m
                        </td>
                        <td colspan="4" id="FacilitygetSolarIrridinaceGHIMax" class="realtime">


                            W / sq m
                        </td>
                        <td colspan="4" id="FacilitygetSolarIrridinaceGHIMin" class="realtime">
                             W / sq m
                        </td>

                    </tr>


                    <tr>
                        <th colspan="4">Ambient Temperature</th>

                        <td colspan="4" id="FacilitygetAmbientTemperature" class="realtime">


                            Deg C
                        </td>
                        <td colspan="4" id="FacilitygetAmbientTemperatureMax" class="realtime">
                            XXX

                            Deg C
                        </td>
                        <td colspan="4" id="FacilitygetAmbientTemperatureMin" class="realtime">
                            XXX

                            Deg C
                        </td>

                    </tr>
                    <tr>
                        <th colspan="4">Wind Speed</th>

                        <td colspan="4" id="FacilitygetWindSpeed" class="realtime">


                            km / hr
                        </td>
                        <td colspan="4" id="FacilitygetWindSpeedMax" class="realtime">
                            XXX

                            km / hr
                        </td>
                        <td colspan="4" id="FacilitygetWindSpeedMin" class="realtime">
                            XXX

                            km / hr
                        </td>

                    </tr>
                    <tr>
                        <th colspan="4">Back of Panel Temperature - 1</th>

                        <td colspan="4" id="FacilitygetBackOfPanelTemperature1" class="realtime">


                            Deg C
                        </td>
                        <td colspan="4" id="FacilitygetBackOfPanelTemperature1Max" class="realtime">


                            Deg C
                        </td>
                        <td colspan="4" id="FacilitygetBackOfPanelTemperature1Min" class="realtime">


                            Deg C
                        </td>
                    </tr>
                    <tr>
                        <th colspan="4">Back of Panel Temperature - 2</th>

                        <td colspan="4" id="FacilitygetBackOfPanelTemperature1" class="realtime">


                            Deg C
                        </td>
                        <td colspan="4" id="FacilitygetBackOfPanelTemperature1Max" class="realtime">


                            Deg C
                        </td>
                        <td colspan="4" id="FacilitygetBackOfPanelTemperature1Min" class="realtime">


                            Deg C
                        </td>
                    </tr>
                    <tr>
                        <th colspan="4">All Parameters</th>

                    </tr>
                </table>



            </div>



        </div>

    </body>
</html>
