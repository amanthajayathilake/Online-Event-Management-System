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


@WebServlet("/CustomerLoginServlet")
public class CustomerLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		boolean isTrue;
		
		isTrue = CustomerDetailsDBUtil.validate(userName, password);
		
		if (isTrue == true) {
			List<Customer> customerDetails = CustomerDetailsDBUtil.getCustomer(userName);
			request.setAttribute("customerDetails", customerDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("CustomerDetailsRetrieve.jsp");
			dis.forward(request, response);
		} else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your username or password is incorrect! Login again');");
			out.println("location='CustomerLoginSignUp.jsp'");
			out.println("</script>");
		}
		
	}

}

