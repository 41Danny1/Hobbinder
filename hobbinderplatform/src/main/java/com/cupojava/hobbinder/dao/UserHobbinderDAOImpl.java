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

import com.cupojava.hobbinder.model.UsersHobbinder;

@Repository
public class UserHobbinderDAOImpl implements UserHobbinderDAO {

	NamedParameterJdbcTemplate namedParameterJdbcTemplate;
	
	@Autowired
	public void setNamedParameterJdbcTemplate(NamedParameterJdbcTemplate namedParameterJdbcTemplate) {
		this.namedParameterJdbcTemplate = namedParameterJdbcTemplate;
	}
	
	public int addUser(String FirstName, String LastName, String UserName, String Gender, String Country, String
			UserImage, String UserDescription, String Email, String Password) {
		
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("FirstName", FirstName);
		params.put("LastName", LastName);
		params.put("UserName", UserName);
		params.put("Gender", Gender);
		params.put("Country", Country);
		params.put("UserImage", UserImage);
		params.put("UserDescription", UserDescription);
		params.put("Email", Email);
		params.put("Password", Password);
		

		String sql = "INSERT INTO HOB_USERS (FirstName, LastName, UserName, Gender, Country, UserImage, "
				+ "UserDescription, Email, Password)"
				+ " VALUES(:FirstName, :LastName, :UserName, :Gender, :Country, :UserImage, "
				+ ":UserDescription, :Email, :Password)";


		return namedParameterJdbcTemplate.update(sql, params);
	}
	
	private static final class UsersHobbinderMapper implements RowMapper<UsersHobbinder> {
		public UsersHobbinder mapRow(ResultSet resultSet, int rowNum) throws SQLException {
			UsersHobbinder userHobbinder = new UsersHobbinder();
			userHobbinder.setFirstName(resultSet.getString("FirstName"));
			userHobbinder.setLastName(resultSet.getString("LastName"));
			userHobbinder.setUserName(resultSet.getString("UserName"));
			userHobbinder.setGender(resultSet.getString("Gender"));
			userHobbinder.setCountry(resultSet.getString("Country"));
			userHobbinder.setUserImage(resultSet.getString("UserImage"));
			userHobbinder.setUserDescription(resultSet.getString("UserDescription"));
			userHobbinder.setEmail(resultSet.getString("Email"));
			userHobbinder.setPassword(resultSet.getString("Password"));
			return userHobbinder;
		}
	}

	public UsersHobbinder findByEmail(String email) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<UsersHobbinder> findUsersHobbinder(String FirstName, String LastName, String UserName, String Gender, String Country, String
			UserImage, String UserDescription, String Email, String Password) {

		Map<String, Object> params = new HashMap<String, Object>();
		params.put("Email", Email);
		
		String sql = "SELECT * FROM HOB_USERS;";
		
		List<UsersHobbinder> usersResult = namedParameterJdbcTemplate.query
				(sql, params, new UsersHobbinderMapper());
		
		return usersResult;
	}

}