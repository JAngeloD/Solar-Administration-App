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

  <form action="login" method="POST" style="max-width:500px;margin:auto">
    <label for="username">Email</label>
    <div class="input-container">
      <i class="fa fa-envelope icon"></i>
      <input type="text" id="email" class="input-field" name="email" autocomplete="username" maxlength="32" required />
    </div>
    <br>
    <br>
    <label for="password">Password</label>
    <div class="input-container">
      <i class="fa fa-key icon"></i>

      <input type="password" class="input-field" id="password" name="password" autcomplete="username" maxlength="32"
        required />
    </div>
    <br>

    <input type="hidden" name="nonce" value="<%=session.getAttribute( "nonce" )%>"/>
    <input type="submit" type="submit" class="btn" value="Login" />
  </form>




  <p>${formFeedback}</p>
</body>
</html>
