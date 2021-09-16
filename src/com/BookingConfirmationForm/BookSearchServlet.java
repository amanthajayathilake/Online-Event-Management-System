package com.BookingConfirmationForm;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/BookSearchServlet")
public class BookSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String cusname = request.getParameter("customername");
		
		boolean isTrue;
		
		isTrue = BookingDBUtil.validate(cusname);
		
		if (isTrue == true) {
			List<Booking> bkDetails = BookingDBUtil.getBooking(cusname);
			request.setAttribute("bkDetails", bkDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("BookingDetails.jsp");
			dis.forward(request, response);
		} else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Entered name is incorrect. Try again');");
			out.println("location='BookingSuccess.jsp'");
			out.println("</script>");
		}
		
	}

}
