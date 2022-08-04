package com.chainsys.onlinefashionstore.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.onlinefashionstore.model.Product;
import com.chainsys.onlinefashionstore.model.Usersdetail;
@Repository
public interface ProductRepository extends JpaRepository<Product,Integer>{
	//List<Product> findAllById();
	Product save(Product product);
	Product findById(int id);
	// use for adding a new doctor
	void deleteById(int productId);
	List<Product> findAll();

}

