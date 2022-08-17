package com.chainsys.onlinefashionstore.dto;

import java.util.ArrayList;
import java.util.List;

import com.chainsys.onlinefashionstore.model.BillingInvoice;
import com.chainsys.onlinefashionstore.model.Product;

public class ProductBillingDTO {
	
	List<BillingInvoice> billingInvoices = new ArrayList<>();
	private Product product;
	public List<BillingInvoice> getBillingInvoices() {
		return billingInvoices;
	}
	public void setBillingInvoices(List<BillingInvoice> billingInvoices) {
		this.billingInvoices = billingInvoices;
	}

	public Product getProduct() {
		return product;
	}
	public void setProductId(Product prod) {
		this.product = prod;
	}
	  

}
