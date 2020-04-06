package com.cupojava.hobbinder.controller;

import java.sql.SQLIntegrityConstraintViolationException;
import java.time.LocalDateTime;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.GetMapping;

import com.cupojava.hobbinder.dao.communityDao;
import com.cupojava.hobbinder.model.Header;
import com.cupojava.hobbinder.model.community;
import com.cupojava.hobbinder.model.event;
import com.cupojava.hobbinder.model.HelloWorld;
import com.cupojava.hobbinder.model.Message;
import com.cupojava.hobbinder.model.User;


@Controller
public class ComCreationController {
	
	@Autowired
	communityDao cDao;
	

	@GetMapping("/communityCreation")
	public String handler1(@ModelAttribute("community") community Community, Model model) {
		return "communityCreation";
	}
	
	@PostMapping("/communityCreation")
	public String handler(@ModelAttribute("community") community Community, Model model) 
	{
		Header header = new Header();
		model.addAttribute("headerTemplate", header);
		//System.out.println(Community.getName() + " " + Community.getAbout());
		//System.out.println(Community.getType());
		cDao.addCommunity(Community.getName(), Community.getAbout(), Community.getType());
		return "communityCreation";
	}
	
	@RequestMapping("/event")
	public String event() 
	{
		return "eventCreation";
	}
	
}
