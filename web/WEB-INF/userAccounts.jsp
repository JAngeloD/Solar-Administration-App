<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Accounts</title>
        <style><%@include file="/WEB-INF/css/users.css"%></style>
        <script src="javascript/users.js"></script>
    </head>

    <body>
        <div>
            <h1>User Management </h1>
            <div>
                <button onclick="displayAdd()">Create a New User</button>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <form method="POST" action="useraccounts" id="inline">
                    <input type="hidden" name="action" value="listUsers">                                     
                    <input type="submit" value="Manage Existing Users" onclick="displayList()">                    
                </form>                 
            </div>
        </div>
        
        <div id="newU">
            <h2>Add User</h2>
            <form method="POST" action="useraccounts">
                <label>Email: 
                <input type="text" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required>
                </label>
                <br>
                <label> User Type: 
                    <select>
                        <option value="1" name="userType">Manager</option>
                        <option value="2" name="userType">Facility Operator</option>
                        <option value="3" name="userType">Maintenance / Engineering</option>
                    </select>
                </label>
                <br>
                <label>User Status: 
                    <select>
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
                <input type="submit" value="Create User" onclick="closeAdd(); displayEdit()">
                <p>${message}</p>
            </form>
        </div>

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
                        <td>${item.type_id.type_name}</td>
                        <td>${item.firstName}</td>
                        <td>${item.lastName}</td>
                        <td>
                            <c:if test = "${item.active}">
                                ${activeMessage}
                            </c:if>
                        </td>                    
                        <form method="POST" action="useraccounts">
                            <td>
                                <input type="hidden" name="email" value="${item.email}">
                                <input type="hidden" name="action" value="fillEdit">                                     
                                <input type="submit" value="Edit" onclick="closeList()">
                            </td>
                        </form>
                    </tr>
                </c:forEach> 
            </table>
        </div>

        <div id="editU" >
            <h2>Edit user</h2>               
            <form method="POST" action="useraccounts">
                <label>Email: 
                    <input type="text" id="eml" name="email_edit" value="${email_edit}"
                           pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" readonly>
                </label>
                <br>           
                <label> User Type: 
                    <select name="typeEdit" id="type" placeholder="${type_edit}">
                        <option value="1" name="userType">Manager</option>
                        <option value="2" name="userType">Facility Operator</option>
                        <option value="3" name="userType">Maintenance / Engineering</option>
                    </select>
                </label>
                <br>
                <label> Active
                    <input type="checkbox" name="active_edit" value="${active_edit}">
                </label>
                <br>
                <label>First Name: 
                    <input type="text" id="fname" name="fname_edit" value="${fname_edit}" >
                </label>
                <br>
                <label>Last Name: 
                    <input type="text" id="lname" name="lname_edit" value="${lname_edit}" >
                </label>
                <br>
                <label>Password: 
                    <input type="password" id="pass" name="password_edit" value="${password_edit}">
                </label>
                <br>                
                <input type="hidden" name="action" value="saveUser">
                <input type="submit" value="Save">
                <input type="reset" value="Cancel">
                <p>${messageEdit}</p>
            </form>                
        </div>
        
    </body>
</html>