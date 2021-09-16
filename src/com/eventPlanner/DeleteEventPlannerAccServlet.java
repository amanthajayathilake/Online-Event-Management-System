package com.eventPlanner;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class DeleteEventPlannerAccServlet
 */
@WebServlet("/DeleteEventPlannerAccServlet")
public class DeleteEventPlannerAccServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		String id =request.getParameter("EpID");
		boolean EPdelete;
		
		EPdelete=EventPlannerDBUtil.deleteeventPlanner(id);
	
		if (EPdelete==true) { //if delete is success then boolean value is true and navigate to the following page
		           //pass updated values to the BookingDetails.jsp
			
			System.out.println("Account Delete was Successful");
         	out.println("<script type='text/javascript'>");
				out.println("alert('Your Account is Successfully deleted. Please register again to continue!');");
				out.println("location='HomePage.jsp'");
				out.println("</script>");
		}
		else {
			
			List<EventPlanner> evDetails= EventPlannerDBUtil.getEplanner(id);
			request.setAttribute("evDetails", evDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("UserAccount.jsp");
			dis.forward(request, response);
		}
	
	}
}