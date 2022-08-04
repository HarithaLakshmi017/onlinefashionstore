package com.chainsys.onlinefashionstore.dto;

import java.util.List;

import com.chainsys.onlinefashionstore.model.Product;
import com.chainsys.onlinefashionstore.model.Usersdetail;

public class UserProductDTO {
	private List<Product> products;
	private Usersdetail user;
	public List<Product> getProducts() {
		return products;
	}
	public void setProducts(List<Product> products) {
		this.products = products;
	}
	public Usersdetail getUser() {
		return user;
	}
	public void setUser(Usersdetail user) {
		this.user = user;
	}
	
	
}
