package com.jobportal.entity;

public class User {
	
	private int id;
	private String fname ;
	private String qualification;
	private String email;
	private String password;
	private String role;
	
	
	public User(String fname, String qualification, String email, String password, String role) {
		super();
		
		this.fname = fname;
		this.qualification = qualification;
		this.email = email;
		this.password = password;
		this.role = role;
	}
	
	
	public User() {
		
	}


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}


	@Override
	public String toString() {
		return "User [id=" + id + ", fname=" + fname + ", qualification=" + qualification + ", email=" + email
				+ ", password=" + password + ", role=" + role + "]";
	}
	
	
	

}
