package com.cupojava.hobbinder.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.cupojava.hobbinder.model.PrivateMessage;

@Repository
public class PrivateMessageDaoImp implements PrivateMessageDao {

	NamedParameterJdbcTemplate namedParameterJdbcTemplate;
	
	@Autowired
	public void setNamedParameterJdbcTemplate(NamedParameterJdbcTemplate namedParameterJdbcTemplate) {
		this.namedParameterJdbcTemplate = namedParameterJdbcTemplate;
	}

	public List<PrivateMessage> findMessagesByUser(int userID, int recipientID) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("sid", userID);	
		params.put("rid", recipientID);	
        
        String sql = "SELECT * FROM MESSAGES WHERE (UserID=:sid AND RecipientID=:rid) OR (UserID=:rid AND RecipientID=:sid)";
        List<PrivateMessage> results = namedParameterJdbcTemplate.query(sql, params, new MessageMapper());
        
        return results;
	}
	
	private static final class MessageMapper implements RowMapper<PrivateMessage> {

		public PrivateMessage mapRow(ResultSet rs, int rowNum) throws SQLException {
			PrivateMessage msg = new PrivateMessage();
			msg.setMessageID(rs.getInt("MessageID"));
			msg.setContent(rs.getString("MessageContent"));
			msg.setMessageDate(rs.getString("MessageDate"));
			msg.setMessageTime(rs.getString("MessageTime"));
			msg.setSenderID(rs.getInt("UserID"));
			msg.setRecipientID(rs.getInt("RecipientID"));
			return msg;
		}
	}

	public int sendMessage(String content, int senderID, int recipientID, String date, String time) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("content", content);
		params.put("senderID", senderID);
		params.put("recipientID", recipientID);
		params.put("date", date);
		params.put("time", time);

		String sql = "INSERT INTO MESSAGES VALUES(NULL, :content, :date, :time, :senderID, :recipientID)";
		//INSERT INTO MESSAGES VALUES (NULL, 'testing', '2020-04-1', 1, 2);
//		System.out.println(sql+", "+title+", "+content+", "+date+", "+communityID+", "+authorID);
//		return 1;
		
		return namedParameterJdbcTemplate.update(sql, params);
	}
	
}
