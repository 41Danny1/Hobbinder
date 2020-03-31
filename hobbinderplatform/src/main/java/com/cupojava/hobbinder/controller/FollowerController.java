package com.cupojava.hobbinder.controller;


import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cupojava.hobbinder.dao.FollowDao;
import com.cupojava.hobbinder.dao.PostDao;
import com.cupojava.hobbinder.model.Follow;
import com.cupojava.hobbinder.model.Post;


@Controller
public class FollowerController {
	
	@Autowired
	FollowDao followDao;

	@RequestMapping("/profile_followers")
	public String handler(Model model) {
		
		String users = "";
		List<Follow> userObjects = followDao.findFollowerByUser(2);
		
		for(int i=0; i<userObjects.size(); i++)
			users += userObjects.get(i).render();
		
		model.addAttribute("users", users);

		return "profile_followers";
	}
}
