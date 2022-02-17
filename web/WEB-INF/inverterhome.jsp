<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="javascript/InverterGraphAjax.js"></script>
        <style><%@include file="/WEB-INF//css/style.css"%></style>
        <title>Home</title>
    </head>
    <body>
        <ul>
            <li class="menuButton"><a href="home">Logout</a></li>
            <li class="menuButton"><a href="inverterfour">Account</a></li>
            <li class="menuButton"><a href="home">Home</a></li>
            <h1 class="left">Inverter Performance</h1>
        </ul>
        <br>

        <div id="components">

            <div id="barBox">
                <div id="bar"></div>
            </div>

            <div id="buttonsBox">
                <div id="buttons">
                    <form action="inverterone">
                        <button type="submit" class="inverterButton" id="oneToNine">Inverter Detail<br> 1- 9</button>
                    </form>
                    <form action="invertertwo">
                        <button class="inverterButton" id="tenToNineteen">Inverter Detail<br> 10-19</button>
                    </form>
                    <form action="inverterthree">
                        <button class="inverterButton" id="twentyTo29">Inverter Detail<br> 20-29</button>
                    </form>
                    <form action="inverterfour">
                        <button class="inverterButton" id="thirtyTo39">Inverter Detail<br> 30-39</button>
                    </form>
                </div>
            </div>


    </body>
</html>
