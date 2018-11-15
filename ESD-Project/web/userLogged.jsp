<%@ page language="java" 
         contentType="text/html; charset=windows-1256"
         pageEncoding="windows-1256"
         import="obj.UserBean"
         %>

<html>
    <head>
        <link rel="stylesheet" href="primaryStyle.css">
        <title> Login Page </title>
    </head>

    <body>
        <%
        //allow access only if session exists
        String user = null;
        if(session.getAttribute("user") == null){
                response.sendRedirect("index.html");
        }else user = (String) session.getAttribute("user");
        String userName = null;
        String sessionID = null;
        Cookie[] cookies = request.getCookies();
        if(cookies !=null){
        for(Cookie cookie : cookies){
                if(cookie.getName().equals("user")) userName = cookie.getValue();
                if(cookie.getName().equals("JSESSIONID")) sessionID = cookie.getValue();
        }
        }else{
                sessionID = session.getId();
        }
        %>
        <div class="subHeader">
            Welcome <%=userName%>, Login successful. Your Session ID=<%=sessionID%>
            <form action="LogoutServlet" method="post">
            <input type="submit" value="Logout" >
            </form>
        </div>
    </body>
</html>



