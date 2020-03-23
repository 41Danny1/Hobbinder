package com.cupojava.hobbinder.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.cupojava.hobbinder.dao.CourseDao;
import com.cupojava.hobbinder.dao.StudentDao;
import com.cupojava.hobbinder.model.Course;
import com.cupojava.hobbinder.model.Student;

@Controller
@SessionAttributes("student")
public class RegisterController {
	
	@Autowired
	StudentDao studentDao;
	
	@Autowired 
	CourseDao courseDao;
	
	
	
	/**
	 * Create new signUpForm object for empty from
	 * 
	 * @return
	 */
	@ModelAttribute("course")
	public Course registerForm() {
		return new Course();
	}

	/**
	 * Method to show the initial HTML form
	 * 
	 * @return
	 */
	@GetMapping("/showCourses")
	public String showCourses(HttpSession session, Model model) {
	    Student student = (Student) session.getAttribute("student");
	    if(student != null) {
	    	List<Course> courses = courseDao.findAll();
	    	model.addAttribute("courses", courses);
	    	return "show-courses";
	    }
	    return "login";
	}
	
	@PostMapping("/registerCourse")
	public String register(HttpSession session, @ModelAttribute("course") Course course, Model model) {
		Student student = (Student) session.getAttribute("student");
		String code = course.getCode();
		
		for(Course c : student.getRegisteredCourses()) {
			if(c.getCode().equals(code)) {
				model.addAttribute("message", "Course already registered.");
				return "redirect:showCourses";
			}
		}
		
		if(studentDao.registerCourseByCourseCode(student.getEmail(), code) > 0) {
			student.setRegisteredCourses(studentDao.findRegisteredCourses(student.getEmail()));
		}
		
		return "redirect:login";
	}
	
}
