package com.BookingConfirmationForm;

public class Booking{
	 private int id;
	    private String cusname;
	    private String pkgname;
	    private String phone;
	    private String email;
	    private String bookDate;
	    private String specialnote;
	    private String bookstatus;
	    
	    public Booking(int id, String cusname, String pkgname, String phone, 
	    		String email, String bookDate,String specialnote,String bookstatus) {
		this.id = id;
		this.cusname = cusname;
		this.pkgname = pkgname;
		this.phone = phone;
		this.email = email;
		this.bookDate = bookDate;
		this.specialnote = specialnote;
		this.bookstatus = bookstatus;
	    }

	    public int getId() {
	        return id;
	    }

	   
	    public String getCusname() {
			return cusname;
		}

		
		public String getPkgname() {
			return pkgname;
		}

		

		public String getPhone() {
	        return phone;
	    }

	    public String getEmail() {
	        return email;
	    }
	    
		public String getBookDate() {
			return bookDate;
		}


		public String getSpecialnote() {
			return specialnote;
		}

		public String getBookstatus() {
			return bookstatus;
		}

		
		

	      
	}
