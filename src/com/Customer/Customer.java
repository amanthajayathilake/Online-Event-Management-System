package com.Customer;
/*
	SUB CLASS CUSTOMER
*/

//Customer class inherits from it's parent, User class (Customer is a User)
public class Customer extends User{
	
	//Declare Customer attributes as private
    private int id;
    private String nicno;
    private String gend;
    
    //Declare static object as null
    private static Customer customer = null;
    
    //Default constructor for Customer class
    public Customer() {
    	
    }

    //Overloaded constructor to initialize the Customer attributes
	public Customer(int id, String name, String nicno, String gend, String email, String phone, String username, String password) {
		// TODO Auto-generated constructor stub
		//Inherits properties from User class using super()
		super(name, email, phone, username, password);
		this.id = id;
		this.nicno = nicno;
		this.gend = gend;
	}

	//Declare static method from Customer class
	public static Customer getInstance() {
		
		if(customer == null)
			return new Customer();
		else 
			return customer;
	}

	//Override abstract method from parent class 
	@Override
	public void WelcomeMsg() {
		// TODO Auto-generated method stub
		//Event planner and vendor has same method with different implementation ---- POLYMORPHISM
		System.out.println("Customer Logged in. Welcome Customer!!!");
	}
	
	//@return Customer ID
	public int getId() {
		return this.id;
	}

	//@return Customer NIC Number
	public String getNicno() {
		return this.nicno;
	}

	//@return Customer Gender
	public String getGend() {
		return this.gend;
	}
	
	//@return Customer Name from super class
	public String getname() {
		return super.getName();
	}
	
	//@return Customer Email from super class
	public String getemail() {
		return super.getEmail();
	}
	
	//@return Customer Phone from super class
	public String getphone() {
		return super.getPhone();
	}
	
	//@return Customer User Name from super class
	public String getusername() {
		return super.getUserName();
	}
	
	//@return Customer Password from super class
	public String getpassword() {
		return super.getPassword();
	}
	
	//@param id set id
	public void setId(int id) {
		this.id = id;
	}
	
	//@param nicno set nicno
	public void setNicno(String nicno) {
		this.nicno = nicno;
	}
	
	//@param gend set gend
	public void setGend(String gend) {
		this.gend = gend;
	}
	
	@Override
	//@param name set name from super class
	public void setName(String name) {
		super.setName(name);
	}
	
	@Override
	//@param email set email from super class
	public void setEmail(String email) {
		super.setEmail(email);
	}
	
	@Override
	//@param phone set phone from super class
	public void setPhone(String phone) {
		super.setPhone(phone);
	}
	
	@Override
	//@param userName set userName from super class
	public void setUserName(String userName) {
		super.setUserName(userName);
	}
	
	@Override
	//@param password set password from super class
	public void setPassword(String password) {
		super.setPassword(password);
	}
}
