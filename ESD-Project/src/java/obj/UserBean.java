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
public class UserBean {
	
      private  String email;
      private  String password;
      private static String firstName;
      private static String lastName;
      private String dob;
      public boolean valid;
      
	
	
      public static String getFirstName() {
         return firstName;
	}

      public void setFirstName(String newFirstName) {
         firstName = newFirstName;
	}

	
      public static String getLastName() {
         return lastName;
	}

      public void setLastName(String newLastName) {
         lastName = newLastName;
	}
			

      public String getPassword() {
         return password;
	}

      public void setPassword(String newPassword) {
         password = newPassword;
	}
	
			
      public String getEmail() {
         return email;
			}

      public void setEmail(String newEmail) {
         email = newEmail;
	}

      public String getDob(){
          return dob;
      }
			
      public void setDob(String newDob){
          dob = newDob;
      }
      
      public boolean isValid() {
         return valid;
	}

      public void setValid(boolean newValid) {
         valid = newValid;
	}	
      public void isLoggedOut(){
          valid = false;
      }
}