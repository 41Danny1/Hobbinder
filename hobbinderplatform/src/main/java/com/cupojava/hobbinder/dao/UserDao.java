package com.cupojava.hobbinder.dao;

import java.util.List;

import com.cupojava.hobbinder.model.User;

 
public interface UserDao {

	User findByName(String name);
	 
	List<User> findAll();

}

