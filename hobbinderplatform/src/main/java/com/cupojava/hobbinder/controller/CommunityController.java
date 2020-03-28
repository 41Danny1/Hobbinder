package com.cupojava.hobbinder.controller;

import java.time.LocalDateTime;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.GetMapping;

import com.cupojava.hobbinder.dao.communityDao;
import com.cupojava.hobbinder.model.HelloWorld;
import com.cupojava.hobbinder.model.Message;
import com.cupojava.hobbinder.model.User;




@Controller
public class CommunityController {
	
	@Autowired
	communityDao cDao;
	
	 @RequestMapping(value="/test", method=RequestMethod.GET)
	    public String handlePost(@RequestParam String action, Model m) {
	        if( action.equals("create") ){
	            //handle save
	         }
	         else if( action.equals("renew") ){
	            //handle renew
	         }
	        m.addAttribute("name", "change");
	        return "";
	    }

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
