package com.chainsys.onlinefashionstore.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "USERS_DETAIL")
public class Usersdetail {

	
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "USER_ID_REF")
	@SequenceGenerator(name = "USER_ID_REF", sequenceName = "USER_ID_REF", allocationSize = 1)
	@Id
	@Column(name = "USER_ID")
	private int userId;

	@Column(name = "PHONE_NUMBER")
	private long phoneNumber;

	@Column(name = "EMAIL")
	private String email;
	
	@Column(name = "PASSWORD")
	private String password;

	@Column(name = "ADDRESS")
	private String address;

	@Column(name = "ROLE")
	private String role;

	@Column(name = "USER_NAME")
	private String userName;
	@OneToMany(mappedBy = "usersdetail", fetch = FetchType.LAZY)
	List<BillingInvoice> billingInvoices = new ArrayList<>();

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public long getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(long phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public List<BillingInvoice> getBillingInvoices() {
		return billingInvoices;
	}

	public void setBillingInvoices(List<BillingInvoice> billingInvoices) {
		this.billingInvoices = billingInvoices;
	}

}
