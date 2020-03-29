package com.cupojava.hobbinder.controller;

import java.time.LocalDateTime; 
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cupojava.hobbinder.dao.PostDao;
import com.cupojava.hobbinder.model.Header;
import com.cupojava.hobbinder.model.Post;

@Controller
public class PostCreationController {

	@Autowired
	PostDao postDao;
	
	@ModelAttribute("post")
	public Post postForm() {
		return new Post();
	}
	
    @GetMapping("/postcreation")
    public String handler(Model model) {
	Header header = new Header();
	model.addAttribute("headerTemplate", header);
	return "postCreationLayout";
    }
    
    @PostMapping("/postcreation")
    public String handler(@ModelAttribute("post") Post post, Model model) {
    	Header header = new Header();
    	model.addAttribute("headerTemplate", header);
    	System.out.println(post.getContent());
    	postDao.createPost(post.getTitle(), post.getContent(), "2020-03-27", 1, 1); //Hardcoded for now!
    	return "postCreationLayout";
        }
    
}
