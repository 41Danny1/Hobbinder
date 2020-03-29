package com.cupojava.hobbinder.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.RowMapper;

import com.cupojava.hobbinder.model.Course;
import com.cupojava.hobbinder.model.UsersHobbinder;

public interface UserHobbinderDAO {
	
	UsersHobbinder findUserByID(int userID);
	
	public int createUser(String FirstName, String LastName, String UserName, String Gender, String Country, String
			UserImage, String UserDescription, String Email, String Password);

	}

}
