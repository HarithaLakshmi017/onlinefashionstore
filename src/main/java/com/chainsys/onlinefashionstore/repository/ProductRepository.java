package com.chainsys.onlinefashionstore.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.onlinefashionstore.model.Product;
@Repository
public interface ProductRepository extends JpaRepository<Product,Long>{
	List<Product> findAllByProduct_Id(int id);
	Product findById(int id);

}

