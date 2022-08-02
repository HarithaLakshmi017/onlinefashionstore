package com.chainsys.onlinefashionstore.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "USERS_DETAIL")
public class Usersdetail {
	@Id
	private int phoneNumber;
	private String email;
	private String password;
	private String address;
	private String gender;
	private String role;
	private int userId;
	private String userName;
	
   @Column(name="USER_NAME")
	public String getuserName() {
		return userName;
	}

	public void setuserName(String userName) {
		this.userName = userName;
	}
	@Column(name="USER_NAME")
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	@Column(name="PASSWORD")
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	@Column(name="ADDRESS")
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	@Column(name="GENDER")
	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
	@Column(name="ROLE")
	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}
	@Column(name="PHONE_NUMBER")
	public int getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(int phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	@Column(name="USER_ID")
	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}
}
