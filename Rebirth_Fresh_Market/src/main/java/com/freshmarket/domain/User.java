package com.freshmarket.domain;

import java.util.Date;

public class User {
    
	//Field
	private Integer userNo;
	private String email;
    private String password;
    private String phoneNumber;
    private String nickname;
    private Date date;
    private boolean active;
    private Location location;
    
    //Constructor
    public User() {
		// TODO Auto-generated constructor stub
	}

        
	public Integer getUserNo() {
		return userNo;
	}
	public void setUserNo(Integer userNo) {
		this.userNo = userNo;
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
	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	public Location getLocation() {
		return location;
	}

	public void setLocation(Location location) {
		this.location = location;
	}


	@Override
	public String toString() {
		return "User [userNo=" + userNo + ", email=" + email + ", password="
				+ password + ", phoneNumber=" + phoneNumber + ", nickname="
				+ nickname + ", date=" + date + ", active=" + active
				+ ", location=" + location + "]";
	}
    
    
}
