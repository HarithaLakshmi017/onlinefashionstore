package com.chainsys.onlinefashionstore.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chainsys.onlinefashionstore.model.Category;
import com.chainsys.onlinefashionstore.model.Product;

@Controller
@RequestMapping("/user")
public class UsersdetailController {

	     @Autowired
	     Category categoryService;
	     @Autowired
	     Product productService;

	     @GetMapping("/user")
	     public String home(Model model) {
	          return "admin";
	     }
	     @GetMapping("/homepage")
	     public String shop(Model model) {
	          model.addAttribute(categoryService.getCategoryNo());
	          model.addAttribute(productService.getProductId());
	          return "shop";
	     }
	     @GetMapping("/homepage/category")
	     public String shopByCategory(Model model, @PathVariable int id) {
	          model.addAttribute(categoryService.getCategoryNo());
	          model.addAttribute( productService.getProductId());
	          return "shop";
	     }
	     @GetMapping("/homepage/productlist")
	     public String Productlist( Model model, @PathVariable int id) {
	          model.addAttribute(productService.getProductId());
	          return "productlist";
	     }
	}
	


