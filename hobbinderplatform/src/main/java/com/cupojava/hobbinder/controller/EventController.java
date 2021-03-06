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

import com.cupojava.hobbinder.dao.communityDao;
import com.cupojava.hobbinder.dao.eventDao;
import com.cupojava.hobbinder.model.Header; 
import com.cupojava.hobbinder.model.Message;
import com.cupojava.hobbinder.model.community;
import com.cupojava.hobbinder.model.event;

@Controller
public class EventController {
	
	@Autowired
	eventDao eDao;

	@GetMapping("/eventCreation")
	public String handler1(@ModelAttribute("event") event Event, Model model) {
		Header header = new Header();
		model.addAttribute("headerTemplate", header);
		return "eventCreation";
	}
	
	@PostMapping("/eventCreation")
	public String handler(@ModelAttribute("event") event Event, Model model) 
	{
		Header header = new Header();
		model.addAttribute("headerTemplate", header);
		//System.out.println(Event.getName() + " " + Event.getDate() + " " + Event.getTime());
		//System.out.println(Community.getType());
		eDao.addEvent(Event.getName(), Event.getDate(), Event.getLocation(), Event.getTime(), Event.getDescription());
		return "eventCreation";
	}
	
}
