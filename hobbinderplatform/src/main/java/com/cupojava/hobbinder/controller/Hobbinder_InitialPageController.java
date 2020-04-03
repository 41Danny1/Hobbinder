package com.cupojava.hobbinder.controller;

import java.time.LocalDateTime; 
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;

import com.cupojava.hobbinder.model.Message;
import com.cupojava.hobbinder.model.initialPage;


@Controller
public class Hobbinder_InitialPageController {

	
	@RequestMapping("/initialPage")
	public String handler(Model model) {

		initialPage initialPage = new initialPage();
		List<Message> strings = new ArrayList<Message>();
		for(int i = 0; i < 5; i++) {
			String tmpStr = "String" + i;
			Message msg = new Message();
			msg.setContent(tmpStr);
			strings.add(msg);
		}
		
		initialPage.setMessages(strings);
		initialPage.setDateTime(LocalDateTime.now().toString());
		model.addAttribute("temp", initialPage);
		return "initialPage";
	}
}
