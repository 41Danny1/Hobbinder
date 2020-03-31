package com.cupojava.hobbinder.controller;


import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cupojava.hobbinder.dao.PostDao;
import com.cupojava.hobbinder.model.Post;


@Controller
public class HomeController {
	
	@Autowired
	PostDao postDao;

	@RequestMapping("/home")
	public String handler(Model model) {

		Post p = postDao.findPostByCode(1);
//		System.out.println(p.render());
//		System.out.println(postDao.findPostsByCommunity(1).size());
//		model.addAttribute("posts", p.render());
		String posts = "";
		List<Post> postObjects = postDao.findRandomPosts();
		
		ArrayList<Integer> list = new ArrayList<Integer>();
	     for (int i = 0; i < postObjects.size() ; i++) {
	          list.add(new Integer(i));
	     }
	    Collections.shuffle(list);
	    
//	     for (int i = 0; i < postObjects.size() ; i++) {
//	            System.out.println(list.get(i));
//	        }
		
		for(int i=0; i<postObjects.size(); i++)
			posts += postObjects.get(list.get(i)).render();
		
		
		model.addAttribute("posts", posts);

		return "home";
	}
}
