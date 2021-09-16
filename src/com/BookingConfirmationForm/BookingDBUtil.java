package com.BookingConfirmationForm;

import java.sql.Connection;

 import java.text.SimpleDateFormat;
import java.util.Date;
import java.text.ParseException;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class BookingDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
    
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
	
	public static List<Booking> getBooking(String cusname) {   //get booking details (retrieve)
		
		ArrayList<Booking> booking = new ArrayList<>();
		
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
				
				Booking bk = new Booking(id,CustomerName,SelectedPackage,CustomerMobile,CustomerEmail,BookedDate,SpecialMessage,BookingStatus);
				booking.add(bk);
			}
			
		} catch (Exception e) {
			
		}
		
		return booking;	
	}

	
	
    public static boolean insertbooking(String CustomerName, String SelectedPackage,  String CustomerMobile, String CustomerEmail , String BookedDate, String SpecialMessage,String BookingStatus) {  //create booking
    	
    	boolean isSuccess = false;
    	
    	try {
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    	    String sql = "insert into booking values (0,'"+CustomerName+"','"+SelectedPackage+"','"+CustomerMobile+"','"+CustomerEmail+"','"+BookedDate+"','"+SpecialMessage+"','"+BookingStatus+"')";
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
    
    

	
    
    public static boolean deletebooking(String id){
    
    	int convId = Integer.parseInt(id);
    	
    	try {
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql="delete from booking where bookingID='"+convId+"'";
    		
    		int rs = stmt.executeUpdate(sql);
    		if(rs > 0) {			//delete success status
    			isSuccess = true;   //if success, 1 will return
    		} else {
    			isSuccess = false; //if unsuccess, 0 will return
    		}
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    return isSuccess;
}
    
  
    	   public static boolean validateJavaDate(String bookingDate)
    	   {
    		/* Check if date is 'null' */
    		if (bookingDate.trim().equals(""))
    		{
    		    return true;
    		}
    		/* Date is not 'null' */
    		else
    		{
    		    /*
    		     * Set preferred date format,
    		     * For example MM-dd-yyyy, MM.dd.yyyy,dd.MM.yyyy etc.*/
    		    SimpleDateFormat sdfrmt = new SimpleDateFormat("MM/dd/yyyy");
    		    sdfrmt.setLenient(false);
    		    /* Create Date object
    		     * parse the string into date 
    	             */
    		    try
    		    {
    		        Date javaDate = sdfrmt.parse(bookingDate); 
    		        System.out.println(bookingDate+" is valid date format");
    		    }
    		    /* Date format is invalid */
    		    catch (ParseException e)
    		    {
    		        System.out.println(bookingDate+" is Invalid Date format");
    		        return false;
    		    }
    		    /* Return true if date format is valid */
    		    return true;
    		}
    	   }
    	  
    }


