package com.chainsys.onlinefashionstore.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.chainsys.onlinefashionstore.model.BillingInvoice;

public interface BillinginvoiceRepository extends JpaRepository<BillingInvoice, Integer>{ 

	BillingInvoice findById(int id);

	BillingInvoice save(int id);

	BillingInvoice deleteById(int id);

//		List<BillingInvoice> findById();
	}


