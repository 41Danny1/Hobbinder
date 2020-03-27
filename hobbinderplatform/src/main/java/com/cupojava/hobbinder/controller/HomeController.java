package com.cupojava.hobbinder.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class HomeController {

	
	@RequestMapping("/home")
	public String handler(Model model) {


		return "home";
	}
}
