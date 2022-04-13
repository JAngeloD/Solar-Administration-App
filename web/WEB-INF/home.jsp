<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           <meta name="viewport" content="width=device-width, initial-scale=1">
        <style><%@include file="/WEB-INF/css/home.css"%></style>
        <style><%@include file="/WEB-INF/css/newHead.css"%></style>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="javascript/HomePageAjax.js"></script>
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    
<!--       <style><%@include file="/WEB-INF/css/bootstrap.min.css"%></style>
<script src="javascript/bootstrap.bundle.min.js"></script>-->

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

     
       
        <title>Home</title>
    </head>
       
  
    
      
    <body>
        
      <nav  class="navbar navbar-expand-lg navbar-light" style="background-color: #f3f3f3;"> 
        <div class="container-fluid">
          <h1 class="left">MFN SOLAR FACILITY</h1>
         
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button><div class="float-right box">
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul  id="navigation"class="navbar-nav me-auto mb-2 mb-lg-0">

              <li class="nav-item" id="currentPage" f>
                <a class="nav-link"  id="current" aria-current="page">Home</a>
              </li>
             
              <li class="nav-item" id="menuButton1" f>
                <a class="nav-link active"  id="buttonMenu1" aria-current="page" href="useraccounts">Account</a>
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
           
        <div class="wrapall" id="electricDiagram">

            <div class="wrapper">
                <a href="pccdetail" class="button">SELECT PCC DETAIL</a>
            </div>

            <div class="wrapper1">
                <a href="inverterhome" class="button1">SELECT INVERTER PERFORMANCE</a>

            </div>

            <div class="wrapper2">
                <a href="weather" class="button2">SELECT WEATHER DETAIL</a>

            </div>

            <div class="wrapper3">

               

                <div id="pcc" class="data">
                    <label class="col-lg-12 col-form-label">Real Power: <input type="number" id="Pcc_Get_AcOutputRealPower" class="realtime" stepget="1" readonly="true" size="10" value="1000" > kW</label><br>
                    <label class="col-lg-12 col-form-label">Reactive Power: <input type="number"  id="Pcc_Get_AcOutputReactivePower" class="realtime" step="0.1" readonly="true" size="10" value="1000"> kVAr</label><br>
                    <label class="col-lg-12 col-form-label">Power Factor: <input type="number" id="Pcc_Get_AcOutputPowerFactor" class="realtime" step="0.1" readonly="true" size="10" value="1000"> %</label><br>
                        <label class="col-lg-12 col-form-label">Voltage: <input type="number" id="Pcc_Get_AcOutputPhaseAverageVoltage" class="realtime" step="1" readonly="true" size="10" value="1000"> V</label>
                </div>
            </div>
            

            <div class="txt">

                <div class="wrapper4">
                    <p class="button4"a>PV Modules Strings 1-14</p>

                </div>                    <div class="wrapper5">
                    <p class="button5"a>PV Modules Strings 15-28</p>

                </div>                    <div class="wrapper6">
                    <p class="button6"a>PV Modules Strings 29-42</p>

                </div>                    <div class="wrapper7">
                    <p class="button7"a>PV Modules Strings 43-57</p>

                </div>                    <div class="wrapper8">
                    <p class="button8"a>Combiner Boxes CB 1-9</p>

                </div>                    <div class="wrapper9">
                    <p class="button9"a>Combiner Boxes CB 10-19</p>

                </div>                    <div class="wrapper10">
                    <p class="button10"a>Combiner Boxes CB 20-29</p>

                </div>                    <div class="wrapper11">
                    <p class="button11"a>Combiner Boxes CB 30-39</p>

                </div>                    <div class="wrapper12">
                    <p class="button12"a>Inverters I 1-9</p>

                </div>                    <div class="wrapper13">
                    <p class="button13"a>Inverters I 10-19</p>

                </div>                    <div class="wrapper14">
                    <p class="button14"a>Inverters I 20-29</p>

                </div>                    <div class="wrapper15">
                    <p class="button15"a>Inverters I 30-39</p>

                </div>                    <div class="wrapper16">
                    <p class="button16"a>ACC-1</p>

                </div>                    <div class="wrapper17">
                    <p class="button17"a>ACC-2</p>

                </div>                    <div class="wrapper18">
                    <p class="button18"a>ACC-3</p>

                </div>                    <div class="wrapper19">
                    <p class="button19"a>ACC-4</p>

                </div>                    <div class="wrapper20">
                    <p class="button20"a>T1</p>

                </div>                    <div class="wrapper21">
                    <p class="button21"a>T2</p>

                </div>                    <div class="wrapper22">
                    <p class="button22"a>CB-501</p>

                </div>                    <div class="wrapper23">
                    <p class="button23"a>CB-502</p>

                </div>                    <div class="wrapper24">
                    <p class="button24"a>SW-501</p>

                </div>                    <div class="wrapper25">
                    <p class="button25"a>SW-502</p>

                </div>                    <div class="wrapper26">
                    <p class="button26"a>To Fortis</p>

                </div>                    <div class="wrapper27">
                    <p class="button27"a>To Station Service</p>

                </div>
            </div>

            <svg
                width="1600"
                height="900"
                viewBox="0 0 338.66667 190.5"
                version="1.1"
                id="svg5"
                inkscape:version="1.1.2 (b8e25be8, 2022-02-05)"
                sodipodi:docname="home page.svg"
                xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape"
                xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd"
                xmlns="http://www.w3.org/2000/svg"
                xmlns:svg="http://www.w3.org/2000/svg">
            <sodipodi:namedview
                id="namedview7"
                pagecolor="#ffffff"
                bordercolor="#cccccc"
                borderopacity="1"
                inkscape:pageshadow="0"
                inkscape:pageopacity="1"
                inkscape:pagecheckerboard="0"
                inkscape:document-units="mm"
                showgrid="false"
                units="px"
                inkscape:zoom="0.70710678"
                inkscape:cx="280.72139"
                inkscape:cy="353.55339"
                inkscape:window-width="1312"
                inkscape:window-height="774"
                inkscape:window-x="102"
                inkscape:window-y="25"
                inkscape:window-maximized="0"
                inkscape:current-layer="layer1" />
            <defs
                id="defs2">
            <clipPath
                clipPathUnits="userSpaceOnUse"
                id="clipPath41">
                <path
                    d="M 8.503906,56.53344 H 1215.4959 v 678.9331 H 8.503906 Z"
                    id="path39" />
            </clipPath>
            </defs>
            <g
                inkscape:label="Layer 1"
                inkscape:groupmode="layer"
                id="layer1">
            <g
                id="g33"
                transform="matrix(0.35277777,0,0,-0.35277777,-48.962045,231.88958)" />
            <g
                id="g7390"
                transform="translate(-2.6192414,3.7417734)">
            <g
                id="g35"
                transform="matrix(0.35277777,0,0,-0.35277777,-17.212025,243.53132)">
            <g
                id="g51"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="M 961.3129,1088.578 963.408,960.6703"
                style="fill:none;stroke:#000000;stroke-width:4;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path53" />
            </g>
            <path
                d="m 371.8969,325.6713 c 0.4419,-0.4419 0.4419,-1.1583 0,-1.6002 -0.4419,-0.4419 -1.1584,-0.4419 -1.6003,0 -0.4419,0.4419 -0.4419,1.1583 0,1.6002 0.4419,0.4419 1.1584,0.4419 1.6003,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path55" />
            <g
                id="g57"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 961.3129,463.9512 -0.1368,86.1413"
                style="fill:none;stroke:#000000;stroke-width:4;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path59" />
            </g>
            <path
                d="m 371.8969,561.2712 c 0.4419,-0.4419 0.4419,-1.1584 0,-1.6003 -0.4419,-0.4419 -1.1584,-0.4419 -1.6003,0 -0.4419,0.4419 -0.4419,1.1584 0,1.6003 0.4419,0.4419 1.1584,0.4419 1.6003,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path61" />
            <g
                id="g63"
                transform="matrix(0,-0.3771851,-0.3771851,0,226.3187,705.1092)">
            <path
                d="m 234.6452,300.9792 h 27.7 v 56.0002 h -27.7 z"
                style="fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path65" />
            </g>
            <path
                d="m 102.4502,611.3239 -10.56123,-5.2806 v 10.5612 z"
                style="fill:#ffffff;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path67" />
            <g
                id="g69"
                transform="matrix(0,-0.3771851,-0.3771851,0,221.3122,699.9896)">
            <path
                d="m 235.0721,315.1292 14,28.0001 h -28 z"
                style="fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path71" />
            </g>
            <g
                id="g73"
                transform="matrix(-0.3771851,0,0,0.3771851,446.0361,486.9212)">
            <path
                d="m 549.9968,299.4741 h 60 v 59.9999 h -60 z"
                style="fill:none;stroke:#000000;stroke-width:3;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path75" />
            </g>
            <g
                id="g77"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 549.9968,359.474 60,-59.9999"
                style="fill:none;stroke:#000000;stroke-width:3;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path79" />
            </g>
            <path
                d="m 216.6212,600.5451 c 0.3683,-0.3682 0.3683,-0.9653 0,-1.3335 -0.3682,-0.3683 -0.9653,-0.3683 -1.3335,0 -0.3683,0.3682 -0.3683,0.9653 0,1.3335 0.3682,0.3683 0.9653,0.3683 1.3335,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path81" />
            <path
                d="m 239.2523,623.1762 c 0.3683,-0.3683 0.3683,-0.9653 0,-1.3336 -0.3682,-0.3682 -0.9653,-0.3682 -1.3335,0 -0.3683,0.3683 -0.3683,0.9653 0,1.3336 0.3682,0.3682 0.9653,0.3682 1.3335,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path83" />
            <g
                id="g85"
                transform="matrix(-0.3771851,0,0,0.3771851,451.7029,473.6527)">
            <text
                transform="translate(578.7489,358.5629)"
                style="font-variant:normal;font-weight:normal;font-size:30px;font-family:Helvetica;-inkscape-font-specification:Helvetica;writing-mode:lr-tb;fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="text89"><tspan
                x="0"
                y="0"
                id="tspan87">~</tspan></text>
            </g>
            <g
                id="g91"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 714.8525,288.5151 h 38.40479 v 82.22241 H 714.8525 Z"
                style="fill:none;stroke:#000000;stroke-width:4;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path93" />
            </g>
            <g
                id="g95"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 389.8504,288.5151 h 38.40479 v 82.22241 H 389.8504 Z"
                style="fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path97" />
            </g>
            <g
                id="g99"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 276.4954,328.9793 113.355,0.647"
                style="fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path101" />
            </g>
            <path
                d="m 113.3272,611.9139 c 0.2946,-0.2946 0.2946,-0.7723 0,-1.0669 -0.2946,-0.2946 -0.7722,-0.2946 -1.0668,0 -0.2946,0.2946 -0.2946,0.7723 0,1.0669 0.2946,0.2946 0.7722,0.2946 1.0668,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path103" />
            <path
                d="m 156.0831,611.6699 c 0.2946,-0.2946 0.2946,-0.7723 0,-1.0669 -0.2946,-0.2946 -0.7723,-0.2946 -1.0669,0 -0.2946,0.2946 -0.2946,0.7723 0,1.0669 0.2946,0.2946 0.7723,0.2946 1.0669,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path105" />
            <g
                id="g107"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="M 428.2552,329.6263 549.9968,329.474"
                style="fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path109" />
            </g>
            <path
                d="m 170.5688,611.6699 c 0.2946,-0.2946 0.2946,-0.7723 0,-1.0669 -0.2946,-0.2946 -0.7723,-0.2946 -1.0669,0 -0.2946,0.2946 -0.2946,0.7723 0,1.0669 0.2946,0.2946 0.7723,0.2946 1.0669,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path111" />
            <path
                d="m 216.4879,611.7273 c 0.2946,-0.2946 0.2946,-0.7723 0,-1.0669 -0.2946,-0.2946 -0.7723,-0.2946 -1.0669,0 -0.2946,0.2946 -0.2946,0.7723 0,1.0669 0.2946,0.2946 0.7723,0.2946 1.0669,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path113" />
            <g
                id="g115"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 609.9968,329.474 104.8557,0.1523"
                style="fill:none;stroke:#000000;stroke-width:4;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path117" />
            </g>
            <path
                d="m 239.3857,611.994 c 0.4419,-0.4419 0.4419,-1.1584 0,-1.6003 -0.4419,-0.4419 -1.1584,-0.4419 -1.6003,0 -0.4419,0.4419 -0.4419,1.1584 0,1.6003 0.4419,0.4419 1.1584,0.4419 1.6003,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path119" />
            <path
                d="m 278.9357,611.9366 c 0.4419,-0.4419 0.4419,-1.1584 0,-1.6003 -0.4419,-0.4419 -1.1583,-0.4419 -1.6002,0 -0.4419,0.4419 -0.4419,1.1584 0,1.6003 0.4419,0.4419 1.1583,0.4419 1.6002,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path121" />
            <g
                id="g123"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="M 561.1959,316.9395 H 579.537"
                style="fill:none;stroke:#000000;stroke-width:1;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path125" />
            </g>
            <g
                id="g127"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 561.5433,310.1027 h 18.5875"
                style="fill:none;stroke:#000000;stroke-width:1;stroke-linecap:butt;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:2, 2;stroke-dashoffset:0;stroke-opacity:1"
                id="path129" />
            </g>
            <g
                id="g173"
                transform="matrix(0,-0.3771851,-0.3771851,0,309.7708,621.657)">
            <path
                d="m 234.6452,522.2291 h 27.7 v 56.0002 h -27.7 z"
                style="fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path175" />
            </g>
            <path
                d="m 102.4502,527.8718 -10.56123,-5.2806 v 10.5612 z"
                style="fill:#ffffff;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path177" />
            <g
                id="g179"
                transform="matrix(0,-0.3771851,-0.3771851,0,304.7644,616.5375)">
            <path
                d="m 235.0721,536.379 14,28.0002 h -28 z"
                style="fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path181" />
            </g>
            <g
                id="g183"
                transform="matrix(-0.3771851,0,0,0.3771851,446.0361,320.0169)">
            <path
                d="m 549.9968,520.7239 h 59.9999 v 59.9999 h -59.9999 z"
                style="fill:none;stroke:#000000;stroke-width:3;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path185" />
            </g>
            <g
                id="g187"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 549.9968,580.7238 60,-59.9999"
                style="fill:none;stroke:#000000;stroke-width:3;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path189" />
            </g>
            <path
                d="m 216.6212,517.093 c 0.3683,-0.3683 0.3683,-0.9653 0,-1.3336 -0.3682,-0.3682 -0.9653,-0.3682 -1.3335,0 -0.3683,0.3683 -0.3683,0.9653 0,1.3336 0.3682,0.3682 0.9653,0.3682 1.3335,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path191" />
            <path
                d="m 239.2523,539.724 c 0.3683,-0.3682 0.3683,-0.9653 0,-1.3335 -0.3682,-0.3683 -0.9653,-0.3683 -1.3335,0 -0.3683,0.3682 -0.3683,0.9653 0,1.3335 0.3682,0.3683 0.9653,0.3683 1.3335,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path193" />
            <g
                id="g195"
                transform="matrix(-0.3771851,0,0,0.3771851,451.7029,306.7484)">
            <text
                transform="translate(578.7489,579.8128)"
                style="font-variant:normal;font-weight:normal;font-size:30px;font-family:Helvetica;-inkscape-font-specification:Helvetica;writing-mode:lr-tb;fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="text199"><tspan
                x="0"
                y="0"
                id="tspan197">~</tspan></text>
            </g>
            <g
                id="g201"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 714.8526,509.765 h 38.40479 v 82.2224 H 714.8526 Z"
                style="fill:none;stroke:#000000;stroke-width:4;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path203" />
            </g>
            <g
                id="g205"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 389.8504,509.765 h 38.40479 v 82.2224 H 389.8504 Z"
                style="fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path207" />
            </g>
            <g
                id="g209"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 276.4954,550.2292 113.355,0.647"
                style="fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path211" />
            </g>
            <path
                d="m 113.3272,528.4617 c 0.2946,-0.2946 0.2946,-0.7722 0,-1.0668 -0.2946,-0.2946 -0.7722,-0.2946 -1.0668,0 -0.2946,0.2946 -0.2946,0.7722 0,1.0668 0.2946,0.2946 0.7722,0.2946 1.0668,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path213" />
            <path
                d="m 156.0831,528.2177 c 0.2946,-0.2946 0.2946,-0.7722 0,-1.0668 -0.2946,-0.2946 -0.7723,-0.2946 -1.0669,0 -0.2946,0.2946 -0.2946,0.7722 0,1.0668 0.2946,0.2946 0.7723,0.2946 1.0669,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path215" />
            <g
                id="g217"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 428.2552,550.8762 121.7416,-0.1523"
                style="fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path219" />
            </g>
            <path
                d="m 170.5688,528.2177 c 0.2946,-0.2946 0.2946,-0.7722 0,-1.0668 -0.2946,-0.2946 -0.7722,-0.2946 -1.0668,0 -0.2946,0.2946 -0.2946,0.7722 0,1.0668 0.2946,0.2946 0.7722,0.2946 1.0668,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path221" />
            <path
                d="m 216.4879,528.2752 c 0.2946,-0.2946 0.2946,-0.7723 0,-1.0669 -0.2946,-0.2946 -0.7723,-0.2946 -1.0669,0 -0.2946,0.2946 -0.2946,0.7723 0,1.0669 0.2946,0.2946 0.7723,0.2946 1.0669,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path223" />
            <g
                id="g225"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 609.9968,550.7239 104.8558,0.1523"
                style="fill:none;stroke:#000000;stroke-width:4;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path227" />
            </g>
            <path
                d="m 239.3857,528.5419 c 0.4419,-0.4419 0.4419,-1.1584 0,-1.6003 -0.4419,-0.4419 -1.1584,-0.4419 -1.6003,0 -0.4419,0.4419 -0.4419,1.1584 0,1.6003 0.4419,0.4419 1.1584,0.4419 1.6003,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path229" />
            <path
                d="m 278.9358,528.4844 c 0.4419,-0.4419 0.4419,-1.1583 0,-1.6002 -0.4419,-0.4419 -1.1584,-0.4419 -1.6003,0 -0.4419,0.4419 -0.4419,1.1583 0,1.6002 0.4419,0.4419 1.1584,0.4419 1.6003,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path231" />
            <g
                id="g233"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="M 561.1959,538.1893 H 579.537"
                style="fill:none;stroke:#000000;stroke-width:1;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path235" />
            </g>
            <g
                id="g237"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 561.5433,531.3526 h 18.5875"
                style="fill:none;stroke:#000000;stroke-width:1;stroke-linecap:butt;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:2, 2;stroke-dashoffset:0;stroke-opacity:1"
                id="path239" />
            </g>
            <g
                id="g283"
                transform="matrix(0,-0.3771851,-0.3771851,0,464.6193,466.8085)">
            <path
                d="m 234.6452,932.7663 h 27.7 v 56.0002 h -27.7 z"
                style="fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path285" />
            </g>
            <path
                d="m 102.4502,373.0233 -10.56123,-5.2806 v 10.5612 z"
                style="fill:#ffffff;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path287" />
            <g
                id="g289"
                transform="matrix(0,-0.3771851,-0.3771851,0,459.6129,461.6889)">
            <path
                d="m 235.0721,946.9163 14,28.0001 h -28 z"
                style="fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path291" />
            </g>
            <g
                id="g293"
                transform="matrix(-0.3771851,0,0,0.3771851,446.0361,10.31989)">
            <path
                d="m 549.9968,931.2612 h 59.9999 v 59.9999 h -59.9999 z"
                style="fill:none;stroke:#000000;stroke-width:3;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path295" />
            </g>
            <g
                id="g297"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 549.9968,991.261 60,-59.9998"
                style="fill:none;stroke:#000000;stroke-width:3;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path299" />
            </g>
            <path
                d="m 216.6212,362.2445 c 0.3683,-0.3683 0.3683,-0.9653 0,-1.3336 -0.3682,-0.3682 -0.9653,-0.3682 -1.3335,0 -0.3683,0.3683 -0.3683,0.9653 0,1.3336 0.3682,0.3682 0.9653,0.3682 1.3335,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path301" />
            <path
                d="m 239.2523,384.8755 c 0.3683,-0.3682 0.3683,-0.9653 0,-1.3335 -0.3682,-0.3683 -0.9653,-0.3683 -1.3335,0 -0.3683,0.3682 -0.3683,0.9653 0,1.3335 0.3682,0.3683 0.9653,0.3683 1.3335,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path303" />
            <g
                id="g305"
                transform="matrix(-0.3771851,0,0,0.3771851,451.7029,-3.485941)">
            <text
                transform="translate(578.7489,991.0623)"
                style="font-variant:normal;font-weight:normal;font-size:30px;font-family:Helvetica;-inkscape-font-specification:Helvetica;writing-mode:lr-tb;fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="text309"><tspan
                x="0"
                y="0"
                id="tspan307">~</tspan></text>
            </g>
            <g
                id="g311"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 714.8525,920.3022 h 38.40479 v 82.2224 H 714.8525 Z"
                style="fill:none;stroke:#000000;stroke-width:4;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path313" />
            </g>
            <g
                id="g315"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 389.8504,920.3022 h 38.40479 v 82.2224 H 389.8504 Z"
                style="fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path317" />
            </g>
            <g
                id="g319"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 276.4954,960.7664 113.355,0.647"
                style="fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path321" />
            </g>
            <path
                d="m 113.3272,373.6132 c 0.2946,-0.2946 0.2946,-0.7722 0,-1.0668 -0.2946,-0.2946 -0.7722,-0.2946 -1.0668,0 -0.2946,0.2946 -0.2946,0.7722 0,1.0668 0.2946,0.2946 0.7722,0.2946 1.0668,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path323" />
            <path
                d="m 156.0831,373.3692 c 0.2946,-0.2946 0.2946,-0.7722 0,-1.0668 -0.2946,-0.2946 -0.7723,-0.2946 -1.0669,0 -0.2946,0.2946 -0.2946,0.7722 0,1.0668 0.2946,0.2946 0.7723,0.2946 1.0669,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path325" />
            <g
                id="g327"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 428.2552,961.4134 121.7416,-0.1523"
                style="fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path329" />
            </g>
            <path
                d="m 170.5688,373.3692 c 0.2946,-0.2946 0.2946,-0.7722 0,-1.0668 -0.2946,-0.2946 -0.7723,-0.2946 -1.0669,0 -0.2946,0.2946 -0.2946,0.7722 0,1.0668 0.2946,0.2946 0.7723,0.2946 1.0669,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path331" />
            <path
                d="m 216.4879,373.4266 c 0.2946,-0.2946 0.2946,-0.7722 0,-1.0668 -0.2946,-0.2946 -0.7723,-0.2946 -1.0669,0 -0.2946,0.2946 -0.2946,0.7722 0,1.0668 0.2946,0.2946 0.7723,0.2946 1.0669,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path333" />
            <g
                id="g335"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 609.9968,961.2611 104.8557,0.1523"
                style="fill:none;stroke:#000000;stroke-width:4;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path337" />
            </g>
            <path
                d="m 239.3857,373.6934 c 0.4419,-0.4419 0.4419,-1.1584 0,-1.6003 -0.4419,-0.4419 -1.1584,-0.4419 -1.6003,0 -0.4419,0.4419 -0.4419,1.1584 0,1.6003 0.4419,0.4419 1.1584,0.4419 1.6003,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path339" />
            <path
                d="m 278.9357,373.6359 c 0.4419,-0.4419 0.4419,-1.1583 0,-1.6002 -0.4419,-0.4419 -1.1583,-0.4419 -1.6002,0 -0.4419,0.4419 -0.4419,1.1583 0,1.6002 0.4419,0.4419 1.1583,0.4419 1.6002,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path341" />
            <g
                id="g343"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="M 561.1959,948.7266 H 579.537"
                style="fill:none;stroke:#000000;stroke-width:1;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path345" />
            </g>
            <g
                id="g347"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 561.5433,941.8898 h 18.5875"
                style="fill:none;stroke:#000000;stroke-width:1;stroke-linecap:butt;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:2, 2;stroke-dashoffset:0;stroke-opacity:1"
                id="path349" />
            </g>
            <g
                id="g393"
                transform="matrix(0,-0.3771851,-0.3771851,0,548.0715,383.3563)">
            <path
                d="m 234.6452,1154.016 h 27.7 v 56 h -27.7 z"
                style="fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path395" />
            </g>
            <path
                d="m 102.4502,289.5711 -10.56123,-5.2806 v 10.5612 z"
                style="fill:#ffffff;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path397" />
            <g
                id="g399"
                transform="matrix(0,-0.3771851,-0.3771851,0,543.065,378.2368)">
            <path
                d="m 235.0721,1168.166 14,28 h -28 z"
                style="fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path401" />
            </g>
            <g
                id="g403"
                transform="matrix(-0.3771851,0,0,0.3771851,446.0361,-156.5844)">
            <path
                d="m 549.9968,1152.511 h 59.9999 v 60 h -59.9999 z"
                style="fill:none;stroke:#000000;stroke-width:3;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path405" />
            </g>
            <g
                id="g407"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 549.9968,1212.511 60,-60"
                style="fill:none;stroke:#000000;stroke-width:3;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path409" />
            </g>
            <path
                d="m 216.6212,278.7923 c 0.3683,-0.3683 0.3683,-0.9653 0,-1.3336 -0.3682,-0.3682 -0.9653,-0.3682 -1.3335,0 -0.3683,0.3683 -0.3683,0.9653 0,1.3336 0.3682,0.3682 0.9653,0.3682 1.3335,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path411" />
            <path
                d="m 239.2523,301.4234 c 0.3683,-0.3682 0.3683,-0.9653 0,-1.3335 -0.3682,-0.3683 -0.9653,-0.3683 -1.3335,0 -0.3683,0.3682 -0.3683,0.9653 0,1.3335 0.3682,0.3683 0.9653,0.3683 1.3335,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path413" />
            <g
                id="g415"
                transform="matrix(-0.3771851,0,0,0.3771851,451.7029,-169.853)">
            <text
                transform="translate(578.7489,1211.6)"
                style="font-variant:normal;font-weight:normal;font-size:30px;font-family:Helvetica;-inkscape-font-specification:Helvetica;writing-mode:lr-tb;fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="text419"><tspan
                x="0"
                y="0"
                id="tspan417">~</tspan></text>
            </g>
            <g
                id="g421"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 714.8526,1141.552 h 38.40479 v 82.2224 H 714.8526 Z"
                style="fill:none;stroke:#000000;stroke-width:4;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path423" />
            </g>
            <g
                id="g425"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 389.8504,1141.552 h 38.40479 v 82.2224 H 389.8504 Z"
                style="fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path427" />
            </g>
            <g
                id="g429"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 276.4954,1182.016 113.355,0.647"
                style="fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path431" />
            </g>
            <path
                d="m 113.3272,290.1611 c 0.2946,-0.2946 0.2946,-0.7723 0,-1.0669 -0.2946,-0.2946 -0.7722,-0.2946 -1.0668,0 -0.2946,0.2946 -0.2946,0.7723 0,1.0669 0.2946,0.2946 0.7722,0.2946 1.0668,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path433" />
            <path
                d="m 156.0831,289.9171 c 0.2946,-0.2946 0.2946,-0.7723 0,-1.0669 -0.2946,-0.2946 -0.7723,-0.2946 -1.0669,0 -0.2946,0.2946 -0.2946,0.7723 0,1.0669 0.2946,0.2946 0.7723,0.2946 1.0669,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path435" />
            <g
                id="g437"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 428.2552,1182.663 121.7416,-0.152"
                style="fill:none;stroke:#000000;stroke-width:2;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path439" />
            </g>
            <path
                d="m 170.5688,289.9171 c 0.2946,-0.2946 0.2946,-0.7723 0,-1.0669 -0.2946,-0.2946 -0.7723,-0.2946 -1.0669,0 -0.2946,0.2946 -0.2946,0.7723 0,1.0669 0.2946,0.2946 0.7723,0.2946 1.0669,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path441" />
            <path
                d="m 216.4879,289.9745 c 0.2946,-0.2946 0.2946,-0.7722 0,-1.0668 -0.2946,-0.2946 -0.7723,-0.2946 -1.0669,0 -0.2946,0.2946 -0.2946,0.7722 0,1.0668 0.2946,0.2946 0.7723,0.2946 1.0669,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path443" />
            <g
                id="g445"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 609.9968,1182.511 104.8558,0.152"
                style="fill:none;stroke:#000000;stroke-width:4;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path447" />
            </g>
            <path
                d="m 239.3857,290.2412 c 0.4419,-0.4419 0.4419,-1.1584 0,-1.6003 -0.4419,-0.4419 -1.1584,-0.4419 -1.6003,0 -0.4419,0.4419 -0.4419,1.1584 0,1.6003 0.4419,0.4419 1.1584,0.4419 1.6003,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path449" />
            <path
                d="m 278.9358,290.1838 c 0.4419,-0.4419 0.4419,-1.1584 0,-1.6003 -0.4419,-0.4419 -1.1584,-0.4419 -1.6003,0 -0.4419,0.4419 -0.4419,1.1584 0,1.6003 0.4419,0.4419 1.1584,0.4419 1.6003,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path451" />
            <g
                id="g453"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="M 561.1959,1169.976 H 579.537"
                style="fill:none;stroke:#000000;stroke-width:1;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path455" />
            </g>
            <g
                id="g457"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 561.5433,1163.14 h 18.5875"
                style="fill:none;stroke:#000000;stroke-width:1;stroke-linecap:butt;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:2, 2;stroke-dashoffset:0;stroke-opacity:1"
                id="path459" />
            </g>
            <g
                id="g503"
                transform="matrix(0,-0.3771851,-0.3771851,0,582.8162,962.5492)">
            <path
                d="m 1062.337,410.2909 v 29.4 m 50,0 v 0 c 0,6.9036 -5.597,12.5 -12.5,12.5 -6.904,0 -12.5,-5.5964 -12.5,-12.5 v 0 c 0,6.9036 -5.597,12.5 -12.5,12.5 -6.904,0 -12.5,-5.5964 -12.5,-12.5 v 0 c 0,6.9036 -5.597,12.5 -12.5,12.5 -6.904,0 -12.5,-5.5964 -12.5,-12.5 v 0 c 0,6.9036 -5.597,12.5 -12.5,12.5 -6.904,0 -12.5,-5.5964 -12.5,-12.5 m 50,70.6 v -29.4 m -50,0 v 0 c 0,-6.9035 5.596,-12.5 12.5,-12.5 6.903,0 12.5,5.5965 12.5,12.5 v 0 c 0,-6.9035 5.596,-12.5 12.5,-12.5 6.903,0 12.5,5.5965 12.5,12.5 v 0 c 0,-6.9035 5.596,-12.5 12.5,-12.5 6.903,0 12.5,5.5965 12.5,12.5 v 0 c 0,-6.9035 5.596,-12.5 12.5,-12.5 6.903,0 12.5,5.5965 12.5,12.5"
                style="fill:none;stroke:#000000;stroke-width:5.5;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path505" />
            </g>
            <g
                id="g507"
                transform="matrix(0,-0.3771851,-0.3771851,0,821.1169,724.2485)">
            <path
                d="m 1062.337,1042.078 v 29.4 m 50,0 v 0 c 0,6.904 -5.597,12.5 -12.5,12.5 -6.904,0 -12.5,-5.596 -12.5,-12.5 v 0 c 0,6.904 -5.597,12.5 -12.5,12.5 -6.904,0 -12.5,-5.596 -12.5,-12.5 v 0 c 0,6.904 -5.597,12.5 -12.5,12.5 -6.904,0 -12.5,-5.596 -12.5,-12.5 v 0 c 0,6.904 -5.597,12.5 -12.5,12.5 -6.904,0 -12.5,-5.596 -12.5,-12.5 m 50,70.6 v -29.4 m -50,0 v 0 c 0,-6.904 5.596,-12.5 12.5,-12.5 6.903,0 12.5,5.596 12.5,12.5 v 0 c 0,-6.904 5.596,-12.5 12.5,-12.5 6.903,0 12.5,5.596 12.5,12.5 v 0 c 0,-6.904 5.596,-12.5 12.5,-12.5 6.903,0 12.5,5.596 12.5,12.5 v 0 c 0,-6.904 5.596,-12.5 12.5,-12.5 6.903,0 12.5,5.596 12.5,12.5"
                style="fill:none;stroke:#000000;stroke-width:5.5;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path509" />
            </g>
            <g
                id="g511"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 753.2573,329.6263 208.0556,-0.647"
                style="fill:none;stroke:#000000;stroke-width:4;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path513" />
            </g>
            <path
                d="m 293.4214,611.9366 c 0.4419,-0.4419 0.4419,-1.1584 0,-1.6003 -0.4419,-0.4419 -1.1583,-0.4419 -1.6002,0 -0.4419,0.4419 -0.4419,1.1584 0,1.6003 0.4419,0.4419 1.1583,0.4419 1.6002,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path515" />
            <g
                id="g517"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 753.2574,550.8762 207.7822,-0.7837"
                style="fill:none;stroke:#000000;stroke-width:4;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path519" />
            </g>
            <path
                d="m 293.4215,528.4844 c 0.4419,-0.4419 0.4419,-1.1583 0,-1.6002 -0.4419,-0.4419 -1.1584,-0.4419 -1.6003,0 -0.4419,0.4419 -0.4419,1.1583 0,1.6002 0.4419,0.4419 1.1584,0.4419 1.6003,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path521" />
            <g
                id="g523"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="M 753.2573,961.4134 963.408,960.6703"
                style="fill:none;stroke:#000000;stroke-width:4;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path525" />
            </g>
            <path
                d="m 293.4214,373.6359 c 0.4419,-0.4419 0.4419,-1.1583 0,-1.6002 -0.4419,-0.4419 -1.1583,-0.4419 -1.6002,0 -0.4419,0.4419 -0.4419,1.1583 0,1.6002 0.4419,0.4419 1.1583,0.4419 1.6002,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path527" />
            <g
                id="g529"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 753.2574,1182.663 h 208.0555 v -87.085"
                style="fill:none;stroke:#000000;stroke-width:4;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path531" />
            </g>
            <path
                d="m 293.4215,290.1838 c 0.4419,-0.4419 0.4419,-1.1584 0,-1.6003 -0.4419,-0.4419 -1.1584,-0.4419 -1.6003,0 -0.4419,0.4419 -0.4419,1.1584 0,1.6003 0.4419,0.4419 1.1584,0.4419 1.6003,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path533" />
            <path
                d="m 371.8969,323.031 c 0.4419,-0.4419 0.4419,-1.1583 0,-1.6002 -0.4419,-0.4419 -1.1584,-0.4419 -1.6003,0 -0.4419,0.4419 -0.4419,1.1583 0,1.6002 0.4419,0.4419 1.1584,0.4419 1.6003,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path535" />
            <g
                id="g537"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 961.1761,328.9793 0.1368,127.9719"
                style="fill:none;stroke:#000000;stroke-width:4;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path539" />
            </g>
            <path
                d="m 371.8969,563.9115 c 0.4419,-0.4419 0.4419,-1.1584 0,-1.6003 -0.4419,-0.4419 -1.1584,-0.4419 -1.6003,0 -0.4419,0.4419 -0.4419,1.1584 0,1.6003 0.4419,0.4419 1.1584,0.4419 1.6003,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path541" />
            <g
                id="g543"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 1012.337,460.2909 -47.5241,0.1603"
                style="fill:none;stroke:#000000;stroke-width:4;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path545" />
            </g>
            <path
                d="m 391.1423,562.6518 c 0.4419,-0.4419 0.4419,-1.1583 0,-1.6002 -0.4419,-0.4419 -1.1584,-0.4419 -1.6003,0 -0.4419,0.4419 -0.4419,1.1583 0,1.6002 0.4419,0.4419 1.1584,0.4419 1.6003,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path547" />
            <path
                d="m 373.217,562.5914 c 0.4419,-0.4419 0.4419,-1.1584 0,-1.6003 -0.4419,-0.4419 -1.1583,-0.4419 -1.6002,0 -0.4419,0.4419 -0.4419,1.1584 0,1.6003 0.4419,0.4419 1.1583,0.4419 1.6002,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path549" />
            <g
                id="g551"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="M 1012.337,1092.078 H 961.722"
                style="fill:none;stroke:#000000;stroke-width:4;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path553" />
            </g>
            <path
                d="m 391.1423,324.3512 c 0.4419,-0.4419 0.4419,-1.1584 0,-1.6003 -0.4419,-0.4419 -1.1584,-0.4419 -1.6003,0 -0.4419,0.4419 -0.4419,1.1584 0,1.6003 0.4419,0.4419 1.1584,0.4419 1.6003,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path555" />
            <path
                d="m 372.0302,324.4845 c 0.5156,-0.5155 0.5156,-1.3514 0,-1.8669 -0.5155,-0.5156 -1.3514,-0.5156 -1.8669,0 -0.5156,0.5155 -0.5156,1.3514 0,1.8669 0.5155,0.5156 1.3514,0.5156 1.8669,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path557" />
            <g
                id="g559"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 963.7877,1089.603 c 1.3669,1.367 1.3669,3.583 0,4.95 -1.3668,1.367 -3.5829,1.367 -4.9497,0 -1.3668,-1.367 -1.3668,-3.583 0,-4.95 1.3668,-1.367 3.5829,-1.367 4.9497,0"
                style="fill:none;stroke:#000000;stroke-width:4;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path561" />
            </g>
            <g
                id="g563"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 1112.337,460.2909 288.6,-0.0195"
                style="fill:none;stroke:#000000;stroke-width:6;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path565" />
            </g>
            <path
                d="m 429.1275,562.9185 c 0.5892,-0.5892 0.5892,-1.5445 0,-2.1337 -0.5892,-0.5891 -1.5445,-0.5891 -2.1337,0 -0.5892,0.5892 -0.5892,1.5445 0,2.1337 0.5892,0.5892 1.5445,0.5892 2.1337,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path567" />
            <g
                id="g569"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 1112.337,1092.078 h 290.49"
                style="fill:none;stroke:#000000;stroke-width:6;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path571" />
            </g>
            <path
                d="m 429.1275,324.6179 c 0.5892,-0.5892 0.5892,-1.5445 0,-2.1337 -0.5892,-0.5892 -1.5445,-0.5892 -2.1337,0 -0.5892,0.5892 -0.5892,1.5445 0,2.1337 0.5892,0.5892 1.5445,0.5892 2.1337,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path573" />
            <g
                id="g575"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="M 1401.839,460.241 V 711.9156"
                style="fill:none;stroke:#000000;stroke-width:6;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path577" />
            </g>
            <g
                id="g579"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="M 1402.247,839.4536 V 1091.128"
                style="fill:none;stroke:#000000;stroke-width:3;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path581" />
            </g>
            <g
                id="g583"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 1401.839,711.9156 168.062,-0.4848"
                style="fill:none;stroke:#000000;stroke-width:6;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path585" />
            </g>
            <g
                id="g587"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 1402.247,839.4536 167.329,-1.5943"
                style="fill:none;stroke:#000000;stroke-width:6;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path589" />
            </g>
            <g
                id="g591"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path class="dynamicState01"
                d="m 1568.985,686.9066 h 50 v 50 h -50 z"
                style="fill:none;stroke:#000000;stroke-width:6;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path593" />
            </g>
            <g
                id="g595"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path class="dynamicState02"
                d="m 1568.985,813.1624 h 50 v 50 h -50 z"
                style="fill:none;stroke:#000000;stroke-width:6;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path597" />
            </g>
            <g
                id="g599"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 1618.985,711.9066 76.264,-0.1366"
                style="fill:none;stroke:#000000;stroke-width:6;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path601" />
            </g>
            <path
                d="m 620.2277,468.0129 c 0.5892,-0.5892 0.5892,-1.5445 0,-2.1337 -0.5892,-0.5892 -1.5445,-0.5892 -2.1337,0 -0.5892,0.5892 -0.5892,1.5445 0,2.1337 0.5892,0.5892 1.5445,0.5892 2.1337,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path603" />
            <g
                id="g605"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 1618.985,838.1624 79.256,-0.1366"
                style="fill:none;stroke:#000000;stroke-width:6;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path607" />
            </g>
            <path
                d="m 620.2277,420.3911 c 0.5892,-0.5892 0.5892,-1.5445 0,-2.1337 -0.5892,-0.5892 -1.5444,-0.5892 -2.1336,0 -0.5892,0.5892 -0.5892,1.5445 0,2.1337 0.5892,0.5892 1.5444,0.5892 2.1336,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path609" />
            <g
                id="g611"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="M 1696.882,712.0256 V 838.3169"
                style="fill:none;stroke:#000000;stroke-width:6;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path613" />
            </g>
            <path
                d="m 681.8344,467.9633 c 0.3536,-0.3535 0.3536,-0.9267 0,-1.2802 -0.3535,-0.3535 -0.9266,-0.3535 -1.2802,0 -0.3535,0.3535 -0.3535,0.9267 0,1.2802 0.3536,0.3535 0.9267,0.3535 1.2802,0 m 20.8207,0 c 0.3535,-0.3535 0.3535,-0.9267 0,-1.2802 -0.3536,-0.3535 -0.9267,-0.3535 -1.2802,0 -0.3536,0.3535 -0.3536,0.9267 0,1.2802 0.3535,0.3535 0.9266,0.3535 1.2802,0 m -20.5555,-0.6401 17.8637,6.5019"
                style="fill:#ffffff;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path615" />
            <g
                id="g617"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 1785.146,709.2095 c 0.938,0.9373 0.938,2.4569 0,3.3941 -0.937,0.9373 -2.456,0.9373 -3.394,0 -0.937,-0.9372 -0.937,-2.4568 0,-3.3941 0.938,-0.9373 2.457,-0.9373 3.394,0 m 55.2,0 c 0.938,0.9373 0.938,2.4569 0,3.3941 -0.937,0.9373 -2.456,0.9373 -3.394,0 -0.937,-0.9372 -0.937,-2.4568 0,-3.3941 0.938,-0.9373 2.457,-0.9373 3.394,0 m -54.497,1.6971 47.361,-17.2379"
                style="fill:none;stroke:#000000;stroke-width:6;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path619" />
            </g>
            <g
                id="g621"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 1697.019,712.1622 84.976,-0.7314"
                style="fill:none;stroke:#000000;stroke-width:6;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path623" />
            </g>
            <path
                d="m 681.8344,419.9643 c 0.3536,-0.3535 0.3536,-0.9267 0,-1.2802 -0.3535,-0.3535 -0.9266,-0.3535 -1.2802,0 -0.3535,0.3535 -0.3535,0.9267 0,1.2802 0.3536,0.3535 0.9267,0.3535 1.2802,0 m 20.8207,0 c 0.3535,-0.3535 0.3535,-0.9267 0,-1.2802 -0.3536,-0.3535 -0.9267,-0.3535 -1.2802,0 -0.3536,0.3535 -0.3536,0.9267 0,1.2802 0.3535,0.3535 0.9266,0.3535 1.2802,0 m -20.5555,-0.6401 17.8637,6.5018"
                style="fill:#ffffff;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path625" />
            <g
                id="g627"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 1785.146,836.4654 c 0.938,0.9373 0.938,2.4569 0,3.3941 -0.937,0.9373 -2.456,0.9373 -3.394,0 -0.937,-0.9372 -0.937,-2.4568 0,-3.3941 0.938,-0.9372 2.457,-0.9372 3.394,0 m 55.2,0 c 0.938,0.9373 0.938,2.4569 0,3.3941 -0.937,0.9373 -2.456,0.9373 -3.394,0 -0.937,-0.9372 -0.937,-2.4568 0,-3.3941 0.938,-0.9372 2.457,-0.9372 3.394,0 m -54.497,1.6971 47.361,-17.2379"
                style="fill:none;stroke:#000000;stroke-width:6;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path629" />
            </g>
            <g
                id="g631"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 1697.019,838.4535 84.03,-0.291"
                style="fill:none;stroke:#000000;stroke-width:6;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path633" />
            </g>
            <path
                d="m 681.3559,420.391 c 0.5892,-0.5892 0.5892,-1.5445 0,-2.1337 -0.5892,-0.5892 -1.5444,-0.5892 -2.1336,0 -0.5892,0.5892 -0.5892,1.5445 0,2.1337 0.5892,0.5892 1.5444,0.5892 2.1336,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path635" />
            <g
                id="g637"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 1841.049,838.1625 120.655,-0.1187"
                style="fill:none;stroke:#000000;stroke-width:6;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path639" />
            </g>
            <g
                id="g641"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 1961.704,838.0438 -5.46,0.005 m 0.01,5.029 -0.01,-10.0581 23.665,5.0058 z"
                style="fill:none;stroke:#000000;stroke-width:1;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path643" />
            </g>
            <path
                d="m 748.4292,419.369 -2.0594,-0.002 m 0.002,-1.8969 -0.004,3.7938 8.9261,-1.8881 -8.9223,-1.9057 z"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path645" />
            <path
                d="m 703.987,420.391 c 0.5892,-0.5892 0.5892,-1.5445 0,-2.1337 -0.5892,-0.5892 -1.5444,-0.5892 -2.1336,0 -0.5892,0.5892 -0.5892,1.5445 0,2.1337 0.5892,0.5892 1.5444,0.5892 2.1336,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path647" />
            <g
                id="g673"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="M 1839.919,710.2051 H 1960.71"
                style="fill:none;stroke:#000000;stroke-width:6;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path675" />
            </g>
            <g
                id="g677"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 1960.71,710.2051 h -5.46 m 0,5.0291 V 705.176 l 23.66,5.0291 z"
                style="fill:none;stroke:#000000;stroke-width:1;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path679" />
            </g>
            <path
                d="m 748.0544,467.5878 h -2.0594 m 0,-1.8969 v 3.7938 l 8.9242,-1.8969 z"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path681" />
            <g
                id="g707"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="M 484.6068,207.7864 H 675.387 v 1190.017 H 484.6068 Z"
                style="fill:none;stroke:#000000;stroke-width:1;stroke-linecap:butt;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:6, 2;stroke-dashoffset:0;stroke-opacity:1"
                id="path709" />
            </g>
            <g
                id="g711"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 1522.992,511.4164 h 645.3814 v 513.2159 H 1522.992 Z"
                style="fill:none;stroke:#000000;stroke-width:1;stroke-linecap:butt;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:2, 2;stroke-dashoffset:0;stroke-opacity:1"
                id="path713" />
            </g>
            <path
                d="m 372.0302,562.7247 c 0.5156,-0.5155 0.5156,-1.3514 0,-1.867 -0.5155,-0.5155 -1.3514,-0.5155 -1.8669,0 -0.5156,0.5156 -0.5156,1.3515 0,1.867 0.5155,0.5156 1.3514,0.5156 1.8669,0"
                style="fill:#000000;fill-opacity:1;fill-rule:nonzero;stroke:none"
                id="path715" />
            <g
                id="g717"
                transform="matrix(0.3771851,0,0,-0.3771851,8.503906,735.4665)">
            <path
                d="m 963.7877,457.9764 c 1.3669,1.3668 1.3669,3.5829 0,4.9497 -1.3668,1.3668 -3.5829,1.3668 -4.9497,0 -1.3668,-1.3668 -1.3668,-3.5829 0,-4.9497 1.3668,-1.3669 3.5829,-1.3669 4.9497,0"
                style="fill:none;stroke:#000000;stroke-width:4;stroke-linecap:round;stroke-linejoin:round;stroke-miterlimit:10;stroke-dasharray:none;stroke-opacity:1"
                id="path719" />
            </g>
            </g>
            </g>
            </g>
            </svg>
        </div>
    
    </body>
</html>
