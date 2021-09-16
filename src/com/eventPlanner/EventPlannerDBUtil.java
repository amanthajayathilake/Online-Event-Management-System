package com.eventPlanner;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;




public class EventPlannerDBUtil {
	
	private static boolean EP;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
    
	public static boolean validate(String username, String password) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from eventplanner where username='"+username+"' and password='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				EP = true;
			} else {
				EP = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return EP;
	}
	
	public static List<EventPlanner> getEplanner(String userName) {
		
		ArrayList<EventPlanner> eventPlanner = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from eventplanner where username='"+userName+"'";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String NIC_DrivingLIC = rs.getString(3);
				String experience = rs.getString(4);
				String qualifications = rs.getString(5);
				String email = rs.getString(6);
				String phone = rs.getString(7);
				String username = rs.getString(8);
				String password = rs.getString(9);
				
				EventPlanner ev = new EventPlanner(id,name,NIC_DrivingLIC,experience,qualifications,email,phone,username,password);
				eventPlanner.add(ev);
			}
			
		} catch (Exception e) {
			
		}
		
		return eventPlanner;	
	}
	
	
    public static boolean inserteventplanner(String name,String NIC_DrivingLIC,String experience,String qualifications, String email, String phone, String username, String password) {
    	
    	boolean isSuccess = false;
    	
    	try {
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    	    String sql = "insert into eventplanner values (0,'"+name+"','"+NIC_DrivingLIC+"','"+experience+"','"+qualifications+"','"+email+"','"+phone+"','"+username+"','"+password+"')";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess = true;
    		} else {
    			isSuccess = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
 	
    	return isSuccess;
    }
    
    public static boolean updateeventplanner(String e_id, String e_name,String e_nic,String e_exp, String e_qual,String e_email,
    										 String e_phone,String e_user,String e_pass) 
    {    //update booking data
    	
    	try {
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql="update eventplanner set name='"+e_name+"',NIC_DrivingLIC='"+e_nic+"', experience='"+e_exp+"', qualifications='"+e_qual+"',"
    				+ "email='"+e_email+"',mobile='"+e_phone+"',username='"+e_user+"',password='"+e_pass+"'"
    				+"where id='"+e_id+"'";
    		
    		int rs = stmt.executeUpdate(sql);
    		if(rs > 0) {			//update success status
    			EP = true;   //1 will return
    		} else {
    			EP = false; //0 will return
    		}
    	}
    	
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	return EP;
    }
    
    public static boolean deleteeventPlanner(String id){
        
    	int convId = Integer.parseInt(id);
    	
    	try {
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql="delete from eventplanner where id='"+convId+"'";
    		
    		int rs = stmt.executeUpdate(sql);
    		if(rs > 0) {			//delete success status
    			EP = true;   //if success, 1 will return
    		} else {
    			EP = false; //if unsuccess, 0 will return
    		}
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    return EP;
    }
}
