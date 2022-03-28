<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="javascript/InverterGraphAjax.js"></script>
<!--        <style><%@include file="/WEB-INF//css/style.css"%></style>-->
        <style><%@include file="/WEB-INF//css/header.css"%></style>
        <style><%@include file="/WEB-INF//css/inverterhome.css"%></style>
        <title>Inverter Home</title>
    </head>
    <body>
       <div class="headerS">
            <ul  id="navigation" class="nav">
      
              <li class="menuButton1"><a class="buttonMenu1" href="login?action=logout">Logout</a></li>
              <li class="menuButton1"><a class="buttonMenu1" href="account">Account</a></li>
              <li class="menuButton1"><a class="buttonMenu1" href="home">Home</a></li>
                      <li class="menuButton1"><a class="buttonMenu1" href="reports">Reports</a></li>
        <li class="menuButton1"><a class="buttonMenu1" href="writelog">Operator Log</a></li>
              <li class="currentPage"><a class="buttonMenu2" id="current" class="active":active >Inverter Home</a></li>
          
              <h1 class="left">INVERTER PERFORMANCE</h1>
            </ul>
          </div>
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
