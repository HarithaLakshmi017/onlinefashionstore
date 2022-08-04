package com.chainsys.onlinefashionstore.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.onlinefashionstore.model.Usersdetail;
import com.chainsys.onlinefashionstore.service.UsersdetailService;

@Controller
@RequestMapping("/user")
public class UsersdetailController {
	@Autowired
	UsersdetailService usersdetailservice;

	@GetMapping("/userlist")
	public String getUserAll(Model model) {
		List<Usersdetail> userlist = usersdetailservice.getAllUserdetails();
		model.addAttribute("alluser", userlist);
		return "users-list";
	}

	@GetMapping("/adduserform")
	public String showAddForm(Model model) {
		Usersdetail user = new Usersdetail();
		model.addAttribute("adduser", user);
		return "add-user-form";
	}

       @PostMapping("/adduser")
       public String addNewUser(@ModelAttribute("adduser") Usersdetail theuser) {
    	   usersdetailservice.saveAll(theuser);
	return "redirect:/user/userlist";
}
       @GetMapping("/updateuserform")
		public String showUpdateForm(@RequestParam("id") int id,Model model)
		{
    	   Usersdetail theuser =  usersdetailservice.findUsersdetailById(id);
			model.addAttribute("updateuser", theuser);
			return "update-user-form";
		}
	    @PostMapping("/update")
		public String updateUser(@ModelAttribute("updateuser") Usersdetail theuser) {
	    	usersdetailservice.saveAll(theuser);
			return "redirect:/user/userlist";
		}
	    @GetMapping("/deleteuser")
		public String deleteUser(@RequestParam("Id") int id) {
	    	usersdetailservice.deleteById(id);
			return "redirect:/user/userlist";
		}
	}

