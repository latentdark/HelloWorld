package com.freshmarket.domain;

import java.sql.Time;
import java.util.Date;


public class Deal {
    private Integer itemNo;
    private Integer registerUserNo;
    private String registerUserName;	//거래 등록자 닉네임
    private Integer contactUserNo;
    private String contactUserName;		//거래 상대방 닉네임
    private Date dealDate;
    private Time time;			//Date가 날짜만 나와서 만나는 시간 추가함
	private Location location;
    
    public Deal() {
		// TODO Auto-generated constructor stub
	}

	public Integer getItemNo() {
		return itemNo;
	}

	public void setItemNo(Integer itemNo) {
		this.itemNo = itemNo;
	}

	public Integer getRegisterUserNo() {
		return registerUserNo;
	}

	public void setRegisterUserNo(Integer registerUserNo) {
		this.registerUserNo = registerUserNo;
	}

	public String getRegisterUserName() {
		return registerUserName;
	}

	public void setRegisterUserName(String registerUserName) {
		this.registerUserName = registerUserName;
	}

	public Integer getContactUserNo() {
		return contactUserNo;
	}

	public void setContactUserNo(Integer contactUserNo) {
		this.contactUserNo = contactUserNo;
	}

	public String getContactUserName() {
		return contactUserName;
	}

	public void setContactUserName(String contactUserName) {
		this.contactUserName = contactUserName;
	}

	public Date getDealDate() {
		return dealDate;
	}

	public void setDealDate(Date dealDate) {
		this.dealDate = dealDate;
	}

	public Time getTime() {
		return time;
	}

	public void setTime(Time time) {
		this.time = time;
	}

	public Location getLocation() {
		return location;
	}

	public void setLocation(Location location) {
		this.location = location;
	}

	@Override
	public String toString() {
		return "Deal [itemNo=" + itemNo + ", registerUserNo=" + registerUserNo
				+ ", registerUserName=" + registerUserName + ", contactUserNo="
				+ contactUserNo + ", contactUserName=" + contactUserName
				+ ", dealDate=" + dealDate + ", time=" + time + ", location="
				+ location + "]";
	}

	
	  
}
