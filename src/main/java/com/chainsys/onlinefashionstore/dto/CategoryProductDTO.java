package com.chainsys.onlinefashionstore.dto;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.onlinefashionstore.model.Product;

public class CategoryProductDTO {
	
	private List<Product> product = new ArrayList<Product>();
	@Autowired
	private int category;

	public List<Product> getProduct() {
		return product;
	}

	public void addcategoryAndProduct(Product products) {
		product.add(products);
	}

	public int getCategory() {
		return category;
	}

	public void setCategory(int category) {
		this.category = category;
	}

}

