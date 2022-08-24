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

import com.chainsys.onlinefashionstore.model.BillingInvoice;
import com.chainsys.onlinefashionstore.model.Category;
import com.chainsys.onlinefashionstore.model.Product;
import com.chainsys.onlinefashionstore.service.BillinginvoiceService;
import com.chainsys.onlinefashionstore.service.CategoryService;
import com.chainsys.onlinefashionstore.service.ProductService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@Autowired
	CategoryService categoryService;
	@Autowired
	ProductService productService;
	@Autowired
	BillinginvoiceService billService;
	
	private static final String LIST="redirect:/admin/category-list";

	@GetMapping("/adminhome")
	public String adminHome() {
		return "login";
	}

	@GetMapping("/adminview")
	public String adminView() {
		return "admin-login";
	}

	@GetMapping("/product")
	public String productHome() {
		return "product-home";
	}

	@GetMapping("/categorylist")
	public String getAllcategory(Model model) {
		List<Category> categorylist = categoryService.getCategory();
		model.addAttribute("allcategory", categorylist);
		return "category-list";
	}

	@GetMapping("/addformcategories")
	public String showAddForm(Model model) {
		Category category = new Category();
		model.addAttribute("addcategories", category);
		return "add-category-form";
	}

	@PostMapping("/addcat")
	public String addNewCategory(@Valid @ModelAttribute("addcategories") Category category,Model model, Errors error) {
		if(error.hasErrors()) {
			return "add-category-form";
		}
		else {
			try {
				categoryService.save(category);
				return LIST;
			}catch (Exception e) {
				model.addAttribute("message",":(category does not exist");
			}
		}
		return "add-category-form";
	}

	@GetMapping("/updateCategoryform")
	public String showUpdateForm(@RequestParam("categoryNo") int id, Model model) {
		Category category = categoryService.findById(id);
		model.addAttribute("updateCategory", category);
		return "update-category-form";
	}

	@PostMapping("/update")
	public String updateCategorys(@ModelAttribute("updateCategory") Category category) {
		categoryService.save(category);
		return LIST;
	}

	@GetMapping("/deleteCategory")
	public String deleteCategory(@RequestParam("categoryNo") int id) {
		categoryService.deleteById(id);
		return LIST;
	}

	@GetMapping("/productlist")
	public String product(Model model) {
		List<Product> productlist = productService.getProduct();
		model.addAttribute("allproduct", productlist);
		return "product-list";

	}

	@GetMapping("/addproductform")
	public String addProducts(Model model) {
		Product p = new Product();
		model.addAttribute("addproduct", p);
		return "add-product-form";
	}

	@PostMapping("/add")
	public String addproduct(@Valid @ModelAttribute("addproduct") Product prod,Errors error,Model model) {
		if(error.hasErrors()) {
			return "add-product-form";
		}
		else {
			try {
				productService.save(prod);
				return "redirect:/admin/productlist";
			}catch (Exception e) {
				model.addAttribute("message",":(Failed to add product");
			}
		}
		return "add-product-form";
		
	}

	@GetMapping("/updateProductform")
	public String showUpdate(@RequestParam("id") long id, Model model) {
		Product pro = productService.findById(id);
		model.addAttribute("updateproduct", pro);
		return "update-product-form";
	}

	@GetMapping("/deleteproduct")
	public String deleteProduct(@RequestParam("id") int id) {
		productService.deleteById(id);
		return "redirect:/admin/productlist";
	}

	@GetMapping("/findproductid")
	public String findProductById(@RequestParam("id") int id, Model model) {
		Product prod = productService.findById(id);
		model.addAttribute("findproductbyid", prod);
		return "find-product-id-form";
	}

	@GetMapping("/getcategoryproduct")
	public String getCategoryProductDetails(@RequestParam("categoryNo") int id, Model model) {
		Category category = categoryService.findByCategoryNo(id);
		model.addAttribute("getcategory", category);
		model.addAttribute("getproductlist", productService.findByCategoryNo(id));
		return "category-product";
	}

	@GetMapping("/getproductbilling")
	public String getProductBilling(@RequestParam("id") long id, Model model) {
		List<BillingInvoice> product = productService.findAllByProductId(id);
		model.addAttribute("getproduct", product);
		model.addAttribute("getbilling", billService.findByBillId(id));
		return "product-billing";
	}

	@GetMapping("/men")
	public String men(Model model) {
		return "men";
	}

	@GetMapping("/women")
	public String women(Model model) {
		return "women";
	}

	@GetMapping("/mensweatshirts")
	public String sweatshirt(Model model) {
		return "mensweatshirts";
	}

	@GetMapping("/shirts")
	public String shirts(Model model) {
		return "shirts";
	}

	@GetMapping("/menjackets")
	public String jackets(Model model) {
		return "menjackets";
	}

	@GetMapping("/menrippedjeans")
	public String rippedjeans(Model model) {
		return "menrippedjeans";
	}

	@GetMapping("/mensjean")
	public String jeans(Model model) {
		return "mensjean";
	}

	@GetMapping("/about")
	public String about(Model model) {
		return "about";
	}
	@GetMapping("/successpage")
	public String sucesspage(Model model) {
	 return "successpage";
}
	@GetMapping("/womenjackets")
	public String womenjackets(Model model) {
		return "womenjackets";
	}
	@GetMapping("/womenjumpsuits")
	public String womenjumpsuits(Model model) {
		return "womenjumpsuits";
}
	@GetMapping("/womenkurtis")
	public String womenkurtis(Model model) {
		return "womenkurtis";
	}
	@GetMapping("/womenrippedjean")
	public String womenrippedjean(Model model) {
		return "womenrippedjean";
	}
	@GetMapping("/womensweatshirts")
	public String womensweatshirts(Model model) {
		return "womensweatshirts";
	}
	@GetMapping("/feedbacksuccess")
	public String feedbacksuccess(Model model) {
		return "feedbacksuccess";
	}
	}
