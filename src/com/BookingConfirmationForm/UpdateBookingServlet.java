package com.BookingConfirmationForm;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateBookingServlet")
public class UpdateBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id =request.getParameter("bID");
		String name =request.getParameter("customername");
		String pkg =request.getParameter("pkgwant");
		String phone =request.getParameter("contact");
		String mail =request.getParameter("Eaddress");
		String bdate =request.getParameter("bookDate");
		String snote =request.getParameter("smessage");
		String ss =request.getParameter("datestatus");
		
		BookingDBUtil.validateJavaDate(bdate);
		
		boolean isTrue;
		
		isTrue=BookingDBUtil.updatebooking(id, name, pkg, phone, mail,bdate ,snote,ss);
		
		if (isTrue==true) { //if update is success then boolean value is true and navigate to the following page
			
			List<Booking> bkDetails= BookingDBUtil.getBooking(name);
			request.setAttribute("bkDetails", bkDetails);            //pass updated values to the BookingDetails.jsp
			
			RequestDispatcher dis = request.getRequestDispatcher("BookingDetails.jsp");
			dis.forward(request, response);
		}
		else {
			
			List<Booking> bkDetails= BookingDBUtil.getBooking(name);
			request.setAttribute("bkDetails", bkDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("BookingDetails.jsp");
			dis.forward(request, response);
		}
	}

}
