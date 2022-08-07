package com.chainsys.onlinefashionstore.dto;

import java.util.ArrayList;
import java.util.List;

import com.chainsys.onlinefashionstore.model.Category;
import com.chainsys.onlinefashionstore.model.Product;

public class CategoryProductDTO {
	
	    private Category category;
	     private List<Product> product = new ArrayList<>();
	    public Category getCategory() {
	        return category;
	    }
	    public void setCategory(Category category) {
	        this.category = category;
	    }
	    public List<Product> getProduct() {
	        return product;
	    }
	    public void setProduct(List<Product> product) {
	        this.product = product;
	    }
	     
	}


