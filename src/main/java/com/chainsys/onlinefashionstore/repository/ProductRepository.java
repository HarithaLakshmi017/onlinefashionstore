package com.chainsys.onlinefashionstore.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.onlinefashionstore.model.Product;
@Repository
public interface ProductRepository extends JpaRepository<Product,Long> {
	
	List<Product> findByCategoryNo(int id);

	  Product findByProductId(long id);
	  
	  List<Product> findAll();
	  
      @SuppressWarnings("unchecked")
	Product save(Product product);
      
      void deleteByProductId(Product id);
	
   }

