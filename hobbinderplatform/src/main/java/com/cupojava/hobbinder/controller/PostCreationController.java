package com.cupojava.hobbinder.controller;

import java.time.LocalDateTime; 
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cupojava.hobbinder.model.Header;

@Controller
public class PostCreationController {

    @RequestMapping("/postcreation")
    public String handler(Model model) {
	Header header = new Header();
	model.addAttribute("headerTemplate", header);
	return "postCreationLayout";
    }
}
