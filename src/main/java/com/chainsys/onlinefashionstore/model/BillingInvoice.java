package com.chainsys.onlinefashionstore.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "BILLING_INVOICE")

public class BillingInvoice {
	private Date BILL_DATE;
	private int USER_ID;
	private int PRODUCT_ID;
	private int QUANTITY;
	private int RATE;
	private float BILL_AMOUNT;
	private String MODE_OF_PAYMENT;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int BILLING_ID;

	public int getBILLING_ID() {
		return BILLING_ID;
	}

	public void setBILLING_ID(int bILLING_ID) {
		BILLING_ID = bILLING_ID;
	}

	public Date getBILL_DATE() {
		return BILL_DATE;
	}

	public void setBILL_DATE(Date bILL_DATE) {
		BILL_DATE = bILL_DATE;
	}

	public int getUSER_ID() {
		return USER_ID;
	}

	public void setUSER_ID(int uSER_ID) {
		USER_ID = uSER_ID;
	}

	public int getPRODUCT_ID() {
		return PRODUCT_ID;
	}

	public void setPRODUCT_ID(int pRODUCT_ID) {
		PRODUCT_ID = pRODUCT_ID;
	}

	public int getQUANTITY() {
		return QUANTITY;
	}

	public void setQUANTITY(int qUANTITY) {
		QUANTITY = qUANTITY;
	}

	public int getRATE() {
		return RATE;
	}

	public void setRATE(int rATE) {
		RATE = rATE;
	}

	public float getBILL_AMOUNT() {
		return BILL_AMOUNT;
	}

	public void setBILL_AMOUNT(float bILL_AMOUNT) {
		BILL_AMOUNT = bILL_AMOUNT;
	}

	public String getMODE_OF_PAYMENT() {
		return MODE_OF_PAYMENT;
	}

	public void setMODE_OF_PAYMENT(String mODE_OF_PAYMENT) {
		MODE_OF_PAYMENT = mODE_OF_PAYMENT;
	}

}
