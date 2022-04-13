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
        <style><%@include file="/WEB-INF//css/newHead.css"%></style>
        <style><%@include file="/WEB-INF//css/inverterhome.css"%></style>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-growl/1.0.0/jquery.bootstrap-growl.min.js" integrity="sha512-pBoUgBw+mK85IYWlMTSeBQ0Djx3u23anXFNQfBiIm2D8MbVT9lr+IxUccP8AMMQ6LCvgnlhUCK3ZCThaBCr8Ng==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="javascript/messageUtil.js"></script>
        
        <title>Inverter Home</title>

    </head>
    <body>
        <nav  class="navbar navbar-expand-lg navbar-light" style="background-color: #f3f3f3;"> 
            <div class="container-fluid">
                <h1 class="left">INVERTER HOME</h1>

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button><div class="float-right box">
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul  id="navigation"class="navbar-nav me-auto mb-2 mb-lg-0">

                            <li class="nav-item" id="currentPage" f>
                                <a class="nav-link"  id="current" aria-current="page">Inverters</a>
                            </li>

                            <li class="nav-item" id="menuButton1" f>
                                <a class="nav-link active"  id="buttonMenu1" aria-current="page" href="home">Home</a>
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
    <div class="container">
        <div class="row">
            <div class="col-lg">      
                <!--             <div id="components">-->

                <div id="barBox">
                    <div id="bar"></div>
                </div>
            </div>
            <div class="col-lg">
                <div id="buttonsBox">
                    <div id="buttons">



                        <form action="invertereight">
                            <button  class="inverterButton" id="thirtysixToThirtynine">Inverter Detail<br> 36-39 </button>
                        </form>
                        <form action="inverterseven">
                            <button class="inverterButton" id="thirtyoneToThirtyfive">Inverter Detail<br> 31-35 </button>
                        </form>
                        <form action="invertersix">
                            <button class="inverterButton" id="twentysixToThirty">Inverter Detail<br> 26-30 </button>
                        </form>
                        <form action="inverterfive">
                            <button class="inverterButton" id="twentyoneToTwentyfive">Inverter Detail<br> 21-25 </button>
                        </form>

                        <form action="inverterfour">
                            <button class="inverterButton" id="sixteenTotwenty">Inverter Detail<br> 16-20 </button>
                        </form>
                        <form action="inverterthree">
                            <button class="inverterButton" id="elevenTofifteen">Inverter Detail<br> 11-15 </button>
                        </form>
                        <form action="invertertwo">
                            <button class="inverterButton" id="sixToTen">Inverter Detail<br> 6-10 </button>
                        </form>
                        <form action="inverterone">
                            <button class="inverterButton" id="oneToFive">Inverter Detail<br> 1-5 </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>


</body>
</html>
