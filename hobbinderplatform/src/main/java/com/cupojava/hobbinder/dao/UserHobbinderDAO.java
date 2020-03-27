package com.cupojava.hobbinder.dao;

import java.util.List;

import com.cupojava.hobbinder.model.Course;
import com.cupojava.hobbinder.model.UsersHobbinder;

public interface UserHobbinderDAO {
	
	UsersHobbinder findByEmail(String email);
	
	public int addUser(String FirstName, String LastName, String UserName, String Gender, String Country, String
			UserImage, String UserDescription, String Email, String Password);
	
	List<UsersHobbinder> findUsersHobbinder(String FirstName, String LastName, String UserName, String Gender, String Country, String
			UserImage, String UserDescription, String Email, String Password);

}
