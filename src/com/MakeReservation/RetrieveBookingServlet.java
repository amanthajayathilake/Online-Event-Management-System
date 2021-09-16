package com.MakeReservation;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/RetrieveBookingServlet")
public class RetrieveBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		boolean isTrue=true;
		
		
		
		if (isTrue == true) {
			List<BookingDetails> bookDetails = RetrieveBookingDBUtil.getBooking();
			request.setAttribute("bookDetails", bookDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("VendorANDbookingRetrieve.jsp");
			dis.forward(request, response);
		} 
		
	}

}
