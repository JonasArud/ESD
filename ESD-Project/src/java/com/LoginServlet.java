package com;

import java.io.IOException;
import obj.UserBean;
import obj.UserDAO;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, java.io.IOException {

        try {
            UserBean user = new UserBean();
            user.setEmail(request.getParameter("un"));
            user.setPassword(request.getParameter("pw"));
            user = UserDAO.login(user);

            if (user.isValid()) {
                        HttpSession session = request.getSession();
			session.setAttribute("user", "user");
			//setting session to expiry in 30 mins
			session.setMaxInactiveInterval(30*60);
			Cookie userName = new Cookie("user", user.getEmail());
			userName.setMaxAge(30*60);
			response.addCookie(userName);
                        response.sendRedirect("userLogged.jsp"); //logged-in page      		
            } else {
                response.sendRedirect("invalidLogin.jsp"); //error page 
            }
        } catch (IOException theException) {
            System.out.println(theException);
        }
    }
}
