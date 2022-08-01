package com.chainsys.onlinefashionstore.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "product")
public class Product {

//	@Id
//	@GeneratedValue(strategy = GenerationType.AUTO)
	private long productid;
	private String productname;
	private double rate;
	private Category categoryno;
	private int stockinhand;
	private String productdescription;
	private String productimage;
	@Id
	@Column(name="PRODUCT_ID")
	public long getProductid() {
		return productid;
	}
	public void setProductid(long productid) {
		this.productid = productid;
	}
	@Column(name="PRODUCT_NAME")
	public String getProductname() {
		return productname;
	}
	public void setProduct_name(String productname) {
		this.productname = productname;
	}
	@Column(name="RATE")
	public double getrate() {
		return rate;
	}
	public void setrate(double rate) {
		this.rate = rate;
	}
	@Column(name="PRODUCT_DESCRIPTION")
	public String getProductdescription() {
		return productdescription;
	}
	public void setProductdescription(String productdescription) {
		this.productdescription = productdescription;
	}
	@Column(name="PRODUCT_IMAGE")
	public String getProduct_image() {
		return productimage;
	}
	public void setProductimage(String productimage) {
		this.productimage = productimage;
	}
	@Column(name="CATEGORY_NO")
	public Category getCategoryno() {
		return categoryno;
	}
	public void setCategoryno(Category category) {
		this.categoryno = category;
	}
	@Column(name="STOCK_IN_HAND")
	public int getStockinhand() {
		return stockinhand;
	}
	public void setStockinhand(int stockinhand) {
		this.stockinhand = stockinhand;
	
	}
	
	}

