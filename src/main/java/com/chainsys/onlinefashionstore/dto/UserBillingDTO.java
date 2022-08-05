package com.chainsys.onlinefashionstore.dto;

import java.util.ArrayList;
import java.util.List;

import com.chainsys.onlinefashionstore.model.BillingInvoice;
import com.chainsys.onlinefashionstore.model.Usersdetail;

public class UserBillingDTO {
	List<BillingInvoice> billingInvoices = new ArrayList<>();
	private Usersdetail usersdetail;
	public List<BillingInvoice> getBillingInvoices() {
		return billingInvoices;
	}
	public void setBillingInvoices(List<BillingInvoice> billingInvoices) {
		this.billingInvoices = billingInvoices;
	}

	public Usersdetail getUserId() {
		return usersdetail;
	}
	public void setUserId(Usersdetail usersdetail) {
		this.usersdetail = usersdetail;
	}
	  
	  
	   
}
