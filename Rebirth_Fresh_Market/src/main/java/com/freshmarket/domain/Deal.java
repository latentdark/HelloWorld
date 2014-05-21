package com.freshmarket.domain;

import java.util.Date;



public class Deal {
    private Integer itemNo;
    private Integer registerUserNo;
    private Integer contactUserNo;
    private Date dealDate;
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

	public Integer getContactUserNo() {
		return contactUserNo;
	}

	public void setContactUserNo(Integer contactUserNo) {
		this.contactUserNo = contactUserNo;
	}

	public Date getDealDate() {
		return dealDate;
	}

	public void setDealDate(Date dealDate) {
		this.dealDate = dealDate;
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
				+ ", contactUserNo=" + contactUserNo + ", dealDate=" + dealDate
				+ ", location=" + location + "]";
	}
    
}