<%-- 
    Document   : userLogged
    Created on : 08-Nov-2018, 08:35:42
    Author     : jonasarud
--%>

<%@ page language="java" 
         contentType="text/html; charset=windows-1256"
         pageEncoding="windows-1256"
         import="obj.UserBean"
   %>
<jsp:useBean id="user" class="obj.UserBean" scope="session" />

 
   <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
            <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
            <link rel="stylesheet" href="../src/java/resources/style.css" type="text/css"/>

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
<h2 class="text-center">Welcome <%= user.getFirstName()  + " " + user.getLastName()%></h2>
</body>
</html>

  

