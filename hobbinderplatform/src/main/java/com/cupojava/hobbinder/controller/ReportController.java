package com.cupojava.hobbinder.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.cupojava.hobbinder.dao.PostDao;
import com.cupojava.hobbinder.dao.ReportDao;
import com.cupojava.hobbinder.model.Header;
import com.cupojava.hobbinder.model.Post;
import com.cupojava.hobbinder.model.Report;

@Controller
public class ReportController {

	@Autowired
	ReportDao reportDao;
	
	@Autowired
	PostDao postDao;
	
	@ModelAttribute("report")
	public Report postForm() {
		return new Report();
	}
	
    @GetMapping("/report")
    public String handler(Model model) {
		Header header = new Header();
		model.addAttribute("headerTemplate", header);
		return "report";
    }
    
    @PostMapping("/report")
    public String handler(@ModelAttribute("report") Report report, Post post, Model model) {
    	Header header = new Header();
    	model.addAttribute("headerTemplate", header);
    	reportDao.createReport(report.getMessage(), post.getTitle()); //Hardcoded
    	return "reportSubmitted";
        }
    
}
