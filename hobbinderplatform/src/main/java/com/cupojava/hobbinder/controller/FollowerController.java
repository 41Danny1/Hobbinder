package com.cupojava.hobbinder.controller;


import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cupojava.hobbinder.dao.FollowDao;
import com.cupojava.hobbinder.dao.FollowerDao;
import com.cupojava.hobbinder.dao.PostDao;
import com.cupojava.hobbinder.dao.ProfileDaoImp;
import com.cupojava.hobbinder.dao.UserHobbinderDAO;
import com.cupojava.hobbinder.model.Follow;
import com.cupojava.hobbinder.model.Follower;
import com.cupojava.hobbinder.model.Post;
import com.cupojava.hobbinder.model.UsersHobbinder;


@Controller
public class FollowerController {
	
	@Autowired
	FollowerDao followerDao;
	
	@Autowired 	
	UserHobbinderDAO userDao;

	@RequestMapping(value = "/profile_followers", params= "id")
	public String handler(HttpSession session, Model model, int id) {
		
		int uid = id;
		
		String users = "";
		List<Follower> userObjects = followerDao.findFollowerByUser(uid);
		
		
		for(int i=0; i<userObjects.size(); i++)
			users += userObjects.get(i).render();
		
		String visitedUser = "";
		UsersHobbinder user = userDao.findUsersHobbinder(id).get(0);
		
		visitedUser = user.myRender(uid, user.getUserName());
		
		model.addAttribute("visitedUser2", visitedUser);
		model.addAttribute("users", users);

		return "profile_followers";
	}
	
	
}
