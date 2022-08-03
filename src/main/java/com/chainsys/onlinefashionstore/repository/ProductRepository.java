package com.chainsys.onlinefashionstore.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.onlinefashionstore.model.Product;
@Repository
public interface ProductRepository extends JpaRepository<Product,Long>{
	//List<Product> findAllById();
	Product save(Product product);
	Product findById(long id);
	// use for adding a new doctor
	void deleteById(long productId);
	List<Product> findAll();
//	List<Product> findAllById(long id);

}

