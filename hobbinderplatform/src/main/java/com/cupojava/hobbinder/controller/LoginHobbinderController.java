package com.cupojava.hobbinder.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.cupojava.hobbinder.dao.UserHobbinderDAO;
import com.cupojava.hobbinder.model.LoginHobbinder;
import com.cupojava.hobbinder.model.UsersHobbinder;

@Controller
@SessionAttributes("usersHobbinder")
public class LoginHobbinderController {
	
	@Autowired
	UserHobbinderDAO userHobbinderDao;
	
	@ModelAttribute("loginHobbinder")
	public LoginHobbinder loginHobbinderForm() {
		return new LoginHobbinder();
	}
	
	@GetMapping("/userLogin")
	public String login(HttpSession session) {
		UsersHobbinder usersHobbinder = (UsersHobbinder) session.getAttribute("usersHobbinder");
		if(usersHobbinder != null) {
			return "initialPage";
		}
		return "userLogin";
	}
	
	@PostMapping("/userLogin")
	public String login(@ModelAttribute("loginHobbinder") LoginHobbinder loginHobbinder, Model model) {
		UsersHobbinder usersHobbinder = userHobbinderDao.findByEmail(loginHobbinder.getEmail());
		model.addAttribute("message", "Login Fail");
		
		if(usersHobbinder != null && usersHobbinder.getPassword().equals(loginHobbinder.getPassword())) {
			model.addAttribute("usersHobbinder", usersHobbinder);
			model.addAttribute("message", "Login Successfull");
			return "initialPage";
		}
		return "userLogin";
	}
	
	
}
