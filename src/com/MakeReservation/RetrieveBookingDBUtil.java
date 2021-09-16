package com.MakeReservation;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.BookingConfirmationForm.DBConnect;






public class RetrieveBookingDBUtil {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
		
	
	public static List<BookingDetails> getBooking() {   //get all booking details (retrieve)
		
		ArrayList<BookingDetails> bookingDetails = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from booking";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) { //next will return a boolean value
				int id = rs.getInt(1);
				String CustomerName = rs.getString(2);
				String SelectedPackage = rs.getString(3);
				String CustomerMobile = rs.getString(4);
				String CustomerEmail = rs.getString(5);
				String BookedDate = rs.getString(6);
				String SpecialMessage = rs.getString(7);
				String BookingStatus = rs.getString(8);
				
				BookingDetails book = new BookingDetails(id,CustomerName,SelectedPackage,CustomerMobile,CustomerEmail,BookedDate,SpecialMessage,BookingStatus);
				bookingDetails.add(book);
			}
			
		} catch (Exception e) {
			
		}
		
		return bookingDetails;	
	}
	
	
	    
		public static boolean validate(String CustomerName) {        //validate booking by customer name
			
			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "select * from booking where CustomerName='"+CustomerName+"'";
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
		
		public static List<BookingDetails> getBooking(String cusname) {   //get booking details (retrieve)
			
			ArrayList<BookingDetails> booking = new ArrayList<>();
			
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "select * from booking where CustomerName='"+cusname+"'";
				rs = stmt.executeQuery(sql);
				
				while (rs.next()) { //next will return a boolean value
					int id = rs.getInt(1);
					String CustomerName = rs.getString(2);
					String SelectedPackage = rs.getString(3);
					String CustomerMobile = rs.getString(4);
					String CustomerEmail = rs.getString(5);
					String BookedDate = rs.getString(6);
					String SpecialMessage = rs.getString(7);
					String BookingStatus = rs.getString(8);
					
					BookingDetails b = new BookingDetails(id,CustomerName,SelectedPackage,CustomerMobile,CustomerEmail,BookedDate,SpecialMessage,BookingStatus);
					booking.add(b);
				}
				
			} catch (Exception e) {
				
			}
			
			return booking;	
		}
		
	    public static boolean updatebooking(String id, String name,String pkg,String phone,String mail,String bdate, String snote, String ss) {    //update booking data
	    	
	    	try {
	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql="update booking set CustomerName='"+name+"',SelectedPackage='"+pkg+"',CustomerMobile='"+phone+"',CustomerEmail='"+mail+"',BookedDate='"+bdate+"',SpecialMessage='"+snote+"',BookingStatus='"+ss+"'"
	    				+"where bookingID='"+id+"'";
	    		
	    		int rs = stmt.executeUpdate(sql);
	    		if(rs > 0) {			//update success status
	    			isSuccess = true;   //1 will return
	    		} else {
	    			isSuccess = false; //0 will return
	    		}
	    	}
	    	
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}
	    	return isSuccess;
	    }
}