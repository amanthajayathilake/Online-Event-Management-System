package com.eventPlanner;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class EventPlannerUpdateServlet
 */
@WebServlet("/EventPlannerUpdateServlet")
public class EventPlannerUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String e_id =request.getParameter("EpID");
		String e_name =request.getParameter("EpName");
		String e_nic =request.getParameter("EpNicDrive");
		String e_exp =request.getParameter("EpExp");
		String e_qual =request.getParameter("EpQual");
		String e_email =request.getParameter("EpEmail");
		String e_phone =request.getParameter("EpPhone");
		String e_user =request.getParameter("EpUsername");
		String e_pass =request.getParameter("EpPassword");
		
		boolean updateIsTrue;
		
		updateIsTrue=EventPlannerDBUtil.updateeventplanner(e_id, e_name, e_nic, e_exp, e_qual,e_email ,e_phone,e_user,e_pass);
		
		if (updateIsTrue==true) { //if update is success then boolean value is true and navigate to the following page
			
			List<EventPlanner> evDetails=EventPlannerDBUtil.getEplanner(e_user);
			request.setAttribute("evDetails", evDetails);            //pass updated values to the BookingDetails.jsp
			
			RequestDispatcher dis = request.getRequestDispatcher("UserAccount.jsp");
			dis.forward(request, response);
		}
		else {
			
			List<EventPlanner> evDetails= EventPlannerDBUtil.getEplanner(e_user);
			request.setAttribute("evDetails", evDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("UserAccount.jsp");
			dis.forward(request, response);
		}
	}

}
