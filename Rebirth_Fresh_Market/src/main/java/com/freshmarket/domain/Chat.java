package com.freshmarket.domain;

import java.util.Date;

public class Chat {
    private Integer chatNo;
    private String senderNo;
    private String receiverNo;
    private String message;
    private Date date;
    
    public Chat() {
		// TODO Auto-generated constructor stub
	}
    
	public Integer getChatNo() {
		return chatNo;
	}
	public void setChatNo(Integer chatNo) {
		this.chatNo = chatNo;
	}
	public String getSenderNo() {
		return senderNo;
	}
	public void setSenderNo(String senderNo) {
		this.senderNo = senderNo;
	}
	public String getReceiverNo() {
		return receiverNo;
	}
	public void setReceiverNo(String receiverNo) {
		this.receiverNo = receiverNo;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "Chat [chatNo=" + chatNo + ", senderNo=" + senderNo
				+ ", receiverNo=" + receiverNo + ", message=" + message
				+ ", date=" + date + "]";
	}
}
