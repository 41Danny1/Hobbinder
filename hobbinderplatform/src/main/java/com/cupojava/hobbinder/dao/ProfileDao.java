package com.cupojava.hobbinder.dao;

import java.util.List;

import com.cupojava.hobbinder.model.Follow;
import com.cupojava.hobbinder.model.Post;
import com.cupojava.hobbinder.model.Profile;

public interface ProfileDao {
	
	List<Profile> findUserByUserID(int userID);
	List<Profile> getNumOfFollower(int userID);
	List<Profile> getNumOfFollowing(int userID);
	List<Profile> getNumOfCommunities(int userID);

	
}
