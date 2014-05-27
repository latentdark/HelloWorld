package com.freshmarket.domain;

import java.util.Date;
import java.util.List;

public class Item {
    private Integer itemNo;
    private Integer userNo;
    private String itemName;
    private String itemInfo;
    private Integer price;
    private Date regiDate;
    private Integer stateCode;
    private Integer category1;
    private Integer category2;
    private List<String> itemPicture;
    private List<Location> locationList;    
    
    public Item() {
		// TODO Auto-generated constructor stub
	}    
    
	public Integer getItemNo() {
		return itemNo;
	}
	public void setItemNo(Integer itemNo) {
		this.itemNo = itemNo;
	}
	public Integer getUserNo() {
		return userNo;
	}
	public void setUserNo(Integer userNo) {
		this.userNo = userNo;
	}

	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	
	public String getItemInfo() {
		return itemInfo;
	}
	public void setItemInfo(String itemInfo) {
		this.itemInfo = itemInfo;
	}
	
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public Date getRegiDate() {
		return regiDate;
	}
	public void setRegiDate(Date regiDate) {
		this.regiDate = regiDate;
	}
	public Integer getStateCode() {
		return stateCode;
	}
	public void setStateCode(Integer stateCode) {
		this.stateCode = stateCode;
	}
	public Integer getCategory1() {
		return category1;
	}
	public void setCategory1(Integer category1) {
		this.category1 = category1;
	}
	public Integer getCategory2() {
		return category2;
	}
	public void setCategory2(Integer category2) {
		this.category2 = category2;
	}
	public List<String> getItemPicture() {
		return itemPicture;
	}
	public void setItemPicture(List<String> itemPicture) {
		this.itemPicture = itemPicture;
	}
	public List<Location> getLocationList() {
		return locationList;
	}
	public void setLocationList(List<Location> locationList) {
		this.locationList = locationList;
	}

	@Override
	public String toString() {
		return "Item [itemNo=" + itemNo + ", userNo=" + userNo + ", itemName="
				+ itemName + ", itemInfo=" + itemInfo + ", price=" + price
				+ ", regiDate=" + regiDate + ", stateCode=" + stateCode
				+ ", category1=" + category1 + ", category2=" + category2
				+ ", itemPicture=" + itemPicture + ", locationList="
				+ locationList + "]";
	}

	
}
