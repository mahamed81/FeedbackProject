package com.hcl.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.hcl.dao.FeedbackRepository;
import com.hcl.model.Feedback;


@RestController
public class FeedbackController {
	
	@Autowired
	private FeedbackRepository repo;
	
	@GetMapping("/path")
	public String display() {
		return "hello";
	}
	
	
	
	@GetMapping("/feed")
	public ModelAndView getfeed() {
		Feedback f = new Feedback();
		return new ModelAndView("addfeedback", "form", f);
	}
	
	@PostMapping("/feed")
	public RedirectView  postfeed(Feedback fe) {
		repo.save(fe);
		
		return new RedirectView("result");
	}
	
	@GetMapping("/result")
	public ModelAndView getFeedback(){
		List<Feedback> f = (List<Feedback>) repo.findAll();
		
		return new ModelAndView("respo","rest", f);
	}
}
