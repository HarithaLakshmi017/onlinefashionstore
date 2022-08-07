package com.chainsys.onlinefashionstore.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.onlinefashionstore.dto.CategoryProductDTO;
import com.chainsys.onlinefashionstore.model.Category;
import com.chainsys.onlinefashionstore.repository.CategoryRepository;
import com.chainsys.onlinefashionstore.repository.ProductRepository;

@Service
public class CategoryService {
	@Autowired
	private CategoryRepository catrepo;
	@Autowired
	private ProductRepository productrepo;

	public List<Category> getAllCategory() {
		List<Category> category = catrepo.findAll();
		return category;
		
	}

	public Category addCategory(Category category) {

		return catrepo.save(category);
	}

	public Category findCategoryById(int id) {
		return catrepo.findById(id);
	}

	public Category updateCategory(Category category) {
		return catrepo.save(category);
	}

	public void deleteCategory(int id) {
		catrepo.deleteById(id);
	}

 public CategoryProductDTO getCategoryProductDTO(int id) {
	 CategoryProductDTO dto = new CategoryProductDTO();
	 Category cat = new Category();
	 dto.setCategory(catrepo.findById(id));
	 dto.setProduct(productrepo.findAll());
	 return dto;
 }
}