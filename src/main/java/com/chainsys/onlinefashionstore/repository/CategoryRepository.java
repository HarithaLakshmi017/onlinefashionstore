package com.chainsys.onlinefashionstore.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.onlinefashionstore.model.Category;

@Repository
public interface CategoryRepository extends JpaRepository<Category, Integer>{
	//List<Category> findAllById();
	Category save(Category category);
	Category findById(int id);
	// use for adding a new doctor
	void deleteById(int categoryNo);

	List<Category> findAll();

}

    
