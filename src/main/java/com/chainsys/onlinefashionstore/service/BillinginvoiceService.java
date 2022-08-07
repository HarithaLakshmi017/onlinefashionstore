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
		
		public  BillingInvoice findById(int id) {
			return billinvoiceRepo.findById(id);
		}
		
		public  BillingInvoice deleteById(int billid) {
			return billinvoiceRepo.deleteById(billid);
		}
		
		public BillingInvoice save(BillingInvoice bill) {
			return billinvoiceRepo.save(bill);
		}
		
		public  List<BillingInvoice> findAll() {
			return billinvoiceRepo.findAll();
		}

//		public List<BillingInvoice> getUserBillingDTO() {
//		
//			return billinvoiceRepo.findAll();
//		}
//	

}

