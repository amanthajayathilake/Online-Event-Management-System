package com.Customer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.BookingConfirmationForm.DBConnect;


public class CustomerDetailsDBUtil {
	
	private static boolean x;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
    
	public static boolean validate(String username, String password) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from customer where username='"+username+"' and password='"+password+"'";
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
	
	public static List<Customer> getCustomer(String userName) {
		
		ArrayList<Customer> customer = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from customer where username='"+userName+"'";
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
			
		}
		
		return customer;	
	}
	
	
    public static boolean insertcustomer(String CustomerName,String NIC,String Gender, String email, String phone, String username, String password) {
    	
    	boolean x = false;
    	
    	try {
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    	    String sql = "insert into customer values (0,'"+CustomerName+"','"+NIC+"','"+Gender+"','"+email+"','"+phone+"','"+username+"','"+password+"')";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			x = true;
    		} else {
    			x = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
 	
    	return x;
    }
    
public static boolean updatecustomer(String id, String name,String NICno,String Gend, String mail,String phone,String user,String pass) {    //update booking data
    	
    	try {
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql="update customer set CustomerName='"+name+"',NIC='"+NICno+"', Gender='"+Gend+"', email='"+mail+"',mobile='"+phone+"',username='"+user+"',password='"+pass+"'"
    				+"where id='"+id+"'";
    		
    		int rs = stmt.executeUpdate(sql);
    		if(rs > 0) {			//update success status
    			x = true;   //1 will return
    		} else {
    			x = false; //0 will return
    		}
    	}
    	
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	return x;
    }
}
