<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">

    <head>
        <meta charset="utf-8">
        <title>Read Logs</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <script src="javascript/readlog.js" type="text/javascript"></script>
             <style><%@include file="/WEB-INF//css/readlog.css"%></style>
          <style><%@include file="/WEB-INF//css/newHead.css"%></style>
                    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    
     <title>Write Logs</title>
    </head>

    <body onload="SetDate()">
         <nav  class="navbar navbar-expand-lg navbar-light" style="background-color: #f3f3f3;"> 
        <div class="container-fluid">
          <h1 class="left">READ LOGS</h1>
         
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button><div class="float-right box">
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul  id="navigation"class="navbar-nav me-auto mb-2 mb-lg-0">

              <li class="nav-item" id="currentPage" f>
                <a class="nav-link"  id="current" aria-current="page">Logs</a>
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
            <div id="form">
                
                <div>
                    <form method="POST" action="readlog">
                        
                      
                        <label class="col-lg-11 col-form-label" style="font-size:25px;">Select dates</label><br />
                        <div class="form-floating mb-5">
                        <label class="col-lg-11 col-form-label">From: </label>
                        </div>
                        <div class="col-lg-3">
                        <input class="form-control form-control-lg" type="date" id="fromDate" name="from" value="">
                        </div>
                        <div class="form-floating mb-5">
                        <label class="col-lg-11 col-form-label">To: </label>
                        </div>
                        <div class="col-lg-2">
                        <input class="form-control form-control-lg" type="date" id="toDate" name="to" value="">
                        </div>
                        <br />
                        <label class="col-lg-11 col-form-label">Select log type:</label>
                        <div class="container w-25">
                        <select class="form-select " name="logType" id="logType">
                            <option value="1">Inspection</option>
                            <option value="2">Maintenance</option>
                            <option value="3">Planner Outage</option>
                            <option value="4">Forced Outage</option>
                            <option value="5">Other</option>
                        </select>
                        </div>
                        <br/>
                        <input  type="hidden" name="action" value="datesearch">
                        <input type="submit" value="Submit">
                    </form>
                </div>
                <div id="logList">
                    <h3>RESULTS</h3>
                 
                       <table id="table" class="table table-hover table-bordered ">
                           <thead>
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">Log Type</th>
                                <th scope="col">Log Date</th>
                                <th scope="col">View Log</th>
<!--                                <th></th>-->
                            </tr>
                           </thead>
                            <tbody>
                            <c:forEach var="log" items="${logList}" >
                                 
                                <tr>
                                    <td>${log.getLogId()}</td>
                                    <td>${log.logTypeToString()}</td>
                                    <td>${log.getTimeGST()}</td>                          
                                    <!--<td>${log.getLogText()}</td>-->
                                    <td><a href="readlog?action=view&amp;logID=${log.getLogId()}">View</a></td>
                                    <td>                                
                                        <form action="readlog" method="POST">
                                            <input type="hidden" name="action" value="view">
                                            <input type="hidden" name="logID" value="${log.getLogId()}"/>
                                        </form></td>
                                </tr>
                                 
                            </c:forEach>
                                 </tbody>
                        </table>
                  
                </div>
                <div>
                    <c:if test="${selectedLog ne null}">
                        <h2>View</h2>
                        <form action="readlog" method="POST">
                            <label class="col-lg-11 col-form-label">Date and time:</label>
                               <div class="col-lg-2">
                            <input class="form-control form-control-lg" type="text" id="date" value="${selectedLog.getTimeGST()}" size="25"/>
                            </div>
                            <br />
                            <label class="col-lg-11 col-form-label">Log Type:</label>
                            <div class="col-lg-2">
                            <input class="form-control form-control-lg" type="text" id="typeLog" value="${selectedLog.logTypeToString()}" />
                            </div>
                            <br />
                            <label class="col-lg-11 col-form-label">By:</label>
                            <div class="col-lg-2">
                            <input  class="form-control form-control-lg" type="text" id="selectedEmail"  value='${selectedLog.email.getEmail()}' />
                            </div>
                            <br/>
                            <textarea name="contents" rows="20" cols="75">${selectedLog.logText}</textarea><br>
                        </form>
                    </c:if>

                </div>
            </div>

         </div>
    </body>
</html>
