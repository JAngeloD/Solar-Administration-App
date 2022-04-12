<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      
         <style><%@include file="/WEB-INF/css/login.css"%></style>
        <title>Login Page</title>
    </head>
    <body>
        <br>
        <form action="login" method="POST" style="max-width:500px;margin:auto">
            <label for="username">Email</label>
            <div class="input-container">
                <i class="fa fa-envelope icon"></i>
                <input type="text" id="email" class="input-field" name="email" autocomplete="username" maxlength="32" pattern="[A-Za-z0-9.-_@]+" required />
            </div>
            <br>
            <br>
            <label for="password">Password</label>
            <div class="input-container">
                <i class="fa fa-key icon"></i>

                <input type="password" class="input-field" id="password" name="password" autcomplete="username" maxlength="32"
                       pattern="[A-Za-z0-9.-_@]+" required />
            </div>
            <br>
            <input type="hidden" name="nonce" value="<%=session.getAttribute("nonce")%>"/>
            <input  type="submit" class="btn" value="Login" />
            <br>
            <br>   
        </form>        
              
        <form method="GET" action="reset" style="max-width:500px;margin:auto">
            <input class="btn" type="submit" value="Forgot Password">
        </form> 
        <div>
            <h3>${message}</h3>
            <p>${formFeedback}</p>
        </div>  
    </body>
</html>
