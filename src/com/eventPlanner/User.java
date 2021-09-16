package com.eventPlanner;

public abstract class User implements ICompute{
	private String name;
    private String epmail;
    private String phone;
    private String userName;
    private String password;
    
    
    public User(String name, String epmail, String phone, String userName, String password) {
		this.name = name;
		this.epmail = epmail;
		this.phone = phone;
		this.userName = userName;
		this.password = password;
	}
    //Default constructor for User class
    public User() {
    	
}
    
    abstract public void WelcomeMsg();
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEpmail() {
		return epmail;
	}
	public void setEpmail(String epmail) {
		this.epmail = epmail;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
    
}