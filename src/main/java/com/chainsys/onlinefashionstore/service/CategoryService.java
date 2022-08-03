package com.chainsys.onlinefashionstore.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.onlinefashionstore.model.Category;
import com.chainsys.onlinefashionstore.repository.CategoryRepository;

@Service
public class CategoryService {
	@Autowired
	private CategoryRepository repo;

	public List<Category> getAllCategory() {
		List<Category> category = repo.findAll();
		return category;
		
	}

	public Category addCategory(Category category) {

		return repo.save(category);
	}

	public Category findCategoryById(int id) {
		return repo.findById(id);
	}

	public Category updateCategory(Category category) {
		return repo.save(category);
	}

	public void deleteCategory(int id) {
		repo.deleteById(id);
	}
}
