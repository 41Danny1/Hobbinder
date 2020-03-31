package com.cupojava.hobbinder.controller;

import java.time.LocalDateTime; 
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;

import com.cupojava.hobbinder.model.Hobbinder_ForgotPass;
import com.cupojava.hobbinder.model.Message;


@Controller
public class Hobbinder_ForgotPassController {

	
	@RequestMapping("/forgotPass")
	public String handler(Model model) {

		Hobbinder_ForgotPass forgotPass = new Hobbinder_ForgotPass();
		List<Message> strings = new ArrayList<Message>();
		for(int i = 0; i < 5; i++) {
			String tmpStr = "String" + i;
			Message msg = new Message();
			msg.setContent(tmpStr);
			strings.add(msg);
		}
		
		forgotPass.setMessages(strings);
		forgotPass.setDateTime(LocalDateTime.now().toString());
		model.addAttribute("temp", forgotPass);
		return "forgotPass";
	}
}
