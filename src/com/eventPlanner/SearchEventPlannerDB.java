package com.eventPlanner;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.BookingConfirmationForm.DBConnect;




public class SearchEventPlannerDB {
	
	private static boolean x;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
    
	public static boolean validate(String NIC_DrivingLIC,String email) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from eventplanner where email='"+email+"' or NIC_DrivingLIC='"+NIC_DrivingLIC+"'";
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
	
public static List<EventPlanner> getEplanner(String niclic,String Mail) {
		
		ArrayList<EventPlanner> eventPlanner = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from eventplanner where NIC_DrivingLIC='"+niclic+"' or email='"+Mail+"'";
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
}