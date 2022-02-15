<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style><%@include file="/WEB-INF//css/style.css"%></style>
        <script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
        <script type="text/javascript"><%@include file="/javascript/powerGraph.js"%></script>
        <title>Weather Detail</title>
    </head>
    <body>
        <ul>
            <li class="menuButton"><a href="home">Logout</a></li>
            <li class="menuButton"><a href="inverterfour">Account</a></li>
            <li class="menuButton"><a href="home">Home</a></li>
            <h1 class="left">Weather Detail</h1>
        </ul>

        <div id="graphs">

            <table id="mainTable">
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
                <tr>
                    <td colspan="2" id="cellForTable">
                        <div id="data" >
                            <table id="weatherData" width="100%">
                                <tr>
                                    <td>

                                    </td>
                                    <td colspan="2">
                                        <b>Current</b>
                                    </td>
                                    <td colspan="2">
                                        <b>Maximum</b>
                                    </td>
                                    <td colspan="2">
                                        <b>Minimum</b>
                                    </td>

                                </tr>
                                <tr>
                                    <td>
                                        <b>Solar Irradiance (POA) </b>
                                    </td>
                                    <td>
                                        XXX 
                                    </td>
                                    <td>
                                        W / sq m
                                    </td>
                                    <td>
                                        XXXX
                                    </td>
                                    <td>
                                        W / sq m
                                    </td>
                                    <td>
                                        -
                                    </td>
                                    <td>
                                        -
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <b>Solar Irradiance (GHI)</b>
                                    </td>
                                    <td>
                                        XXX 
                                    </td>
                                    <td>
                                        W / sq m
                                    </td>
                                    <td>
                                        XXXX
                                    </td>
                                    <td>
                                        W / sq m
                                    </td>
                                    <td>
                                        -
                                    </td>
                                    <td>
                                        -
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <b>Ambient Temperature</b>
                                    </td>
                                    <td>
                                        XXX 
                                    </td>
                                    <td>
                                        Deg C
                                    </td>
                                    <td>
                                        XXXX
                                    </td>
                                    <td>
                                        Deg C
                                    </td>
                                    <td>
                                        xx.x
                                    </td>
                                    <td>
                                        Deg C
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <b>Wind Speed</b>
                                    </td>
                                    <td>
                                        XXX 
                                    </td>
                                    <td>
                                        km / hr
                                    </td>
                                    <td>
                                        XXXX
                                    </td>
                                    <td>
                                        km / hr
                                    </td>
                                    <td>
                                        xx.x
                                    </td>
                                    <td>
                                        km / hr
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <b>Back of Panel Temperature - 1</b>
                                    </td>
                                    <td>
                                        XXX 
                                    </td>
                                    <td>
                                        Deg C
                                    </td>
                                    <td>
                                        XXXX
                                    </td>
                                    <td>
                                        Deg C
                                    </td>
                                    <td>
                                        xx.x
                                    </td>
                                    <td>
                                        Deg C
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <b>Back of Panel Temperature - 2</b>
                                    </td>
                                    <td>
                                        XXX 
                                    </td>
                                    <td>
                                        Deg C
                                    </td>
                                    <td>
                                        XXXX
                                    </td>
                                    <td>
                                        Deg C
                                    </td>
                                    <td>
                                        xx.x
                                    </td>
                                    <td>
                                        Deg C
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </td>
                </tr>
            </table>

        </div>

    </body>
</html>
