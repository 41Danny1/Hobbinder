package com.cupojava.hobbinder.dao;

import java.util.List;

import com.cupojava.hobbinder.model.Course;
 
public interface CourseDao {

	Course findByCode(String name);
	 
	List<Course> findAll();

}
