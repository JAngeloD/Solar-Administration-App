<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     <style><%@include file="/WEB-INF/css/passwordReset.css"%></style>
           <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    
        <title>Reset Password</title>
    </head>
    <body>        
        <div class="wrapall" >
            <h1>MNF Solar</h1>
            <h3>Enter a new password</h3>
            <br>
            <div id="form">
                <form method="POST" action="reset">
                      <div class="form-floating mb-7">   
                    <div class="col-lg-4">
                            <input  class="form-control form-control-lg" type="password" name="newPassword">
                    </div>
                    <div class="col-lg-3">
                            <input  class="form-control form-control-lg" type="hidden" name="uuid" value="${uuid}">
                            </div>
                    <div class="col-lg-3">
                            <input  class="form-control form-control-lg" type="hidden" name="action" value="changePassword">
                            </div>
                            <br>
                            
                    <div class="col-lg-3">
                            <input  class="form-control form-control-lg" type="submit" value="Submit">
                            </div>
                      </div>
                </form>
            </div>
        </div>
    </body>
</html>
