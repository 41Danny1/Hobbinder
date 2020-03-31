package com.cupojava.hobbinder.dao;

import java.util.List;

import com.cupojava.hobbinder.model.Follow;
import com.cupojava.hobbinder.model.Post;

public interface FollowDao {
	
	List<Follow> findFollowerByUser(int followID);
	List<Follow> findFollowingByUser(int followID);
}
