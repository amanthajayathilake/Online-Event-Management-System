package com.BookingConfirmationForm;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/BookingInsert")
public class BookingInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;


protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("Name");
		String pkgname = request.getParameter("packagenm");
		String mobile = request.getParameter("contact");
		String mail = request.getParameter("email");
		String bookingdate = request.getParameter("Bdate");
		String note = request.getParameter("special");
		String bookstatus = request.getParameter("bstatus");
		
		
		BookingDBUtil.validateJavaDate(bookingdate);
		
		boolean isTrue;
		isTrue = BookingDBUtil.insertbooking(name, pkgname, mobile, mail, bookingdate, note,bookstatus);
	
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("BookingSuccess.jsp");
			dis.forward(request, response);
		}
		else {
			if(isTrue == true) {
				RequestDispatcher dis2= request.getRequestDispatcher("BookingSuccess.jsp");
				dis2.forward(request, response);
		}
	}

}
}

