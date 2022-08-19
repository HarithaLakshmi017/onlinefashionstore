package com.chainsys.onlinefashionstore.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.onlinefashionstore.model.Usersdetail;
import com.chainsys.onlinefashionstore.repository.BillinginvoiceRepository;
import com.chainsys.onlinefashionstore.repository.FeedBackRepository;
import com.chainsys.onlinefashionstore.repository.UsersdetailRepository;

@Service
public class UsersdetailService {

	@Autowired
	UsersdetailRepository userRepository;
	@Autowired
	BillinginvoiceRepository billinginvoiceRepository;
	@Autowired
	FeedBackRepository feedbackRepository;

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

	public Usersdetail getUserNameAndPasswordAndRole(String userName, String password, String role) {
		return userRepository.findByUserNameAndPasswordAndRole(userName, password, role);
	}

	
}
