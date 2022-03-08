<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <form action="login" method="POST">
            <label for="username">Username</label><br>
            <input type="text" id="username" name="username" autocomplete="username" maxlength="32" required/><br>
            <label for="password">Password</label><br>
            <input type="password" id="password" name="password" autcomplete="username" maxlength="32" required/><br>
            <input type="hidden" name="nonce" value="<%=session.getAttribute( "nonce" )%>"/>
            <input type="submit" value="Login"/>
        </form>
            <p>${form_feedback}</p>
    </body>
</html>
