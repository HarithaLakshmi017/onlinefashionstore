package com.chainsys.onlinefashionstore.model;

import java.sql.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "BILLING_INVOICE")
public class BillingInvoice {
	
	
	@Column(name = "USER_EMAIL")
	private String userEmail;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO,generator="BILLING_ID_REF")
    @SequenceGenerator(name="BILLING_ID_REF",sequenceName ="BILLING_ID_REF",allocationSize = 1)
	@Column(name = "BILLING_ID")
	private long billingId;
	@Column(name = "PRODUCT_ID")
	private long productId;
	@Column(name = "QUANTITY")
	private int quantity;
	@Column(name = "RATE")
	private double rate;
	@Column(name = "BILL_AMOUNT")
	private float billAmount;
	
	@Column(name = "MODE_OF_PAYMENT")
	private String modeOfPayment;
	@Column(name = "BILL_DATE")
	private Date billDate;
	
//	@ManyToOne(fetch=FetchType.LAZY)
//	@JoinColumn(name = "USER_ID", nullable = false, updatable = false, insertable = false)
//	private Usersdetail usersdetail;
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name= "PRODUCT_ID", nullable = false, updatable = false, insertable = false)
	private Product product;

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public long getBillingId() {
		return billingId;
	}

	public void setBillingId(long billingId) {
		this.billingId = billingId;
	}

	public long getProductId() {
		return productId;
	}

	public void setProductId(long productId) {
		this.productId = productId;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getRate() {
		return rate;
	}

	public void setRate(double rate) {
		this.rate = rate;
	}

	public float getBillAmount() {
		return billAmount;
	}

	public void setBillAmount(float billAmount) {
		this.billAmount = billAmount;
	}

	public String getModeOfPayment() {
		return modeOfPayment;
	}

	public void setModeOfPayment(String modeOfPayment) {
		this.modeOfPayment = modeOfPayment;
	}

	public Date getBillDate() {
		return billDate;
	}

	public void setBillDate(Date billDate) {
		this.billDate = billDate;
	}

//	public Usersdetail getUsersdetail() {
//		return usersdetail;
//	}
//
//	public void setUsersdetail(Usersdetail usersdetail) {
//		this.usersdetail = usersdetail;
//	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	
	
}