<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style><%@include file="/WEB-INF/css/weatherdetail.css"%></style>
        <style><%@include file="/WEB-INF/css/newHead.css"%></style>

        <script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="javascript/WeatherPageAjax.js"></script>
        <script src="javascript/AjaxHandler.js"></script>
        
          <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    
        <title>Weather Detail</title>
    </head>
    <body>
         <nav  class="navbar navbar-expand-lg navbar-light" style="background-color: #f3f3f3;"> 
        <div class="container-fluid">
          <h1 class="left">WEATHER DETAILS</h1>
         
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button><div class="float-right box">
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul  id="navigation"class="navbar-nav me-auto mb-2 mb-lg-0">

              <li class="nav-item" id="currentPage" f>
                <a class="nav-link"  id="current" aria-current="page">Weather</a>
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
        <div class="wrapall" id="electricDiagram">
            <div id="graphs">

                <table id="table" class="table table-hover table-bordered ">
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
 <div class="col-lg" id="table">
            <div id="data" >
                <table id="table" class="table table-hover table-bordered ">





                    <tr>
                        <th scope="col"></th>
                        <th scope="col"colspan="4">Current</th>

                        <th scope="col"colspan="4">Maximum</th>

                        <th scope="col"colspan="4">Minimum</th> 

                    </tr>
                    <tr>

                        <th scope="row">Solar irradiance (POA)</th>
                        <td colspan="4" id="Facility_Get_SolarirridiancePOA" class="realtime">


                            0
                        </td>

                        <td colspan="4" id="Facility_Get_SolarirridiancePOAMax"class="wd">

                            0
                        </td>


                        <td colspan="4"id="Facility_Get_SolarirridiancePOAMin"class="wd"hidden>
                             0
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">Solar irradiance (GHI)</th>


                        <td colspan="4" id="Facility_Get_SolarirridianceGHI" class="realtime">

                            0
                        </td>
                        <td colspan="4" id="Facility_Get_SolarirridianceGHIMax"class="wd">


                            0
                        </td>
                        <td colspan="4" id="Facility_Get_SolarirridianceGHIMin"class="wd" hidden>
                             0
                        </td>

                    </tr>


                    <tr>
                        <th scope="row">Ambient Temperature</th>

                        <td colspan="4" id="Facility_Get_AmbientTemperature" class="realtime">


                            0
                        </td>
                        <td colspan="4" id="Facility_Get_AmbientTemperatureMax"class="wd">
                            

                            0
                        </td>
                        <td colspan="4" id="Facility_Get_AmbientTemperatureMin"class="wd">
                            

                            0
                        </td>

                    </tr>
                    <tr>
                        <th scope="row">Wind Speed</th>

                        <td colspan="4" id="Facility_Get_WindSpeed" class="realtime">


                            0
                        </td>
                        <td colspan="4" id="Facility_Get_WindSpeedMax"class="wd">
                            

                            0
                        </td>
                        <td colspan="4" id="Facility_Get_WindSpeedMin"class="wd">
                            

                            0
                        </td>

                    </tr>
                    <tr>
                        <th scope="row">Back of Panel Temperature - 1</th>

                        <td colspan="4" id="Facility_Get_BackOfPanelTemperature1" class="realtime">


                            0
                        </td>
                        <td colspan="4" id="Facility_Get_BackOfPanelTemperature1Max"class="wd">


                            0
                        </td>
                        <td colspan="4" id="Facility_Get_BackOfPanelTemperature1Min" class="wd">


                            0
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">Back of Panel Temperature - 2</th>

                        <td colspan="4" id="Facility_Get_BackOfPanelTemperature2" class="realtime">


                            0
                        </td>
                        <td colspan="4" id="Facility_Get_BackOfPanelTemperature2Max"class="wd">


                            0
                        </td>
                        <td colspan="4" id="Facility_Get_BackOfPanelTemperature2Min"class="wd">


                            0
                        </td>
                    </tr>
                    <tr> <th scope="row">AC Output</th>
                        

<td colspan="4" id="Pcc_Get_AcOutputEnergy" class="realtime">
0
</td>
<td colspan="4" id="Pcc_Get_AcOutputEnergyMax">
0
</td>
<td colspan="4" id="Pcc_Get_AcOutputEnergyMin" hidden>
0
</td>
</tr>
                   
                </table>



            </div>



        </div>

    </body>
</html>
