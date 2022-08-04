package com.chainsys.onlinefashionstore.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.chainsys.onlinefashionstore.model.Usersdetail;
import com.chainsys.onlinefashionstore.repository.UsersdetailRepository;

@Service
public class UsersdetailService {
	
	@Autowired
	private UsersdetailRepository repo;

	public List<Usersdetail> getAllUserdetails() {
		return repo.findAll();
		
	}

	public Usersdetail saveAll(Usersdetail theuser) {
        return repo.save(theuser);
    }
	public Usersdetail findUsersdetailById(int id) {
		return repo.findById(id);
	}

	public void deleteById(int id) {
		repo.deleteById(id);
	}
}



