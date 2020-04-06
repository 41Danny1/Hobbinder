package com.cupojava.hobbinder.dao;

import java.util.List;

import com.cupojava.hobbinder.model.Course;

public interface eventDao {

	int addEvent(String name, String date, String location, String time, String description);

}
