package com.chainsys.onlinefashionstore.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "USERS_DETAIL")
public class Usersdetail {
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
	@Column(name = "GENDER")
	private String gender;
	@Column(name = "ROLE")
	private String role;
	@Column(name = "USER_NAME")
	private String userName;
	@OneToMany(mappedBy = "usersdetail", fetch = FetchType.LAZY)
	List<BillingInvoice> billingInvoices = new ArrayList<>();
	

	
}
