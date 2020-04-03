package com.cupojava.hobbinder.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.cupojava.hobbinder.dao.UserHobbinderDAO;
import com.cupojava.hobbinder.model.Header;
import com.cupojava.hobbinder.model.LoginHobbinder;
import com.cupojava.hobbinder.model.UsersHobbinder;

@Controller
public class RegisterUserHobbinderController {
	
	@Autowired
	UserHobbinderDAO userHobbinderDao;
	
	@ModelAttribute("user")
	public UsersHobbinder userHobbinderForm() {
		return new UsersHobbinder();
	}
	
	@ModelAttribute("loginHobbinder")
	public LoginHobbinder loginHobbinderForm() {
		return new LoginHobbinder();
	}
	
	@GetMapping("/registration")
	public String handler(Model model) {
		Header header = new Header();
		model.addAttribute("headerTemplate", header);
		return "registration";
	}
	
	@PostMapping("/registration")
	public String handler(@ModelAttribute("user") UsersHobbinder userHobbinder, Model model) {
		Header header = new Header();
		model.addAttribute("headerTemplate", header);
		model.addAttribute("loginHobbinder", userHobbinder);
		userHobbinderDao.createUser(userHobbinder.getFirstName(), userHobbinder.getLastName(),
				userHobbinder.getUserName(), userHobbinder.getGender(), userHobbinder.getCountry(), 
				userHobbinder.getUserImage(), userHobbinder.getUserDescription(), 
				userHobbinder.getEmail(), userHobbinder.getPassword());
		return "redirect:/userLogin";
		
	}
	
}

