package com.cupojava.hobbinder.dao;

import java.util.List;

import com.cupojava.hobbinder.model.community;

public interface communityDao {

	int addCommunity(String name, String about, String type);
	community findCommunityByID(int id);

}
