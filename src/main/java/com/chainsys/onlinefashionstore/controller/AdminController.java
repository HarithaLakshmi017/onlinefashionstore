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

import com.chainsys.onlinefashionstore.dto.CategoryProductDTO;
import com.chainsys.onlinefashionstore.dto.ProductBillingDTO;
import com.chainsys.onlinefashionstore.dto.UserBillingDTO;
import com.chainsys.onlinefashionstore.model.Category;
import com.chainsys.onlinefashionstore.model.Product;
import com.chainsys.onlinefashionstore.service.BillinginvoiceService;
import com.chainsys.onlinefashionstore.service.CategoryService;
import com.chainsys.onlinefashionstore.service.ProductService;

@Controller
@RequestMapping("/admin")
public class AdminController {
//	public static String uploadDir = System.getProperty("user.dir") + "/src/main/resources/static/productImages";
	@Autowired
	CategoryService categoryService;
	@Autowired
	ProductService productService;
	@Autowired
	BillinginvoiceService billService;

	@GetMapping("/adminhome")
	public String adminHome() {
		return "admin";
	}

	@RequestMapping("/categorylist")
	public String getAllcategory(Model model) {
		List<Category> categorylist = categoryService.getAllCategory();
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
	public String addNewcategory(@ModelAttribute("addcategories") Category category) {
		categoryService.addCategory(category);
		return "redirect:/admin/categorylist";
	}

	@GetMapping("/updateCategoryform")
	public String showUpdateForm(@RequestParam("categoryid") int no, Model model) {
		Category category = categoryService.findCategoryById(no);
		model.addAttribute("updateCategory", category);
		return "update-category-form";
	}

	@PostMapping("/update")
	public String updateCategory(@ModelAttribute("updateCategory") Category category) {
		categoryService.updateCategory(category);
		return "redirect:/admin/categorylist";
	}

	@GetMapping("/deleteCategory")
	public String deleteCategory(@RequestParam("categoryid") int id) {
		categoryService.deleteCategory(id);
		return "redirect:/admin/categorylist";
	}

	@GetMapping("/getCategoryproduct")
	public String getCategoryProduct(@RequestParam("id") int id, Model model) {
		CategoryProductDTO dto = new CategoryProductDTO();
		model.addAttribute("cate", categoryService.getCategoryProductDTO(id));
		model.addAttribute("getproduct", productService.getAllProducts());
		return "category-product";
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

	@GetMapping("/productlist")
	public String product(Model model) {
		List<Product> productlist = productService.getAllProducts();
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
	public String addproduct(@ModelAttribute("addproductform") Product p) {
		productService.save(p);
		return "redirect:/admin/productlist";
	}

	@GetMapping("/updateProductform")
	public String showUpdate(@RequestParam("id") int id, Model model) {
		Product pro = new Product();
		model.addAttribute("updateproduct", pro);
		return "update-product-form";
	}

	@PostMapping("/updateProduct")
	public String updateProduct(@ModelAttribute("updateproduct") Product pro) {
		productService.save(pro);
		return "redirect:/admin/productlist";
	}

//	@PostMapping("/newproduct")
//	 public String addNewProduct(@ModelAttribute("addproduct") Product p) {
//	 productService.save(p);
//	 return "redirect:/product/productlist";
//	    }

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

	@GetMapping("/deleteproduct")
	public String deleteProduct(@RequestParam("id") int id) {
		productService.removeProductById(id);
		return "redirect:/admin/productlist";
	}

	@GetMapping("/findproductid")
	public String findProductById(@RequestParam("id") int id, Model model) {
		Product prod = productService.findproductbyId(id);
		model.addAttribute("findproductbyid", prod);
		return "find-product-id-form";
	}


@GetMapping("/getproductbill")
public String getProductBilling(@RequestParam("id") int id, Model model) {
	ProductBillingDTO dto = new ProductBillingDTO();
	model.addAttribute("products", productService.getProductBillingDTO(id));
	model.addAttribute("getbill", productService.getAllbilldetails());
	return "product-billing";
}
}

//	@GetMapping("/admin/product/update/{id}")
//	public String updateProduct(@PathVariable("id") long id, Model model) {
//		Product product = productService.getProductsById(id);
//		ProductDTO productDTO = new ProductDTO();
//		productDTO.setProductid(product.getProductId());
//		productDTO.setCategoryno(product.getCategoryNo());
//		productDTO.setProductname(product.getProductName());
//		productDTO.setProductdescription(product.getProductDescription());
//		productDTO.setProductimage(product.getProductImage());
//
//		model.addAttribute("categories", categoryService.getAllCategory());
//		model.addAttribute("productDTO", productDTO);
//
//		return "addproduct";
//	}
//}