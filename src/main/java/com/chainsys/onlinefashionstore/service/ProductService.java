package com.chainsys.onlinefashionstore.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.onlinefashionstore.model.BillingInvoice;
import com.chainsys.onlinefashionstore.model.Product;
import com.chainsys.onlinefashionstore.repository.BillinginvoiceRepository;
import com.chainsys.onlinefashionstore.repository.ProductRepository;
import com.chainsys.onlinefashionstore.repository.UsersdetailRepository;

@Service
public class ProductService {
	@Autowired
	ProductRepository productRepository;
	@Autowired
	UsersdetailRepository userrepository;
	@Autowired
	BillinginvoiceRepository billinginvoiceRepository;

	public List<Product> getProduct() {
		List<Product> productlist = productRepository.findAll();
		return productlist;
	}
	
	public Product save( Product category) {
		return productRepository.save(category);
	}

	public Product findById(long id) {
		return productRepository.findByProductId(id);
	}
	public List<Product> findByCategoryNo(int id) {
		return productRepository.findByCategoryNo(id);
	}
	public List<BillingInvoice> findAllByProductId(long productId) {
		return billinginvoiceRepository.findAllByProductId(productId);
	}
	public void deleteById(long id) {
		productRepository.deleteById(id);
	}
}


