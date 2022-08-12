package com.chainsys.onlinefashionstore.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.onlinefashionstore.model.BillingInvoice;
@Repository
public interface BillinginvoiceRepository extends JpaRepository<BillingInvoice,Long>{ 

	BillingInvoice findById(long id);

	BillingInvoice save(BillingInvoice billingInvoice);

	BillingInvoice deleteById(long id);
	List<BillingInvoice> findAll();
	List<BillingInvoice> findAllByProductId(long productId);
	
	List<BillingInvoice> findAllByBillingId(long billId);
	}


