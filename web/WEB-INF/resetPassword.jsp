<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <style><%@include file="/WEB-INF/css/passwordReset.css"%></style>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<!--          <style><%@include file="/WEB-INF/css/bootstrap.min.css"%></style>
<script src="javascript/bootstrap.bundle.min.js"></script>-->
        <title>Reset Password</title>
    </head>
    <body>    
        <div class="wrapall">
        <h1>MFN Solar</h1>
        <h3>Reset Password</h3>
        <br>
       <div id="form">
                       
            <form method="POST" action="reset">
                <div class="form-floating mb-7">   
                    <p>Please enter your email address to reset your password. <br> Email address:</p>                    
                </div>   
                
                <div class="form-floating mb-5">
               <div class="col-lg-4">
                   <input  class="form-control form-control-lg" type="email" name="email" size="30">
               </div>
                <br>
                <div class="col-lg-3">
                    <input  class="form-control form-control-lg" type="hidden" name="action" value="resetPassword">
                     </div>
                <div class="col-lg-3">
                    <input  class="form-control form-control-lg" type="submit" value="Submit">
                     </div>
                  </div>
            </form>
      
        </div>
    </body>
</html>
