package com.cupojava.hobbinder.controller;
import com.cupojava.hobbinder.model.Profile;
import com.cupojava.hobbinder.model.UsersHobbinder;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cupojava.hobbinder.dao.FollowDao;
import com.cupojava.hobbinder.dao.ProfileDao;
import com.cupojava.hobbinder.model.Follow;
import com.cupojava.hobbinder.model.Header;


@Controller
public class ProfileController {
	
	@Autowired
	ProfileDao profileDao;

	@RequestMapping("/profile")
	public String handler(HttpSession session, Model model) {
		Header header = new Header();
		model.addAttribute("headerTemplate", header);

		
		UsersHobbinder login = (UsersHobbinder) session.getAttribute("usersHobbinder");
		
		int uid = Integer.parseInt(login.getUserID().toString());
		
		String users = "";
		
		List<com.cupojava.hobbinder.model.Profile> userObjects = profileDao.findUserByUserID(uid);
		List<com.cupojava.hobbinder.model.Profile> followerObject = profileDao.getNumOfFollower(uid);
		List<com.cupojava.hobbinder.model.Profile> followingObject = profileDao.getNumOfFollowing(uid);
		List<com.cupojava.hobbinder.model.Profile> communityObject = profileDao.getNumOfCommunities(uid);

		userObjects.get(0).setNumOfFollowers(followerObject.size());
		userObjects.get(0).setNumOfFollowing(followingObject.size());
		userObjects.get(0).setNumOfCommunities(communityObject.size());
		
		users = userObjects.get(0).render(uid);
	
		model.addAttribute("profile", users);
		
		String gallery = "";
		for(int i=1; i< 5; i++)
			gallery += "<div class=\"rela-inline image\" style=\"background-image: url('resources/images/image" + i + ".jpg');\"></div>";
		model.addAttribute("gallery", gallery);

		return "profile";
	}
	
	@GetMapping(value = "/profile", params = "id")
	public String handler2(HttpSession session, Model model, int id) {
		Header header = new Header();
		model.addAttribute("headerTemplate", header);
		
		int uid = id;
		
		String users = "";
		
		List<com.cupojava.hobbinder.model.Profile> userObjects = profileDao.findUserByUserID(uid);
		List<com.cupojava.hobbinder.model.Profile> followerObject = profileDao.getNumOfFollower(uid);
		List<com.cupojava.hobbinder.model.Profile> followingObject = profileDao.getNumOfFollowing(uid);
		List<com.cupojava.hobbinder.model.Profile> communityObject = profileDao.getNumOfCommunities(uid);

		userObjects.get(0).setNumOfFollowers(followerObject.size());
		userObjects.get(0).setNumOfFollowing(followingObject.size());
		userObjects.get(0).setNumOfCommunities(communityObject.size());
		
		users = userObjects.get(0).render(uid);
	
		model.addAttribute("profile", users);
		
		String gallery = "";
		for(int i=1; i< 5; i++)
			gallery += "<div class=\"rela-inline image\" style=\"background-image: url('resources/images/image" + i + ".jpg');\"></div>";
		model.addAttribute("gallery", gallery);

		return "profile";
	}
}
