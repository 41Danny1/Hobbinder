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

import com.cupojava.hobbinder.model.Profile;

@Repository
public class ProfileDaoImp implements ProfileDao {

	NamedParameterJdbcTemplate namedParameterJdbcTemplate;
	
	@Autowired
	public void setNamedParameterJdbcTemplate(NamedParameterJdbcTemplate namedParameterJdbcTemplate) {
		this.namedParameterJdbcTemplate = namedParameterJdbcTemplate;
	}
	
	public List<Profile> findUserByUserID(int userID) {
		// TODO Auto-generated method stub
		
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("id", userID);	
    
        String sql = "SELECT * FROM HOB_USERS where userID=:id;";
        
        
        List<Profile> results = namedParameterJdbcTemplate.query(sql, params, new ProfileMapper());
       
        
        return results;
	}

	
	private static final class ProfileMapper implements RowMapper<Profile> {

		public Profile mapRow(ResultSet rs, int rowNum) throws SQLException {
			Profile profile = new Profile();
			
			profile.setFirstName(rs.getString("FirstName"));
			profile.setLastName(rs.getString("LastName"));
			profile.setUserName(rs.getString("UserName"));
			profile.setDescription(rs.getString("UserDescription"));
			
			
			return profile;
		}
	}


	public List<Profile> getNumOfFollower(int userID) {
		// TODO Auto-generated method stub
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("id", userID);	
    
        String sql = "SELECT * FROM HOB_USERS AS u \n" + 
        		"JOIN USER_FOLLOWERS AS f \n" + 
        		"ON u.UserID = f.followerID where f.userID=:id;";
        
        System.out.println(sql);
        
        
        List<Profile> results = namedParameterJdbcTemplate.query(sql, params, new ProfileMapper());
         
        return results;
	}

	public List<Profile> getNumOfFollowing(int userID) {
		// TODO Auto-generated method stub
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("id", userID);	
    
        String sql = "SELECT * FROM HOB_USERS AS u \n" + 
        		"JOIN USER_FOLLOWING AS f \n" + 
        		"ON u.UserID = f.followingID where f.userID=:id;";       
        
        List<Profile> results = namedParameterJdbcTemplate.query(sql, params, new ProfileMapper());
         
        return results;
	}

	public List<Profile> getNumOfCommunities(int userID) {
		// TODO Auto-generated method stub
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("id", userID);	
    
        String sql = "SELECT * FROM HOB_USERS AS u JOIN COMMUNITIES AS c ON u.UserID = c.userID where c.userID=:id;";      
        System.out.println(sql);
        List<Profile> results = namedParameterJdbcTemplate.query(sql, params, new ProfileMapper());
         
        return results;
	}

}
