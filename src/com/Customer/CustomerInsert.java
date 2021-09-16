package com.Customer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CustomerInsert")
public class CustomerInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String nicnumber = request.getParameter("nic");
		String cusgend = request.getParameter("gen");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String userid = request.getParameter("uid");
		String password = request.getParameter("pwd");
		
		boolean isTrue;
		isTrue = CustomerDetailsDBUtil.insertcustomer(name, nicnumber,cusgend,email, mobile, userid, password);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("CustomerDetailsRetrieve.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("LoginUnsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
