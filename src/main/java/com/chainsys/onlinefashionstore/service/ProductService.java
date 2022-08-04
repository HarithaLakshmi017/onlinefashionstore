package com.chainsys.onlinefashionstore.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.onlinefashionstore.dto.UserProductDTO;
import com.chainsys.onlinefashionstore.model.Category;
import com.chainsys.onlinefashionstore.model.Product;
import com.chainsys.onlinefashionstore.repository.ProductRepository;
import com.chainsys.onlinefashionstore.repository.UsersdetailRepository;

@Service
public class ProductService {
	@Autowired
	
	ProductRepository productRepository;
	
	@Autowired
	UsersdetailRepository repository;
	public List<Product> getAllProducts() {
		return productRepository.findAll();
	}

	public void addproduct(Product product) {
		productRepository.save(product);
	}
	public void removeProductById(int id) {
		productRepository.deleteById(id);
	}
	public Product save(Product product) {
        return productRepository.save(product);
    }
	public Product findproductbyId(int id) {
        return productRepository.findById(id);
}
	public Product updateProduct(Product product) {
		return productRepository.save(product);
	}
	
	public UserProductDTO getPersonProductDTO(int id) {
		UserProductDTO dto = new UserProductDTO();
	    dto.setUser(productRepository.getById(id);
	    dto.setProducts(repository.findAll());
		}
}
