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

import com.cupojava.hobbinder.model.Follow;
import com.cupojava.hobbinder.model.Post;

@Repository
public class FollowDaoImp implements FollowDao {

	NamedParameterJdbcTemplate namedParameterJdbcTemplate;
	
	@Autowired
	public void setNamedParameterJdbcTemplate(NamedParameterJdbcTemplate namedParameterJdbcTemplate) {
		this.namedParameterJdbcTemplate = namedParameterJdbcTemplate;
	}

	
	public List<Follow> findFollowerByUser(int userID) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("id", userID);	
    
        String sql = "SELECT * FROM HOB_USERS AS u \n" + 
        		"JOIN USER_FOLLOWERS AS f \n" + 
        		"ON u.UserID = f.followerID where f.userID=:id;";
        
        
        List<Follow> results = namedParameterJdbcTemplate.query(sql, params, new FollowMapper());
        
        return results;
	}


	
	private static final class FollowMapper implements RowMapper<Follow> {

		public Follow mapRow(ResultSet rs, int rowNum) throws SQLException {
			Follow Follow = new Follow();
			Follow.setUserID(rs.getLong("UserID"));
			Follow.setFirstName(rs.getString("FirstName"));
			Follow.setLastName(rs.getString("LastName"));
			Follow.setUserName(rs.getString("UserName"));
			Follow.setDescription(rs.getString("UserDescription"));

			return Follow;
		}
	}


	public List<Follow> findFollowingByUser(int userID) {
		// TODO Auto-generated method stub
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("id", userID);	
    
        String sql = "SELECT * FROM HOB_USERS AS u \n" + 
        		"JOIN USER_FOLLOWING AS f \n" + 
        		"ON u.UserID = f.followingID where f.userID=:id;";
        
        
        List<Follow> results = namedParameterJdbcTemplate.query(sql, params, new FollowMapper());
        
        return results;
	}


}
