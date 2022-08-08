package com.chainsys.onlinefashionstore.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import org.hibernate.annotations.Fetch;

@Entity
@Table(name = "BILLING_INVOICE")
public class BillingInvoice {

	@NotEmpty
	@Size(min = 2, max = 5, message = "Please enter Integer only")
	@Column(name = "BILLING_ID")
	private int billingId;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@NotEmpty
	@Size(min = 2, max = 5, message = "Please enter Integer only")
	@Column(name = "USER_ID")
	private int userId;
	@NotEmpty
	@Size(min = 2, max = 5, message = "Please enter Integer only")
	@Column(name = "PRODUCT_ID")
	private long productId;
	@NotEmpty
	@Size(min = 20, max = 30, message = "Please select specified quantity only")
	@Column(name = "QUANTITY")
	private int quantity;
	@NotEmpty
	@Size(min = 2, max = 5, message = "Please enter Integer only")
	@Column(name = "RATE")
	private int rate;
	@NotEmpty
	@Size(min = 8, max = 10, message = "Please enter Integer only")
	@Column(name = "BILL_AMOUNT")
	private float billAmount;
	
	@Column(name = "MODE_OF_PAYMENT")
	private String modeOfPayment;
	@Column(name = "BILL_DATE")
	private Date billDate;
	@ManyToOne
	@JoinColumn(name = "USER_ID", nullable = false, updatable = false, insertable = false)
	private Usersdetail usersdetail;
	public int getBillingId() {
		return billingId;
	}
	public void setBillingId(int billingId) {
		this.billingId = billingId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
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
	public int getRate() {
		return rate;
	}
	public void setRate(int rate) {
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
	public Usersdetail getUsersdetail() {
		return usersdetail;
	}
	public void setUsersdetail(Usersdetail usersdetail) {
		this.usersdetail = usersdetail;
	}
	
}