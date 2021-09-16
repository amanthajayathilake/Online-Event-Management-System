package com.BookingConfirmationForm;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/CancelBookingServlet")
public class CancelBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id =request.getParameter("bID");
		boolean isTrue;
		
		isTrue=BookingDBUtil.deletebooking(id);
	
		if (isTrue==true) { //if delete is success then boolean value is true and navigate to the following page
			RequestDispatcher dis = request.getRequestDispatcher("vendor.jsp");
			dis.forward(request, response);
		}
		else {
			List<Booking> bkDetails = BookingDBUtil.getBooking(id);
			request.setAttribute("bkDetails", bkDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("BookingDetails.jsp");
			dis.forward(request, response);
			
		}
	
	}
}


