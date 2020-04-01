package com.cupojava.hobbinder.controller;

import java.time.LocalDateTime; 
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cupojava.hobbinder.dao.PrivateMessageDao;
import com.cupojava.hobbinder.dao.UserHobbinderDAO;
import com.cupojava.hobbinder.model.Header;
import com.cupojava.hobbinder.model.PrivateMessage;
import com.cupojava.hobbinder.model.UsersHobbinder;

@Controller
public class MessagingController {

	@Autowired
	UserHobbinderDAO userHobbinderDao;
	
	@Autowired
	PrivateMessageDao pmDao;
	
	@RequestMapping(value = "/messaging", params = "id")
    public String handler(int id, HttpSession session, Model model) {
	Header header = new Header();
	model.addAttribute("headerTemplate", header);
	
	UsersHobbinder user;
//	System.out.println(session.getAttribute("usersHobbinder"));
	user = userHobbinderDao.findByEmail("js@test.com");
	UsersHobbinder recipientUser = userHobbinderDao.findUsersHobbinder(id).get(0);
//	userHobbinderDao.findUsersHobbinder(2);
	
	System.out.println(user.getUserID());
	
	List<PrivateMessage> messages = pmDao.findMessagesByUser(Integer.parseInt(user.getUserID().toString()), id);
		
	String render = "";
	
	for(int i=0; i<messages.size(); i++)
		if(messages.get(i).getSenderID() == id)
			render += messages.get(i).renderSend();
		else
			render += messages.get(i).renderReceive();
	
	model.addAttribute("recipient", recipientUser.getFirstName()+" "+recipientUser.getLastName());
	model.addAttribute("messages", render);
	
	return "messagingLayout";
    }
}
