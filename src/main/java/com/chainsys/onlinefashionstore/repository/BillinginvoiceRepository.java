package com.chainsys.onlinefashionstore.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.chainsys.onlinefashionstore.model.BillingInvoice;
@Repository
public interface BillinginvoiceRepository extends JpaRepository<BillingInvoice,Long>{ 

	BillingInvoice findById(long id);

	@SuppressWarnings("unchecked")
	BillingInvoice save(BillingInvoice billingInvoice);

	BillingInvoice deleteById(long id);
	List<BillingInvoice> findAll();
	List<BillingInvoice> findAllByProductId(long productId);
	
	List<BillingInvoice> findAllByBillingId(long billId);
	
	@Query(value="SELECT * FROM BILLING_INVOICE where USER_EMAIL=?1",nativeQuery=true)
	public List<BillingInvoice> getUserEmail(String userEmail);
	}


