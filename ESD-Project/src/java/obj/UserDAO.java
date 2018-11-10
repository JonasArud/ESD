package obj;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author jonasarud
 */
import model.ConnectionManager;
import obj.UserBean;
  import java.text.*;
   import java.util.*;
   import java.sql.*;

   public class UserDAO 	
   {
      static Connection currentCon = null;
      static ResultSet rs = null;  
	
	
	
      public static UserBean login(UserBean bean) {
	
         //preparing some objects for connection 
         Statement stmt = null;    
	
         String email = bean.getEmail();    
         String password = bean.getPassword();   
	    
         //String searchQuery =
           //    "select * from PASS.CUSTOMER_TABLE where EMAIL='"+ email+ "' AND PASSWORD='"+ password+ "'" ;
	 String searchQuery =
                 "SELECT FIRSTNAME, LASTNAME, EMAIL,PASSWORD FROM PASS.CUSTOMER_TABLE WHERE EMAIL='" 
                 + email+ "' AND PASSWORD='"
                 + password+ "' UNION SELECT FIRSTNAME, LASTNAME, EMAIL,PASSWORD FROM PASS.HEAD_OFFICE WHERE EMAIL='" 
                 + email+ "' AND PASSWORD='"
                 + password+ "'"
                 + "UNION SELECT FIRSTNAME, LASTNAME, EMAIL,PASSWORD FROM PASS.DRIVER_TABLE WHERE EMAIL='" 
                 + email+ "' AND PASSWORD='"
                 + password+ "'";
         
      // "System.out.println" prints in the console; Normally used to trace the process
      System.out.println("Your username is " + email);          
      System.out.println("Your password is " + password);
      System.out.println("Query: "+searchQuery);
	    
      try 
      {
         //connect to DB 
         currentCon = ConnectionManager.getConnection();
         stmt=currentCon.createStatement();
         rs = stmt.executeQuery(searchQuery);	        
         boolean more = rs.next();
	       
         // if user does not exist set the isValid variable to false
         if (!more) 
         {
            System.out.println("Sorry, you are not a registered user! Please sign up first");
            bean.setValid(false);
         } 
	        
         //if user exists set the isValid variable to true
         else if (more) 
         {
            String firstName = rs.getString("FirstName");
            String lastName = rs.getString("LastName");
	     	
            System.out.println("Welcome " + firstName + " " + lastName);
            
            bean.setFirstName(firstName);
            bean.setLastName(lastName);
            bean.setValid(true);
         }
      } 

      catch (Exception ex) 
      {
         System.out.println("Log In failed: An Exception has occurred! " + ex);
      } 
	    
      //some exception handling
      finally 
      {
         if (rs != null)	{
            try {
               rs.close();
            } catch (Exception e) {}
               rs = null;
            }
	
         if (stmt != null) {
            try {
               stmt.close();
            } catch (Exception e) {}
               stmt = null;
            }
	
         if (currentCon != null) {
            try {
               currentCon.close();
            } catch (Exception e) {
            }

            currentCon = null;
         }
      }

    return bean;
	
      }	
      
      public static UserBean register(UserBean bean){
      
          return bean;
      }
   }