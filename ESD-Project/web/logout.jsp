<%-- 
    Document   : logout
    Created on : 08-Nov-2018, 09:26:12
    Author     : jonasarud
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
session.invalidate();
response.sendRedirect("index.html");
%>
    </body>
</html>
