<%-- 
    Document   : register
    Created on : 09-Nov-2018, 09:59:34
    Author     : jonasarud
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
            <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

        <style type="text/css">

        html, body {   
            background: rgb(55, 62, 74) url('') center center no-repeat;
            height:100%; }

         .outer-wrapper { 
            display: table;
            width: 100%;
            height: 100%;
            }

        .inner-wrapper {
              display:table-cell;
              vertical-align:middle;
              padding:15px;
            }
        .login-btn { position:fixed; top:15px; right:15px; 
            }
         form label{
          color: #000;
        }
        body h2{
            color: #000;
        }
        </style>
             <meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
            <title>Login Page</title>
    </head>

<body>
<section id="loginform" class="outer-wrapper">
  <div class="inner-wrapper">
    <div class="container">
        <div class="row">
            <div class="col-sm-4 col-sm-offset-4">
                <h2 class="text-center">REGISTER</h2>
                <form role="form" action="RegisterServlet" method="post">
                    <div class="form-group">
                        <label for="exampleInputUsername1" class="text-dark">First Name</label>
                        <input type="text" class="form-control" name ="fn" id="exampleInputUsername1" placeholder="First Name">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputUsername1" class="text-dark">Last Name</label>
                        <input type="text" class="form-control" name ="ln" id="exampleInputUsername1" placeholder="Last Name">
                    </div>               
                    <div class="form-group">
                        <label for="exampleInputUsername1" class="text-dark">Email</label>
                        <input type="text" class="form-control" name ="un" id="exampleInputUsername1" placeholder="Email">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword1">Password</label>
                      <input type="password" class="form-control" name ="pw" id="exampleInputPassword1" placeholder="Password">
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword1">Confirm Password</label>
                      <input type="password" class="form-control" name ="pw1" id="exampleInputPassword1" placeholder="Password">
                    </div>
                        <div class="form-group">
                        <label>Date of Birth</label>
                        <input type="date" class="form-control" name="date" id="exampleInputDOB1" placeholder="Date of Birth">
                      </div>
                    <button type="submit" class="btn btn-default">Create account</button> <a class="btn btn-default" href="index.html" role="button">Home</a>
                </form>
            </div>
        </div>
    </div>
</div>
</section>
</body>
</html>
