package com.cupojava.hobbinder.controller;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

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
import com.cupojava.hobbinder.model.UsersHobbinder;

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
    
    @GetMapping(value = "/postcreation", params = "id")
    public String handler(int id, Model model) {
    	Header header = new Header();
    	model.addAttribute("headerTemplate", header);
    	model.addAttribute("community", id);
    	return "postCreationLayout";
        }
    
    @PostMapping(value = "/postcreation", params = "id")
    public String handler2(@ModelAttribute("post") Post post, HttpSession session, int id, Model model) {
    	Header header = new Header();
    	model.addAttribute("headerTemplate", header);
    	UsersHobbinder user = (UsersHobbinder) session.getAttribute("usersHobbinder");
    	int uid = 1;
    	if(user != null)
    		uid = Integer.parseInt(user.getUserID().toString());
    	if(postDao.createPost(post.getTitle(), post.getContent(), LocalDate.now().toString(), LocalTime.now().toString(), id, uid) == 0)
    		return "postCreationLayout";
    	else
    		return "redirect:community?id="+id;
        }
    
}
