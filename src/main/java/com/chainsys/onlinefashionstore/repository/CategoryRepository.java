package com.chainsys.onlinefashionstore.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.onlinefashionstore.model.Category;

@Repository
public interface CategoryRepository extends JpaRepository<Category,Integer> {
	
    Category findByCategoryNo(int id);
    
    @SuppressWarnings("unchecked")
	Category save( Category category);
    
    void deleteById(int id);

	 List<Category> findAll();


}
