package com.chainsys.onlinefashionstore.dto;

import java.util.ArrayList;
import java.util.List;

import com.chainsys.onlinefashionstore.model.BillingInvoice;
import com.chainsys.onlinefashionstore.model.Usersdetail;

public class UserBillingDTO {
	 private List<BillingInvoice> billingInvoices = new ArrayList<>();
	private Usersdetail usersdetail;
	public List<BillingInvoice> getBillingInvoices() {
		return billingInvoices;
	}
	public void setBillingInvoices(List<BillingInvoice> billingInvoices) {
		this.billingInvoices = billingInvoices;
	}
	public Usersdetail getUsersdetail() {
		return usersdetail;
	}
	public void setUsersdetail(Usersdetail usersdetail) {
		this.usersdetail = usersdetail;
	}
	
	
		   
}
