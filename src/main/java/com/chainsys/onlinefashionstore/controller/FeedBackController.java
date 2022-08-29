package com.chainsys.onlinefashionstore.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.onlinefashionstore.model.FeedBack;

import com.chainsys.onlinefashionstore.service.FeedBackService;

@Controller
@RequestMapping("/feedback")
public class FeedBackController {
	@Autowired
	FeedBackService feedbckservice;
	

	@GetMapping("/feedbacklist")
	public String getAllfeedback(Model model) {
		List<FeedBack> feedbacklist = feedbckservice.findAll();
		model.addAttribute("allfeedbacklist", feedbacklist);
		return "list-feedback";
	}

	@GetMapping("/addfeedback")
	public String showAddForm(Model model) {
		FeedBack feedbacklist = new FeedBack();
		model.addAttribute("addfeedback", feedbacklist);
		return "add-feedback-form";
	}

	@PostMapping("/addfb")
	public String addNewUser(@Valid @ModelAttribute("addfeedback") FeedBack feedbacklist, Errors error, Model model) {
		if(error.hasErrors()) {
			return "add-feedback-form";
		}
		else {
			try {
		feedbckservice.save(feedbacklist);
		return "redirect:/admin/feedbacksuccess";
	} catch(Exception e) {
		model.addAttribute("message",":(Failed to add feedback");
	}
		}
		return "add-feedback-form";
	}

	@GetMapping("/updatefeedback")
	public String showFeedBackForm(@RequestParam("Id") int id, Model model) {
		FeedBack feedbacklist = feedbckservice.findById(id);
		model.addAttribute("updatefeedback", feedbacklist);
		return "update-feedback-form";
	}

	@PostMapping("/updatefb")
	public String updatefeedback(@ModelAttribute("updatefeedback") FeedBack feedbacklist) {
		feedbckservice.save(feedbacklist);
		return "redirect:/feedback/feedbacklist";
	}

}
