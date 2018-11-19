<%-- 
    Document   : delete
    Created on : 11-Nov-2018, 14:13:16
    Author     : jonasarud
--%>

<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>

<% 
    
  String id = request.getParameter("d");
  String email = request.getParameter("j");
  
  int number = Integer.parseInt(id);
  System.out.println(email);
  System.out.println(number);
   String driverName = "org.apache.derby.jdbc.ClientDriver";
    String connectionUrl = "jdbc:derby://localhost:1527/userlogin";
    String userId = "pass";
    String password = "pass";
    try {
    Class.forName(driverName).newInstance();
    } catch (ClassNotFoundException e) {
    e.printStackTrace();
    }

    Connection connection = null;
    Statement statement = null;
    
    connection = DriverManager.getConnection(connectionUrl, userId, password);
    statement=connection.createStatement();

    statement.executeUpdate("delete from PASS.CUSTOMER_TABLE WHERE driverID="
                    + number + " AND email='"
                    + email + "' UNION delete from PASS.DRIVER_TABLE WHERE driverID="
                    + number + " AND email='"
                    + email + "' UNION ");
    
        response.sendRedirect("headOfficeHome.jsp");
    
   %>
