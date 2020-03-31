package com.cupojava.hobbinder.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class ProfileController {

	
	@RequestMapping("/profile")
	public String handler(Model model) {

		return "profile";
	}
}
