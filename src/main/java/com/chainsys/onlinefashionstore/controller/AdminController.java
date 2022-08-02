package com.chainsys.onlinefashionstore.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.chainsys.onlinefashionstore.dto.ProductDTO;
import com.chainsys.onlinefashionstore.model.Category;
import com.chainsys.onlinefashionstore.model.Product;
import com.chainsys.onlinefashionstore.service.CategoryService;
import com.chainsys.onlinefashionstore.service.ProductService;

@Controller
@RequestMapping("/")
public class AdminController {
	public static String uploadDir = System.getProperty("user.dir") + "/src/main/resources/static/productImages";
	@Autowired
	CategoryService categoryService;
	@Autowired
	ProductService productService;

	@GetMapping("/admin")
	public String adminHome() {
		return "admin";
	}

	@GetMapping("/admin/categorylist")
	public String getAllDoctor(Model model) {
		List<Category> categorylist = categoryService.getAllCategory();
		model.addAttribute("allcategory", categorylist);
		return "list-category";
	}

	@GetMapping("/admin/categories")
	public String category(Model model) {
		Category category = new Category();
		model.addAttribute("addcategories", categoryService);
		return "add-category-form";
	}

	@GetMapping("/add")
	public String addNewcategory(@ModelAttribute("addcategory") Category category) {
		categoryService.addCategory(category);
		return "redirect:/admin/categories";
	}

	@GetMapping("/admin/categories/update")
	public String showUpdateForm(@RequestParam("categoryNo") int no, Model model) {
		Optional<Category> category = categoryService.findCategoryById(no);
		model.addAttribute("updateCategory", category);
		return "update-doctor-form";
	}

	@PostMapping("/admin/categories/update")
	public String updateCategory(@ModelAttribute("updatecategory") Category category) {
		categoryService.save(category);
		return "redirect:/admin/categories";
	}

	@GetMapping("/admin/categories/delete/{id}")
	public String deleteCategory(@PathVariable("id") int id) {
		categoryService.deleteCategory(id);
		return "redirect:/admin/categories";
	}

//	@GetMapping("/admin/categories/update/{id}")
//	public String updateCategoryById(@PathVariable int id, Model model) {
//		Optional<Category> category = CategoryService.updateCategoryById(id);
//		if (category.isPresent()) {
//			model.addAttribute("category", category.get());
//			return "addcategory";
//		} else {
//			return "404";
//		}
//	}
//	

	// products

//	@GetMapping("/admiproductsn/")
//	public String products(Model model) {
//		model.addAttribute("products", productService.getAllProducts());
//		return "products";
//	}

	@GetMapping("/admin/products/")
	public String products(Model model) {
		List<Category> productlist = categoryService.getAllProducts();
		model.addAttribute("allproduct", productlist);
		return "list-product";
	}

	@GetMapping("/admin/products/add")
	public String addProducts(Model model) {
		model.addAttribute("productDTO", new ProductDTO());
		model.addAttribute("categories", categoryService.getAllCategory());
		return "addproduct";
	}

//To upload img in database
//	@PostMapping("/admin/products/add")
//	public String productAddPost(@ModelAttribute("productDTO") ProductDTO productDTO,
//			@RequestParam("productImage") MultipartFile file, @RequestParam("imgName") String imgName)
//			throws IOException {
//		Product product = new Product();
//		product.setProductId(productDTO.getProductid());
//		product.setProductName(productDTO.getProductname());
//		product.setCategoryNo(categoryService.updateCategoryById(productDTO.getCategoryno()).get());
//		product.setStockInhand(productDTO.getStockinhand());
//		product.setRate(productDTO.getRate());
//		product.setProductDescription(productDTO.getProductdescription());
//		product.setProductImage(productDTO.getProductimage());
//		String imageUUID;
//		if (!file.isEmpty()) {
//			imageUUID = file.getOriginalFilename();
//			Path fileAndPathName = Paths.get(uploadDir, imageUUID);
//			Files.write(fileAndPathName, file.getBytes());
//		} else {
//			imageUUID = imgName;
//		}
//		product.setProductImage(imageUUID);
//		productService.addproduct(product);
//		return "redirect:/admin/products";
//	}

	@GetMapping("/admin/product/delete/{id}")
	public String deleteProduct(@PathVariable("id") long id) {
		productService.removeProductById(id);
		return "redirect:/admin/products";
	}

	@GetMapping("/admin/product/update/{id}")
	public String updateProduct(@PathVariable("id") long id, Model model) {
		Product product = productService.getProductsById(id);
		ProductDTO productDTO = new ProductDTO();
		productDTO.setProductid(product.getProductId());
		productDTO.setCategoryno(product.getCategoryNo());
		productDTO.setProductname(product.getProductName());
		productDTO.setProductdescription(product.getProductDescription());
		productDTO.setProductimage(product.getProductImage());

		model.addAttribute("categories", categoryService.getAllCategory());
		model.addAttribute("productDTO", productDTO);

		return "addproduct";
	}
}