package com.cupojava.hobbinder.dao;

import java.util.List;

import com.cupojava.hobbinder.model.Follow;
import com.cupojava.hobbinder.model.Follower;
import com.cupojava.hobbinder.model.Post;

public interface FollowerDao {
	
	List<Follower> findFollowerByUser(int followID);
	List<Follower> findFollowingByUser(int followID);

}
