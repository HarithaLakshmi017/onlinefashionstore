package com.chainsys.onlinefashionstore.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.onlinefashionstore.model.BillingInvoice;
import com.chainsys.onlinefashionstore.repository.BillinginvoiceRepository;

@Service
public class BillinginvoiceService {
		@Autowired
		private  BillinginvoiceRepository billinvoiceRepo;
		
		public  BillingInvoice findByBillId(long id) {
			return billinvoiceRepo.findById(id);
		}
		
		public  BillingInvoice deleteBillById(long billid) {
			return billinvoiceRepo.deleteById(billid);
		}
		
		public BillingInvoice save(BillingInvoice bill) {
			return billinvoiceRepo.save(bill);
		}
		
		public  List<BillingInvoice> findAll() {
			return billinvoiceRepo.findAll();
		}


}

