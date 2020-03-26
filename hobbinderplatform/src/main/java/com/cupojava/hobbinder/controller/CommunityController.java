package com.cupojava.hobbinder.controller;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.GetMapping;

import com.cupojava.hobbinder.model.HelloWorld;
import com.cupojava.hobbinder.model.Message;
import com.cupojava.hobbinder.model.User;

@Controller
public class CommunityController {

	@RequestMapping("/communityCreation")
	public String handler(Model model) {
		return "communityCreation";
	}
	
	@RequestMapping("/event")  
    public String event()  
    {  
        return "eventCreation";  
    }
	
	@RequestMapping("/community")  
    public String community()  
    {  
        return "communityCreation";  
    } 
}
