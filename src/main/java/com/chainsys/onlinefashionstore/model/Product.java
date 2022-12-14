package com.chainsys.onlinefashionstore.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "product")
public class Product {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO,generator="PRODUCT_ID_REF")
    @SequenceGenerator(name="PRODUCT_ID_REF",sequenceName ="PRODUCT_ID_REF",allocationSize = 1)
	@Column(name = "PRODUCT_ID")
	private long productId;
	
	@Column(name = "PRODUCT_NAME")
	private String productName;
	
	@Column(name = "RATE")
	private double rate;

	@Column(name = "CATEGORY_NO")
	private int categoryNo;
	@Column(name = "STOCK_IN_HAND")
	private int stockInhand;
	@Column(name = "PRODUCT_DESCRIPTION")
	private String productDescription;
	@Column(name = "PRODUCT_IMAGE")
	private String productImage;

	public long getProductId() {
		return productId;
	}

	public void setProductId(long productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public double getRate() {
		return rate;
	}

	public void setRate(double rate) {
		this.rate = rate;
	}

	public int getCategoryNo() {
		return categoryNo;
	}

	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}

	public int getStockInhand() {
		return stockInhand;
	}

	public void setStockInhand(int stockInhand) {
		this.stockInhand = stockInhand;
	}

	public String getProductDescription() {
		return productDescription;
	}

	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}

	public String getProductImage() {
		return productImage;
	}

	public void setProductImage(String productImage) {
		this.productImage = productImage;
	}

	@ManyToOne
	@JoinColumn(name = "CATEGORY_NO", insertable = false, updatable = false, nullable = false)

	private Category category;

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	@OneToMany(mappedBy = "product", fetch = FetchType.LAZY)
	private List<BillingInvoice> billinginvoice;

	public List<BillingInvoice> getBillinginvoice() {
		return billinginvoice;
	}

	public void setBillinginvoice(List<BillingInvoice> billinginvoice) {
		this.billinginvoice = billinginvoice;
	}

}
