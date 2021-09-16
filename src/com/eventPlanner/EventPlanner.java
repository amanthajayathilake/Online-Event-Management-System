package com.eventPlanner;

public class EventPlanner extends User {
    private int id;
    private String niclic;
    private String exp;
    private String qualfy;
    private static EventPlanner ep1 = null;
    
    public EventPlanner(int id, String name,String niclic, String exp,String qualfy,String epmail, String phone, 
    		String userName, String password) {
    	super(name, epmail, phone, userName, password);
    		this.id = id;
    		this.niclic = niclic;
    		this.exp = exp;
    		this.qualfy = qualfy;
    }
    
    public EventPlanner() {
    	
    }
    @Override
	public void WelcomeMsg() {
		// TODO Auto-generated method stub
		//Event planner and vendor has same method with different implementation ---- POLYMORPHISM
		System.out.println("Event Planner Logged in. Welcome Event Planner!!!");
	}
    public int getId() {
        return this.id;
    }

public static EventPlanner getInstance() {
		
		if(ep1 == null)
			return new EventPlanner();
		else 
			return ep1;
	}
    
    public String getNiclic() {
		return this.niclic;
	}

	public String getExp() {
		return this.exp;
	}
	
	public String getQualfy() {
		return this.qualfy;
	}

	 public String getName() {
			return super.getName();
		}
	      


	public String getEpmail() {
		return super.getEpmail();
	}


	public String getPhone() {
        return super.getPhone();
    }

    public String getUserName() {
        return super.getUserName();
    }

    public String getPassword() {
        return super.getPassword();
    }



	public void setId(int id) {
		this.id = id;
	}



	public void setNiclic(String niclic) {
		this.niclic = niclic;
	}



	public void setExp(String exp) {
		this.exp = exp;
	}



	public void setQualfy(String qualfy) {
		this.qualfy = qualfy;
	}    
    
	public void setName(String name) {
		super.setName(name);
	}
	
	@Override
	//@param email set email from super class
	public void setEpmail(String epmail) {
		super.setEpmail(epmail);
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
