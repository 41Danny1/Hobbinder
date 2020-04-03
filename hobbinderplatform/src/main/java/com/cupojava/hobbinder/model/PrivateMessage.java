package com.cupojava.hobbinder.model;

public class PrivateMessage {

	private int messageID;
	private String content;
	private String messageDate;
	private String messageTime;
	private int senderID;
	private int recipientID;
	
	public int getMessageID() {
		return messageID;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public void setMessageID(int messageID) {
		this.messageID = messageID;
	}
	public String getMessageDate() {
		return messageDate;
	}
	public void setMessageDate(String messageDate) {
		this.messageDate = messageDate;
	}
	public String getMessageTime() {
		return messageTime;
	}
	public void setMessageTime(String messageTime) {
		this.messageTime = messageTime;
	}
	public int getSenderID() {
		return senderID;
	}
	public void setSenderID(int senderID) {
		this.senderID = senderID;
	}
	public int getRecipientID() {
		return recipientID;
	}
	public void setRecipientID(int recipientID) {
		this.recipientID = recipientID;
	}
	
	public String renderSend() {
		return "<div class='msgRight'>"+content+"</div>" + 
				"	  <div class='msgRightInfo'>20:18</div>";
	}
	
	public String renderReceive() {
		return "<div class='msgLeft'>"+content+"</div>" + 
				"	  <div class='msgLeftInfo'>20:18</div>";
	}
	
}
