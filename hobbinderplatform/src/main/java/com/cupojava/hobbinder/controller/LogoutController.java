package com.cupojava.hobbinder.controller;

import java.sql.SQLIntegrityConstraintViolationException;
import java.time.LocalDateTime;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

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
import com.cupojava.hobbinder.model.Message;



@Controller
public class LogoutController {
	
	@Autowired
	communityDao cDao;
	

	@GetMapping("/logout")
	public String handler1(HttpSession session, Model model) {
		Header header = new Header();
		model.addAttribute("headerTemplate", header);
		session.removeAttribute("usersHobbinder");
		return "redirect:initialPage";
	}
	
}

