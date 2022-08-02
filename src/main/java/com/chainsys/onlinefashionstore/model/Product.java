package com.chainsys.onlinefashionstore.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Table;

@Entity
@Table(name = "product")
public class Product {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private String productName;
	private double rate;
	private Category categoryNo;
	private int stockInhand;
	private String productDescription;
	private String productImage;
	private long productId;
	
	@Column(name="PRODUCT_ID")
	public long getProductId() {
		return productId;
	}
	public void setProductId(long productId) {
		this.productId = productId;
	}
	@Column(name="PRODUCT_NAME")
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	@Column(name="RATE")
	public double getRate() {
		return rate;
	}
	public void setRate(double rate) {
		this.rate = rate;
	}
	@Column(name="CATEGORY_NO")
	@JoinColumn(name = "CATEGORY_NO", referencedColumnName = "CATEGORY_NO")
	public Category getCategoryNo() {
		return categoryNo;
	}
	public void setCategoryNo(Category categoryNo) {
		this.categoryNo = categoryNo;
	}
	@Column(name="STOCK_IN_HAND")
	public int getStockInhand() {
		return stockInhand;
	}
	public void setStockInhand(int stockInhand) {
		this.stockInhand = stockInhand;
	}
	@Column(name="PRODUCT_DESCRIPTION")
	public String getProductDescription() {
		return productDescription;
	}
	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}
	@Column(name="PRODUCT_IMAGE")
	public String getProductImage() {
		return productImage;
	}
	public void setProductImage(String productImage) {
		this.productImage = productImage;
	}
	
}
	