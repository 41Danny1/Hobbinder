package com.cupojava.hobbinder.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cupojava.hobbinder.dao.FollowDao;
import com.cupojava.hobbinder.dao.ProfileDaoImp;
import com.cupojava.hobbinder.dao.UserHobbinderDAO;
import com.cupojava.hobbinder.model.Follow;
import com.cupojava.hobbinder.model.Follower;
import com.cupojava.hobbinder.model.Header;
import com.cupojava.hobbinder.model.UsersHobbinder;


@Controller
public class FollowingController {
	
	@Autowired
	FollowDao followDao;
	
	@Autowired 	
	UserHobbinderDAO userDao;

	@RequestMapping(value = "/profile_following", params= "id")
	public String handler(HttpSession session, Model model, int id) {
		
		Header header = new Header();
		model.addAttribute("headerTemplate", header);

		
		int uid = id;
		
		String users = "";
		List<Follow> userObjects = followDao.findFollowingByUser(uid);
		
		
		for(int i=0; i<userObjects.size(); i++)
			users += userObjects.get(i).render();
		
		String visitedUser = "";
		UsersHobbinder user = userDao.findUsersHobbinder(id).get(0);
		
		visitedUser = user.myRender2(uid, user.getUserName());
		
		model.addAttribute("visitedUser", visitedUser);
		model.addAttribute("users", users);

		return "profile_following";
	}
	
}
