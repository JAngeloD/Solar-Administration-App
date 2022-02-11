<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
        <script type="text/javascript"><%@include file="/javascript/index.js"%></script>
        <style><%@include file="/WEB-INF//css/style.css"%></style>
        <title>Home</title>
    </head>
    <body>
        <ul>
            <h1 class="left">Inverter Performance</h1>
            <li><a href="inverterfour">Inverter 30-39</a></li>
            <li><a href="inverterthree">Inverter 20-29</a></li>
            <li><a href="invertertwo">Inverter 10-19</a></li>
            <li><a href="inverterone">Inverter 1-9</a></li>
        </ul>
        <div id="root"></div>
        <br>
        <div id="bar"></div>    
    </body>
</html>
