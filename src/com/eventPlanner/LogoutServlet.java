package com.eventPlanner;

import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
public class LogoutServlet extends HttpServlet
{
    private static final long serialVersionUID = 1L;
     
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    { PrintWriter out = response.getWriter();
	response.setContentType("text/html");
     HttpSession session = request.getSession(false); //Fetch session object
 
        if(session!=null) //If session is not null
         {
        	
             session.invalidate(); //removes all session attributes bound to the session
             
             	System.out.println("Logged out");
             	out.println("<script type='text/javascript'>");
 				out.println("alert('You have logged out Successfully');");
 				out.println("location='HomePage.jsp'");
 				out.println("</script>");
             
            
         }
    }
}