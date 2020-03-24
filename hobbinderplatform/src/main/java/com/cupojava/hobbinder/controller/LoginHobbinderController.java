package com.cupojava.hobbinder.controller;

import java.time.LocalDateTime; 
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cupojava.hobbinder.model.HelloWorld;
import com.cupojava.hobbinder.model.LoginHobbinder;
import com.cupojava.hobbinder.model.Message;
import com.cupojava.hobbinder.model.User;

@Controller
public class LoginHobbinderController {

	
	@RequestMapping("/loginHobbinder")
	public String handler(Model model) {

		LoginHobbinder loginHobbinder = new LoginHobbinder();
		List<Message> strings = new ArrayList<Message>();
		for(int i = 0; i < 5; i++) {
			String tmpStr = "String" + i;
			Message msg = new Message();
			msg.setContent(tmpStr);
			strings.add(msg);
		}
		
		loginHobbinder.setMessages(strings);
		loginHobbinder.setDateTime(LocalDateTime.now().toString());
		model.addAttribute("temp", loginHobbinder);
		return "loginHobbinder";
	}
}
