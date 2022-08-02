package com.chainsys.onlinefashionstore.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.onlinefashionstore.model.Category;
import com.chainsys.onlinefashionstore.repository.CategoryRepository;

@Service
public class CategoryService {
	@Autowired
	private CategoryRepository repo;

	public List<Category> getAllProducts() {
		List<Category> category = repo.findAll();
		return category;
	}

	@Transactional

	public Category addCategory(Category category) {

		return repo.save(category);
	}

	public Optional<Category> findCategoryById(int id) {
		return repo.findById(id);
	}

	public Category updateCategory(Category category) {
		return repo.save(category);
	}

	@Transactional
	public void deleteCategory(int id) {
		repo.deleteById(id);
	}

	public void save(Category category) {

	}

	public List<Category> getAllCategory() {

		return null;
	}
}
