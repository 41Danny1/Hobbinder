package com.cupojava.hobbinder.controller;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cupojava.hobbinder.model.Header;
import com.cupojava.hobbinder.model.Post;
import com.cupojava.hobbinder.dao.PostDao;

@Controller
public class CommunityController {

	@Autowired
	PostDao postDao;

	@RequestMapping("/community")
	public String handler(Model model) {
		Header header = new Header();
		model.addAttribute("headerTemplate", header);

		Post p = postDao.findPostByCode(1);
		System.out.println(p.getContent());

		return "communityLayout";
	}
}
