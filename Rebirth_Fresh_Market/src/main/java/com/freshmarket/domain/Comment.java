package com.freshmarket.domain;

import java.sql.Time;
import java.sql.Date;

public class Comment {
	
	Integer commentNo;
	Integer commentUserNo;
	Integer replyNo;
	Integer replyUserNo;
	String commentWriter;
	String replyWriter;
	String commentContent;
	String replyContent;
	Date commentRegiDate;
	Date replyRegiDate;
	Time commentTime;
	Time replyTime;
	Integer commentStateCode;
	Integer replyStateCode;
	public Integer getCommentNo() {
		return commentNo;
	}
	public void setCommentNo(Integer commentNo) {
		this.commentNo = commentNo;
	}
	public Integer getCommentUserNo() {
		return commentUserNo;
	}
	public void setCommentUserNo(Integer commentUserNo) {
		this.commentUserNo = commentUserNo;
	}
	public Integer getReplyNo() {
		return replyNo;
	}
	public void setReplyNo(Integer replyNo) {
		this.replyNo = replyNo;
	}
	public Integer getReplyUserNo() {
		return replyUserNo;
	}
	public void setReplyUserNo(Integer replyUserNo) {
		this.replyUserNo = replyUserNo;
	}
	public String getCommentWriter() {
		return commentWriter;
	}
	public void setCommentWriter(String commentWriter) {
		this.commentWriter = commentWriter;
	}
	public String getReplyWriter() {
		return replyWriter;
	}
	public void setReplyWriter(String replyWriter) {
		this.replyWriter = replyWriter;
	}
	public String getCommentContent() {
		return commentContent;
	}
	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}
	public String getReplyContent() {
		return replyContent;
	}
	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}
	public Date getCommentRegiDate() {
		return commentRegiDate;
	}
	public void setCommentRegiDate(Date commentRegiDate) {
		this.commentRegiDate = commentRegiDate;
	}
	public Date getReplyRegiDate() {
		return replyRegiDate;
	}
	public void setReplyRegiDate(Date replyRegiDate) {
		this.replyRegiDate = replyRegiDate;
	}
	public Time getCommentTime() {
		return commentTime;
	}
	public void setCommentTime(Time commentTime) {
		this.commentTime = commentTime;
	}
	public Time getReplyTime() {
		return replyTime;
	}
	public void setReplyTime(Time replyTime) {
		this.replyTime = replyTime;
	}
	public Integer getCommentStateCode() {
		return commentStateCode;
	}
	public void setCommentStateCode(Integer commentStateCode) {
		this.commentStateCode = commentStateCode;
	}
	public Integer getReplyStateCode() {
		return replyStateCode;
	}
	public void setReplyStateCode(Integer replyStateCode) {
		this.replyStateCode = replyStateCode;
	}
	@Override
	public String toString() {
		return "Comment [commentNo=" + commentNo + ", commentUserNo="
				+ commentUserNo + ", replyNo=" + replyNo + ", replyUserNo="
				+ replyUserNo + ", commentWriter=" + commentWriter
				+ ", replyWriter=" + replyWriter + ", commentContent="
				+ commentContent + ", replyContent=" + replyContent
				+ ", commentRegiDate=" + commentRegiDate + ", replyRegiDate="
				+ replyRegiDate + ", commentTime=" + commentTime
				+ ", replyTime=" + replyTime + ", commentStateCode="
				+ commentStateCode + ", replyStateCode=" + replyStateCode + "]";
	}
	
	
}
