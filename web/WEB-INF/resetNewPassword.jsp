<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style.css" rel="stylesheet" type="text/css">
        <title>Reset Password</title>
    </head>
    <body>
        
        <h1>MNF Solar</h1>
        <h3>Enter a new password</h3>
        <form method="POST" action="reset">
            <input type="password" name="newPassword">
            <input type="hidden" name="uuid" value="${uuid}">
            <input type="hidden" name="action" value="changePassword">
            <input type="submit" value="Submit">
        </form>
    </body>
</html>
