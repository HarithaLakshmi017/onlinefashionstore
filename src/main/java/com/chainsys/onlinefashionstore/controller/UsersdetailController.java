package com.chainsys.onlinefashionstore.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.onlinefashionstore.dto.UserBillingDTO;
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

//    @GetMapping("/userlogin")
//     public String adminaccessform(Model model) {
//      Usersdetail theuser = new Usersdetail();
//       model.addAttribute("user", theuser);
//         return "customer-login-form";
//    }
//
//}
//

//@PostMapping("/checkcustomerlogin")
//public String checkingAccess(@ModelAttribute("customer") Customer cus) {
//    Customer customer = customerService.getCustomerByNameAndPassword(cus.getCustomerName(),cus.getPassword());
//    if (customer!= null){
//
//        return "redirect:/customer/gototrackandregister";
//    } else
//        return "invalid-customer-error";

	@GetMapping("/getuserbill")
	public String getUserBilling(@RequestParam("id") int id, Model model) {
		UserBillingDTO dto = new UserBillingDTO();
		model.addAttribute("userd", usersdetailservice.getUserBillingDTO(id));
		model.addAttribute("getbilllist", usersdetailservice.getAllUserdetails());
		return "user-billing";
	}
}
