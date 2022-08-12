package com.chainsys.onlinefashionstore.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.onlinefashionstore.model.Category;
import com.chainsys.onlinefashionstore.repository.CategoryRepository;
import com.chainsys.onlinefashionstore.repository.ProductRepository;

@Service
public class CategoryService {
	@Autowired
	private CategoryRepository catrepository;
	@Autowired
	private ProductRepository productrepository;


	public List<Category> getCategory() {
		List<Category> categorylist = catrepository.findAll();
		return categorylist;
	}	

	public Category save( Category category) {
		return catrepository.save(category);
	}

	public Category findById(int id) {
		return catrepository.findByCategoryNo(id);
	}
	public Category findByCategoryNo(int id) {
		return catrepository.findByCategoryNo(id);
	}

	public void deleteById(int id) {
		catrepository.deleteById(id);
	
		
	}
}
