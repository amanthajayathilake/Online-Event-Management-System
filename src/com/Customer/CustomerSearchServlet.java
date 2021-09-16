package com.Customer;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CustomerSearchServlet")
public class CustomerSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String name = request.getParameter("cusname");
		String nicno = request.getParameter("cusnic");
		
		boolean isTrue;
		
		isTrue = CustomerSearchDBUtil.validate(name,nicno);
		
		if (isTrue == true) {
			List<Customer> customerDetails = CustomerSearchDBUtil.getCustomer(name,nicno);
			request.setAttribute("customerDetails", customerDetails);            //pass updated values
			
			RequestDispatcher dis = request.getRequestDispatcher("CustomerAccount.jsp");
			dis.forward(request, response);
			}
		
		
		else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Entered name or nic is incorrect. Try again');");
			out.println("location='CustomerDetailsRetrieve.jsp'");
			out.println("</script>");
		}
		
	}

}
