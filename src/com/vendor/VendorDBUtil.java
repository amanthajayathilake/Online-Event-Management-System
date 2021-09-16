package com.vendor;



import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class VendorDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
    
	public static boolean validate(String VendorPackage) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from vendor where VendorPackage='"+VendorPackage+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<Vendor> getVendor(String vendorpackage) {
		
		ArrayList<Vendor> vendor = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from vendor where VendorPackage='"+vendorpackage+"'";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int VendorID = rs.getInt(1);
				String Vendor_Name = rs.getString(2);
				String email = rs.getString(3);
				String mobile = rs.getString(4);
				String Vendor_Username = rs.getString(5);
				String password = rs.getString(6);
				String VendorPackage = rs.getString(7);
				String Venue = rs.getString(8);
				String Buffet = rs.getString(9);
				String MaxGuests = rs.getString(10);
				String Entertainment = rs.getString(11);
				String Photography = rs.getString(12);
				String Decorations = rs.getString(13);
				String Invitations = rs.getString(14);
				String CostPerPerson = rs.getString(15);
				String StartDate = rs.getString(16);
				String EndDate = rs.getString(17);
				
				
				
				Vendor ven = new Vendor(VendorID,Vendor_Name,email,mobile,Vendor_Username,password,VendorPackage,Venue,Buffet,MaxGuests,Entertainment,Photography,Decorations,Invitations,CostPerPerson,StartDate,EndDate);
				vendor.add(ven);
			}
			
		} catch (Exception e) {
			
		}
		
		return vendor;	
	}
	
	
}
