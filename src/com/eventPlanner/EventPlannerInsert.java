package com.eventPlanner;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EventPlannerInsert")
public class EventPlannerInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		String name = request.getParameter("name");
		String NicLic = request.getParameter("nicdr");
		String Expe = request.getParameter("experiences");
		String Qualifications = request.getParameter("Qual");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String userid = request.getParameter("uid");
		String password = request.getParameter("pwd");
		
		boolean isTrue;
		isTrue = EventPlannerDBUtil.inserteventplanner(name,NicLic,Expe,Qualifications , email, mobile, userid, password);
		
		if(isTrue == true) {
			System.out.println("Welcome to the System Event Planner");
         	out.println("<script type='text/javascript'>");
				out.println("alert('Your Account is Successfully Created. Now you can control the dashboard');");
				out.println("location='VendorANDbookingRetrieve.jsp'");
				out.println("</script>");
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("LoginUnsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
