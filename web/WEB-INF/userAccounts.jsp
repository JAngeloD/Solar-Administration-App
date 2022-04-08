<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Accounts</title>
        <style><%@include file="/WEB-INF/css/newUsers.css"%></style>
           <style><%@include file="/WEB-INF/css/newHead.css"%></style>
        <script src="javascript/users.js"></script>
 
               <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
     <title>Accounts</title>
              
              
    </head>

      <body>
          
       
      <nav  class="navbar navbar-expand-lg navbar-light" > 
        <div class="container-fluid">
          <h1 class="left">USER MANAGEMENT</h1>
         
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button><div class="float-right box">
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul  id="navigation"class="navbar-nav me-auto mb-2 mb-lg-0">

              <li class="nav-item" id="currentPage" f>
                <a class="nav-link"  id="current" aria-current="page">Accounts</a>
              </li>
             
              <li class="nav-item" id="menuButton1" f>
                <a class="nav-link active"  id="buttonMenu1" aria-current="page" href="home">Home</a>
              </li>

             
       
              <li class="nav-item dropdown" id="menuButton1" >
                <a class="nav-link dropdown-toggle"  id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
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
            
          </div>
        
      </nav>

                  <div class="no-gutters">
                      
                    <div class="row">
                      <div class="col-lg">

            <h2>Add User</h2>
            <form  method="POST" action="useraccounts">
                
                <label  class="col-lg-11 col-form-label">Email: 
                    
                <input class="form-control form-control-lg" type="text" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required>
     
            </label>
                
                <label  class="col-lg-11 col-form-label"> User Type: 
                    <select class="form-select form-select-lg"name="type" id="type" required>
                        <option value="" disabled selected>select</option>
                        <option value="2" >Facility Manager</option>
                        <option value="1" >Facility Operator</option>
                        <option value="3" >Maintenance / Engineering</option>
                    </select>
                </label>
            
                <label  class="col-lg-11 col-form-label">User Status: 
                    <select class="form-select form-select-lg" name="active" required>
                        <option value="" disabled selected>select</option>
                        <option value="0" name="active">Inactive</option>
                        <option value="1" name="active">Active</option>
                    </select>
                </label>
               
                <label class="col-lg-11 col-form-label">First Name: 
                <input class="form-control form-control-lg"type="text" name="firstName" required>
                </label>
             
                <label  class="col-lg-11 col-form-label">Last Name: 
                <input class="form-control form-control-lg"type="text" name="lastName" required>
                </label>
            
                <label  class="col-lg-11 col-form-label">Password: 
                <input class="form-control form-control-lg"type="password" name="password" placeholder="Password" required>
                </label>
               <br>
                <input type="hidden" name="action" value="addUser">
                <input class="btn btn-primary" type="submit" value="Create User" onclick="closeAdd(); displayEdit()">
                <p>${message}</p>
            </form>
        </div>
        
        <div class="col-lg" id="table">
        <!-- <div id="listU"> -->
            <h2>Manage users</h2>
            <p>${messageDelete}</p>
            <table id="table" class="table table-hover table-bordered ">
                <thead>
                <tr>
                    
                    <th scope="col">Email</th>
                    <th scope="col">User Type</th>
                    <th scope="col">First Name</th>
                    <th scope="col">Last Name</th>
                    <th scope="col">Status</th>                    
                    <th scope="col">Edit User </th>
                </tr> 
            </thead>
            <tbody>
                <c:forEach items="${list}" var="item">
                    <tr>
                        <td>${item.email}</td>
                        <td>${item.typeId.typeName}</td>
                        <td>${item.firstName}</td>
                        <td>${item.lastName}</td>
                        <td>
                            <c:choose>
                                <c:when test="${item.active}">Active</c:when>
                                <c:when test="${!item.active}">Inactive</c:when>
                             </c:choose>
                        </td>                    
                        <form method="POST" action="useraccounts">
                            <td>
                                <input type="hidden" name="email" value="${item.email}">
                                <input type="hidden" name="action" value="fillEdit">                                     
                                <input class="submitButton" type="submit" value="Edit" onclick="closeList()">
                            </td>
                        </form>
                    </tr>
                </c:forEach> 
            </tbody>
            </table>
        </div>
        <div class="col-lg">
        <!-- <div id="editU" > -->
            <h2>Edit user</h2>               
            <form method="POST" action="useraccounts">
                <label class="col-lg-11 col-form-label">Email: 
                    <input class="form-control form-control-lg"type="text" id="eml" name="email_edit" value="${email_e}"
                           pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" readonly>
                </label>
                <br>           
                <label class="col-lg-11 col-form-label"> User Type: 
                    <select class="form-select form-select-lg"name="type_edit">
                        <option value="${typeval_e}" selected>${type_e}</option> 
                        <option value="2" >Facility Manager</option>
                        <option value="1" >Facility Operator</option>
                        <option value="3" >Maintenance</option>
                    </select>
                </label>
                <br>
                <label class="col-lg-11 col-form-label">User Status:                                         
                    <select class="form-select form-select-lg"name="active_edit">
                        <option value="${activeVal_e}" selected>${active_e}</option>
                        <option value="0" >Inactive</option>
                        <option value="1" >Active</option>
                    </select>
                </label>
                <br>
                <label class="col-lg-11 col-form-label">First Name: 
                    <input class="form-control form-control-lg"type="text" id="fname" name="fname_edit" value="${fname_e}" >
                </label>
                <br>
                <label class="col-lg-11 col-form-label">Last Name: 
                    <input class="form-control form-control-lg"type="text" id="lname" name="lname_edit" value="${lname_e}" >
                </label>
                <br>
                <label class="col-lg-11 col-form-label">Password: 
                    <input class="form-control form-control-lg"type="password" id="pass" name="password_edit" value="${password_e}">
                </label>
                <br>                
                <input type="hidden" name="action" value="saveUser">
                <input class="submitSave" type="submit" value="Save">
                <input type="reset" value="Cancel">
                <p>${messageEdit}</p>
            </form>                
        </div>
    </div>
  </div>
    </body>
</html>