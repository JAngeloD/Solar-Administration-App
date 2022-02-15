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
            <div id="power">
                <div id="root">

                </div>
            </div>

            <div id="wind">
                <div id="windGraph">

                </div>
            </div>
        </div>



        <div id="data">

        </div>
    </body>
</html>
