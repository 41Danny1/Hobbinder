package com.cupojava.hobbinder.controller;
import com.cupojava.hobbinder.model.Profile;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cupojava.hobbinder.dao.FollowDao;
import com.cupojava.hobbinder.dao.ProfileDao;
import com.cupojava.hobbinder.model.Follow;


@Controller
public class ProfileController {
	
	@Autowired
	ProfileDao profileDao;

	@RequestMapping("/profile")
	public String handler(Model model) {
		
		String users = "";
		List<com.cupojava.hobbinder.model.Profile> userObjects = profileDao.findUserByUserID(1);
		
		for(int i=0; i<userObjects.size(); i++)
			users += userObjects.get(i).render();
		
		List<com.cupojava.hobbinder.model.Profile> followerObject = profileDao.getNumOfFollower(1);
		List<com.cupojava.hobbinder.model.Profile> followingObject = profileDao.getNumOfFollowing(1);
		List<com.cupojava.hobbinder.model.Profile> communityObject = profileDao.getNumOfCommunities(1);
		
		Profile.numOfFollowers = followerObject.size();
		Profile.numOfFollowing = followingObject.size();
		Profile.numOfCommunities = communityObject.size();
	
		model.addAttribute("profile", users);

		return "profile";
	}
}
