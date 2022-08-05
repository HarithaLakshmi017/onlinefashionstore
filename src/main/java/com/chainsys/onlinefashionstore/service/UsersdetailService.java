package com.chainsys.onlinefashionstore.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.onlinefashionstore.dto.UserBillingDTO;
import com.chainsys.onlinefashionstore.model.BillingInvoice;
import com.chainsys.onlinefashionstore.model.Usersdetail;
import com.chainsys.onlinefashionstore.repository.BillinginvoiceRepository;
import com.chainsys.onlinefashionstore.repository.UsersdetailRepository;

@Service
public class UsersdetailService {
	
	@Autowired
	UsersdetailRepository userRepository;
	@Autowired
	BillinginvoiceRepository billinginvoiceRepository;
	public List<Usersdetail> getAllUserdetails() {
		return userRepository.findAll();
		
	}

	public Usersdetail saveAll(Usersdetail theuser) {
        return userRepository.save(theuser);
    }
	public Usersdetail findUsersdetailById(int id) {
		return userRepository.findById(id);
	}

	public void deleteById(int id) {
		userRepository.deleteById(id);
	}
	
	public UserBillingDTO  getUserBillingDTO(int id) {
		UserBillingDTO dto = new UserBillingDTO();
		BillingInvoice bill = new BillingInvoice();
	  dto.setUserId(userRepository.findById(id));
		dto.setBillingInvoices(billinginvoiceRepository.findAll());
		return dto;
	}
}



