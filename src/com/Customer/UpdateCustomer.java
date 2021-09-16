package com.Customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class UpdateCustomer
 */
@WebServlet("/UpdateCustomer")
public class UpdateCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id =request.getParameter("cusid");
		String name =request.getParameter("cusname");
		String NICno=request.getParameter("cusnic");
		String Gend =request.getParameter("cusgender");
		String mail =request.getParameter("cusemail");
		String phone =request.getParameter("cusmobile");
		String user =request.getParameter("cususername");
		String pass =request.getParameter("cuspassword");
	
		
		boolean details;
		
		details=CustomerDetailsDBUtil.updatecustomer(id, name,NICno,Gend, mail, phone, user,pass);
		
		if (details==true) { //if update is success then boolean value is true and navigate to the following page
			
			List<Customer> customerDetails = CustomerSearchDBUtil.getCustomer(name,NICno);
			request.setAttribute("customerDetails", customerDetails);            //pass updated values
			
			RequestDispatcher dis = request.getRequestDispatcher("CustomerAccount.jsp");
			dis.forward(request, response);
		}
		else {
			
			List<Customer> customerDetails = CustomerSearchDBUtil.getCustomer(name,NICno);
			request.setAttribute("customerDetails", customerDetails);           
			
			RequestDispatcher dis = request.getRequestDispatcher("CustomerAccount.jsp");
			dis.forward(request, response);
		}
	}

}
