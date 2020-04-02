package com.cupojava.hobbinder.controller;

import java.time.LocalDateTime; 
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cupojava.hobbinder.dao.PrivateMessageDao;
import com.cupojava.hobbinder.dao.UserHobbinderDAO;
import com.cupojava.hobbinder.model.Header;
import com.cupojava.hobbinder.model.LoginInfo;
import com.cupojava.hobbinder.model.PrivateMessage;
import com.cupojava.hobbinder.model.UsersHobbinder;

@Controller
public class MessagingController {

	@Autowired
	UserHobbinderDAO userHobbinderDao;
	
	@Autowired
	PrivateMessageDao pmDao;
	
	@ModelAttribute("messageInfo")
	public PrivateMessage messageForm() {
		return new PrivateMessage();
	}
	
	@GetMapping(value = "/messaging", params = "id")
    public String handler(int id, HttpSession session, Model model) {
		Header header = new Header();
		model.addAttribute("headerTemplate", header);

		UsersHobbinder user;
		// System.out.println(session.getAttribute("usersHobbinder"));
		user = userHobbinderDao.findByEmail("js@test.com");  //Hardcoded user 1
		UsersHobbinder recipientUser = userHobbinderDao.findUsersHobbinder(id).get(0);

		List<PrivateMessage> messages = pmDao.findMessagesByUser(Integer.parseInt(user.getUserID().toString()), id);

		String render = "";

		for (int i = 0; i < messages.size(); i++)
			if (messages.get(i).getSenderID() == user.getUserID())
				render += messages.get(i).renderSend();
			else
				render += messages.get(i).renderReceive();

		model.addAttribute("recipient", recipientUser.getFirstName() + " " + recipientUser.getLastName());
		model.addAttribute("messages", render);

		return "messagingLayout";
    }
	
	@PostMapping(value = "/messaging", params = "id")
    public String handlerSend(@ModelAttribute("messageInfo") PrivateMessage msgToSend, int id, HttpSession session, Model model) {
		
		pmDao.sendMessage(msgToSend.getContent(), 1, id, "2020-04-01", "");
		
		return "redirect:/messaging?id="+id;
    }
	
}
