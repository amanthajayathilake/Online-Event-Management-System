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
 * Servlet implementation class EventPlannerRetrieveServlet
 */
@WebServlet("/EventPlannerRetrieveServlet")
public class EventPlannerRetrieveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String EPnic = request.getParameter("eventNIC");
		String EPmail = request.getParameter("eventMAIL");
		boolean isTrue;
		
		isTrue = SearchEventPlannerDB.validate(EPnic, EPmail);
		if (isTrue == true) {
			List<EventPlanner> evDetails = SearchEventPlannerDB.getEplanner(EPnic,EPmail);
			request.setAttribute("evDetails", evDetails);
			RequestDispatcher dis = request.getRequestDispatcher("UserAccount.jsp");
			dis.forward(request, response);
		}
		else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your email or nic is incorrect Login again');");
			out.println("location='EventPlannerHomePage.jsp'");
			out.println("</script>");
		}
		
	}

}
