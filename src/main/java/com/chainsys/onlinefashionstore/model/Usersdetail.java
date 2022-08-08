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
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

@Entity
@Table(name = "USERS_DETAIL")
public class Usersdetail {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@NotEmpty
	@Size(min = 2, max = 5, message = "Please enter integers only")
	@Column(name = "USER_ID")
	private int userId;
	@NotEmpty
	@Column(name = "PHONE_NUMBER")
	private long phoneNumber;
	@NotEmpty
	@Size(min = 20, max = 25, message = "Please enter valid email only")
	@Column(name = "EMAIL")
	private String email;
	@NotEmpty
	@Size(min = 10, max = 20, message = "Please enter valid password only")
	@Column(name = "PASSWORD")
	private String password;
	@NotEmpty
	@Size(min = 20, max = 30, message = "Please enter valid address only")
	@Column(name = "ADDRESS")
	private String address;
	@NotEmpty
	@Size(min = 4, max = 6, message = "Please enter characters only")
	@Column(name = "GENDER")
	private String gender;
	@NotEmpty
	@Size(min = 4, max = 5, message = "Please enter characters only")
	@Column(name = "ROLE")
	private String role;
	@NotEmpty
	@Size(min = 10, max = 20, message = "Please enter characters only")
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
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
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
