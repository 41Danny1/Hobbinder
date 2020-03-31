package com.cupojava.hobbinder.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cupojava.hobbinder.dao.FollowDao;
import com.cupojava.hobbinder.model.Follow;


@Controller
public class FollowingController {
	
	@Autowired
	FollowDao followDao;

	
	@RequestMapping("/profile_following")
	public String handler(Model model) {
		
		String users = "";
		List<Follow> userObjects = followDao.findFollowingByUser(1);
		
		for(int i=0; i<userObjects.size(); i++)
			users += userObjects.get(i).render();
		
		model.addAttribute("users", users);

		return "profile_following";
	}
}
