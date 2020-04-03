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
		List<com.cupojava.hobbinder.model.Profile> followerObject = profileDao.getNumOfFollower(1);
		List<com.cupojava.hobbinder.model.Profile> followingObject = profileDao.getNumOfFollowing(1);
		List<com.cupojava.hobbinder.model.Profile> communityObject = profileDao.getNumOfCommunities(1);

		userObjects.get(0).setNumOfFollowers(followerObject.size());
		userObjects.get(0).setNumOfFollowing(followingObject.size());
		userObjects.get(0).setNumOfCommunities(communityObject.size());
		
		users = userObjects.get(0).render();
	
		model.addAttribute("profile", users);
		
		String gallery = "";
		for(int i=1; i< 21; i++)
			gallery += "<div class=\"rela-inline image\" style=\"background-image: url('resources/images/image" + i + ".jpg');\"></div>";
		model.addAttribute("gallery", gallery);

		return "profile";
	}
}
