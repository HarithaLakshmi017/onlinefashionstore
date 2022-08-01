package com.chainsys.onlinefashionstore.dto;

import com.chainsys.onlinefashionstore.model.Category;

public class ProductDTO {
	private double rate;
	private int quantity;
	private Category categoryno;
	private int stockinhand;
	private String productdescription;
	private String productimage;
	private long productid;

	private String productname;

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	public double getRate() {
		return rate;
	}

	public void setRate(double rate) {
		this.rate = rate;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public Category getCategoryno() {
		return categoryno;
	}

	public void setCategoryno(Category categoryno) {
		this.categoryno = categoryno;
	}

	public int getStockinhand() {
		return stockinhand;
	}

	public void setStockinhand(int stockinhand) {
		this.stockinhand = stockinhand;
	}

	public String getProductdescription() {
		return productdescription;
	}

	public void setProductdescription(String productdescription) {
		this.productdescription = productdescription;
	}

	public String getProductimage() {
		return productimage;
	}

	public void setProductimage(String productimage) {
		this.productimage = productimage;
	}

	public long getProductid() {
		return productid;
	}

	public void setProductid(long productid) {
		this.productid = productid;
	}
}
