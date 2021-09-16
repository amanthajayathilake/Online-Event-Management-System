package com.vendor;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/VendorServlet")
public class VendorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String vendorpackage = request.getParameter("username");
	
		boolean isTrue;
		
		isTrue = VendorDBUtil.validate(vendorpackage);
		
		if (isTrue == true) {
			List<Vendor> venDetails = VendorDBUtil.getVendor(vendorpackage);
			request.setAttribute("venDetails", venDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("VendorDetails.jsp");
			dis.forward(request, response);
		}
		else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Incorrect Package Name. Please Enter Again');");
			out.println("location='vendor.jsp'");
			out.println("</script>");
		}
}

}

