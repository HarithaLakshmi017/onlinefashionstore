package com.chainsys.onlinefashionstore.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.security.servlet.UserDetailsServiceAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.onlinefashionstore.model.BillingInvoice;
import com.chainsys.onlinefashionstore.model.Product;
import com.chainsys.onlinefashionstore.model.Usersdetail;
import com.chainsys.onlinefashionstore.repository.UsersdetailRepository;
import com.chainsys.onlinefashionstore.service.BillinginvoiceService;
import com.chainsys.onlinefashionstore.service.UsersdetailService;

@Controller
@RequestMapping("/user")
public class UsersdetailController {
	@Autowired
	UsersdetailService usersdetailservice;
	@Autowired
	UsersdetailRepository userdetailrepo;
	@Autowired
	BillinginvoiceService billingservice;

	@GetMapping("/login")
	public String accessform(Model model) {
		Usersdetail theuser = new Usersdetail();
		model.addAttribute("users", theuser);
		return "login-form";
	}
	@GetMapping("/userlist")
	public String product(Model model) {
		List<Usersdetail> userlist = usersdetailservice.getAllUserdetails();
		model.addAttribute("alluser", userlist);
		return "users-list";

	}
	@GetMapping("/updateuserform")
	public String showUpdateForm(@RequestParam("id") int id, Model model) {
		Usersdetail theuser = usersdetailservice.findUsersdetailById(id);
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

	@GetMapping("/userregisterform")
	public String userregister(Model model) {
		Usersdetail user = new Usersdetail();
		model.addAttribute("users", user);
		return "register";
	}

	@PostMapping("/register")
	public String adduser(@Valid @ModelAttribute("users") Usersdetail userregister, Model model, Errors errors) {
		if (errors.hasErrors()) {
			return "register";
		}
		userdetailrepo.save(userregister);
		return "redirect:/user/login";
	}

	
	@GetMapping("/getuserbilling")
	public String getUsersbilling(@RequestParam("id") int id, Model model) {
		BillingInvoice billinginvoice = billingservice.findByBillId(id);
		if (billinginvoice == null) {
			System.out.println("debug:billinginvoice is null");
			return "null";
		}
		model.addAttribute("getbilling", billinginvoice);
		model.addAttribute("getuser", usersdetailservice.findUsersdetailById(id));
		return "user-billing";
	}

	@PostMapping("/checkuserlogin")
	public String checkingAccess(@ModelAttribute("users") Usersdetail user) {
		Usersdetail users = usersdetailservice.getUserNameAndPasswordAndRole(user.getUserName(), user.getPassword(),
				user.getRole());
		if (users != null) {
			if ("admin".equals(users.getRole())) {
				return "redirect:/admin/user-list";
				
			} else {
				return "redirect:/admin/product-home";
			}
		} else {
			return "invalid-user-error";
		}
		
	}
}
