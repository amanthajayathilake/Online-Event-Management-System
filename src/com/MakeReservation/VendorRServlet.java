package com.MakeReservation;

import java.io.IOException;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/VendorRServlet")
public class VendorRServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		boolean isTrue=true;
		
		
		
		if (isTrue == true) {
			List<VendorRetrieveDetails> vDetails = RetrieveVendorsDBUtil.getVendor();
			request.setAttribute("vDetails", vDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("VendorANDbookingRetrieve.jsp");
			dis.forward(request, response);
		}
	
}

}


