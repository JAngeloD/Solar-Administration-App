<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style.css" rel="stylesheet" type="text/css">
        <title>Reset Password</title>
    </head>
    <body>        
        <h1>MFN Solar</h1>
        <h3>Reset Password</h3>
        <div>
            <p>
                Please enter your email address to reset your password.
            </p>
            <form method="POST" action="reset">
                <label>Email address:</label> 
                <input type="email" name="email">
                <input type="hidden" name="action" value="resetPassword">
                <input type="submit" value="Submit">
            </form>
        </div>
    </body>
</html>
