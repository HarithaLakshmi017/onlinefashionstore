package com.chainsys.onlinefashionstore.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chainsys.onlinefashionstore.model.Category;
import com.chainsys.onlinefashionstore.model.FeedBack;
import com.chainsys.onlinefashionstore.service.CategoryService;
import com.chainsys.onlinefashionstore.service.FeedBackService;



@Controller
@RequestMapping("/")
public class FeedbackController {
	@Autowired
	FeedBackService feedbackService;
	@Autowired
	@GetMapping("/add")
	public String addNewfeedback(@ModelAttribute("addfeedback") FeedBack feedback) {
		FeedBackService.addFeedBack(feedback);
		return "redirect:/admin/categories";
	}

	
	

}
