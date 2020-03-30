package com.cupojava.hobbinder.dao;

import java.util.List;

import com.cupojava.hobbinder.model.Course;
import com.cupojava.hobbinder.model.Student;
import com.cupojava.hobbinder.model.User;

 
public interface StudentDao {

	User findByName(String name);
	 
	List<User> findAll();

	Student findByEmail(String email);

	int registerCourseByCourseCode(String email, String code);

	List<Course> findRegisteredCourses(String email);

}
