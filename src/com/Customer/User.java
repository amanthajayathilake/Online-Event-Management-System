package com.Customer;
/*
 	SUPER CLASS USER
*/

//User class becomes abstract as void WelcomeMsg() is abstract

public abstract class User implements ICompute{
	
	//Declare User attributes as private
    private String name;
    private String email;
    private String phone;
    private String userName;
    private String password;
    
    //Default constructor for User class
    public User() {
    	
    }
    

    //No implementation for implemented method
    abstract public void WelcomeMsg();
    
    //Overloaded constructor to initialize the User attributes
	public User(String name, String email, String phone, String userName, String password) {
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.userName = userName;
		this.password = password;
	}
    
    //@return User's Name
	public String getName() {
		return name;
	}

	//@return User's Email Address
	public String getEmail() {
		return email;
	}

	//@return User's Phone Number
	public String getPhone() {
		return phone;
	}

	//@return User's User Name
	public String getUserName() {
		return userName;
	}

	//@return User's Password
	public String getPassword() {
		return password;
	}
	
	//@param name set name
	public void setName(String name) {
		this.name = name;
	}
	
	//@param email set email
	public void setEmail(String email) {
		this.email = email;
	}
	
	//@param phone set phone
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	//@param userName set userName
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	//@param password set password
	public void setPassword(String password) {
		this.password = password;
	}
	
}
