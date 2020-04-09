package com.cupojava.hobbinder.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cupojava.hobbinder.dao.PostDao;
import com.cupojava.hobbinder.dao.UserHobbinderDAO;
import com.cupojava.hobbinder.model.Header;
import com.cupojava.hobbinder.model.Post;
import com.cupojava.hobbinder.model.UsersHobbinder;

@Controller
public class HomeController {
	
	@Autowired
	PostDao postDao;
	
	@Autowired
	UserHobbinderDAO userDao;

	@RequestMapping("/home")
	public String handler(HttpSession session,Model model) {
		
		Header header = new Header();
		model.addAttribute("headerTemplate", header);
		
		UsersHobbinder login = (UsersHobbinder) session.getAttribute("usersHobbinder");
		int uid = Integer.parseInt(login.getUserID().toString());
		
		String posts = "";
		List<Post> postObjects = postDao.findRandomPosts();
		
		ArrayList<Integer> list = new ArrayList<Integer>();
	     for (int i = 0; i < postObjects.size() ; i++) {
	    	 postObjects.get(i).setAuthor(userDao.findUsersHobbinder(postObjects.get(i).getAuthorID()).get(0).getUserName());
	          list.add(new Integer(i));
	     }
	    Collections.shuffle(list);
	    
		for(int i=0; i<postObjects.size(); i++) {
			posts += postObjects.get(list.get(i)).render();
		}
		
		
		model.addAttribute("posts", posts);

		return "home";
	}
}
