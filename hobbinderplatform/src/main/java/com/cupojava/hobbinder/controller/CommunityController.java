package com.cupojava.hobbinder.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cupojava.hobbinder.model.Header;
import com.cupojava.hobbinder.model.Post;
import com.cupojava.hobbinder.model.community;
import com.cupojava.hobbinder.dao.PostDao;
import com.cupojava.hobbinder.dao.UserHobbinderDAO;
import com.cupojava.hobbinder.dao.communityDao;

@Controller
public class CommunityController {

	@Autowired
	PostDao postDao;
	
	@Autowired
	UserHobbinderDAO userDao;
	
	@Autowired
	communityDao comDao;

	@RequestMapping(value = "/community", params = "id")
	public String handler(int id, Model model) {
		Header header = new Header();
		model.addAttribute("headerTemplate", header);

		//Community
		community com = comDao.findCommunityByID(id);
		model.addAttribute("community", com);
		
		//Posts
		Post p = postDao.findPostByCode(1);

		String posts = "";
		List<Post> postObjects = postDao.findPostsByCommunity(id);
		for(int i=0; i<postObjects.size(); i++) {
			postObjects.get(i).setAuthor(userDao.findUsersHobbinder(postObjects.get(i).getAuthorID()).get(0).getUserName());
			posts += postObjects.get(i).render();
		}
		
		model.addAttribute("posts", posts);

		return "communityLayout";
	}
	
	@RequestMapping(value = "/community") //EDIT LATER TO RETURN AN ERROR PAGE FOR EMPTY COMMUNITY!
	public String handler(Model model) {
		Header header = new Header();
		model.addAttribute("headerTemplate", header);

		Post p = postDao.findPostByCode(1);

		String posts = "";
		List<Post> postObjects = postDao.findPostsByCommunity(0);
		for(int i=0; i<postObjects.size(); i++)
			posts += postObjects.get(i).render();
		
		model.addAttribute("posts", posts);

		return "communityLayout";
	}
}
