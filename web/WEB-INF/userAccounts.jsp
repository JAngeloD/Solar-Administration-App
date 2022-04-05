<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Accounts</title>
        <style><%@include file="/WEB-INF/css/users.css"%></style>
           <style><%@include file="/WEB-INF/css/header.css"%></style>
        <script src="javascript/users.js"></script>
         <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
    </head>

      <body>

        <div class="headerS">
            <ul  id="navigation" class="nav">
      
              <li class="menuButton1"><a class="buttonMenu1" href="login?action=logout">Logout</a></li>
             
              <li class="currentPage"><a class="buttonMenu2" id="current" class="active":active >Accounts</a></li>
          
              <h1 class="left">USER MANAGEMENT</h1>
            </ul>
          </div>


        <div class="row">
           <div>

           
                <button class="addUser" onclick="displayAdd()">Create a New User</button>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <form method="POST" action="useraccounts" id="inline">
                    <input type="hidden" name="action" value="listUsers">                                     
                    <input  class="submitManage" type="submit" value="Manage Existing Users" onclick="displayList()">                    
                </form>                 
            </div>
      
           <div class="col p-3">
        <div id="newU">
            <h2>Add User</h2>
            <form method="POST" action="useraccounts">
                <label>Email: 
                <input type="text" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required>
                </label>
                <br>
                <label> User Type: 
                    <select name="type" id="type" required>
                        <option value="" disabled selected>select</option>
                        <option value="2" >Facility Manager</option>
                        <option value="1" >Facility Operator</option>
                        <option value="3" >Maintenance / Engineering</option>
                    </select>
                </label>
                <br>
                <label>User Status: 
                    <select name="active" required>
                        <option value="" disabled selected>select</option>
                        <option value="0" name="active">Inactive</option>
                        <option value="1" name="active">Active</option>
                    </select>
                </label>
                <br>
                <label>First Name: 
                <input type="text" name="firstName" required>
                </label>
                <br>
                <label>Last Name: 
                <input type="text" name="lastName" required>
                </label>
                <br>
                <label>Password: 
                <input type="password" name="password" placeholder="Password" required>
                </label>
                <br>
                <input type="hidden" name="action" value="addUser">
                <input class="submitCreate" type="submit" value="Create User" onclick="closeAdd(); displayEdit()">
                <p>${message}</p>
            </form>
        </div>
    </div>
    <div class="col p-3">
        <div id="listU">
            <h2>Manage users</h2>
            <p>${messageDelete}</p>
            <table id="table">
                <tr>
                    <th>Email</th>
                    <th>User Type</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Status</th>                    
                    <th> </th>
                </tr> 
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
            </table>
        </div>
    </div>
        <div class="col p-3">
        <div id="editU" >
            <h2>Edit user</h2>               
            <form method="POST" action="useraccounts">
                <label>Email: 
                    <input type="text" id="eml" name="email_edit" value="${email_e}"
                           pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" readonly>
                </label>
                <br>           
                <label> User Type: 
                    <select name="type_edit">
                        <option value="${typeval_e}" selected>${type_e}</option> 
                        <option value="2" >Facility Manager</option>
                        <option value="1" >Facility Operator</option>
                        <option value="3" >Maintenance</option>
                    </select>
                </label>
                <br>
                <label>User Status:                                         
                    <select name="active_edit">
                        <option value="${activeVal_e}" selected>${active_e}</option>
                        <option value="0" >Inactive</option>
                        <option value="1" >Active</option>
                    </select>
                </label>
                <br>
                <label>First Name: 
                    <input type="text" id="fname" name="fname_edit" value="${fname_e}" >
                </label>
                <br>
                <label>Last Name: 
                    <input type="text" id="lname" name="lname_edit" value="${lname_e}" >
                </label>
                <br>
                <label>Password: 
                    <input type="password" id="pass" name="password_edit" value="${password_e}">
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