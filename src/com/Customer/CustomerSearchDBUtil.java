package com.Customer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.BookingConfirmationForm.DBConnect;


public class CustomerSearchDBUtil {
	
	private static boolean x;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
    
	public static boolean validate(String CustomerName, String NIC) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from customer where CustomerName='"+CustomerName+"' or NIC='"+NIC+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				x = true;
			} else {
				x = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return x;
	}
	
	public static List<Customer> getCustomer(String name, String nicno) {
		
		ArrayList<Customer> customer = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from customer where CustomerName='"+name+"' or NIC='"+nicno+"'";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int id = rs.getInt(1);
				String CustomerName = rs.getString(2);
				String NIC = rs.getString(3);
				String Gender = rs.getString(4);
				String email = rs.getString(5);
				String phone = rs.getString(6);
				String username = rs.getString(7);
				String password = rs.getString(8);
				
				Customer cus = new Customer(id,CustomerName,NIC,Gender,email,phone,username,password);
				customer.add(cus);
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return customer;	
	}
}