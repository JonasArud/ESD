<%@ page language="java" 
         contentType="text/html; charset=windows-1256"
         pageEncoding="windows-1256"
         import="obj.UserBean"
         %>
<jsp:useBean id="user" class="obj.UserBean" scope="session" />

<html>
    <head>
        <link rel="stylesheet" href="primaryStyle.css">
        <title> Login Page </title>
    </head>

    <body>
        <div class="subHeader">
            Welcome <%= user.getFirstName() + " " + user.getLastName()%>
        </div>
    </body>
</html>



