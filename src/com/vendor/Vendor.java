package com.vendor;

public class Vendor {
    private int id;
    private String name;
    private String email;
    private String phone;
    private String userName;
    private String password;
    private String vendorpackage;
    private String venue;
    private String buffet;
    private String maxGuests;
    private String entertainment;
    private String photography;
    private String decorations;
    private String invitations;
    private String costPerPerson;
    private String startdate;
    private String enddate;
    
    public Vendor(int id, String name, String email, String phone, 
    		String userName, String password, String vendorpackage ,String venue  , String buffet , String maxGuests ,String entertainment ,String photography ,String decorations , String invitations,String costPerPerson ,String startdate ,String enddate) {
	this.id = id;
	this.name = name;
	this.email = email;
	this.phone = phone;
	this.userName = userName;
	this.password = password;
	this.vendorpackage = vendorpackage;
	this.venue = venue;
	this.buffet = buffet;
	this.maxGuests = maxGuests;
	this.entertainment = entertainment;
	this.photography = photography;
	this.decorations = decorations;
	this.invitations = invitations;
	this.costPerPerson = costPerPerson;
	this.startdate = startdate;
	this.enddate = enddate;
    }

	public int getId() {
		return id;
	}


	public String getName() {
		return name;
	}


	public String getEmail() {
		return email;
	}

	
	public String getPhone() {
		return phone;
	}

	

	public String getUserName() {
		return userName;
	}


	public String getPassword() {
		return password;
	}


	public String getvendorpackage() {
		return vendorpackage;
	}

	
	public String getVenue() {
		return venue;
	}

	
	public String getBuffet() {
		return buffet;
	}

	public String getMaxGuests() {
		return maxGuests;
	}


	public String getEntertainment() {
		return entertainment;
	}


	public String getPhotography() {
		return photography;
	}

	

	public String getDecorations() {
		return decorations;
	}



	public String getInvitations() {
		return invitations;
	}


	public String getCostPerPerson() {
		return costPerPerson;
	}

	

	public String getStartdate() {
		return startdate;
	}

	

	public String getEnddate() {
		return enddate;
	}
}
	

   