package com.cupojava.hobbinder.dao;

import java.util.List;

import com.cupojava.hobbinder.model.PrivateMessage;

public interface PrivateMessageDao {
	List<PrivateMessage> findMessagesByUser(int userID, int recipientID);
	int sendMessage(String content, int senderID, int recipientID, String date, String time);
}
