package com.chainsys.onlinefashionstore.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.onlinefashionstore.model.Category;
import com.chainsys.onlinefashionstore.model.Product;
import com.chainsys.onlinefashionstore.model.Usersdetail;
import com.chainsys.onlinefashionstore.repository.CategoryRepository;
import com.chainsys.onlinefashionstore.repository.UsersdetailRepository;

@Service
public class UsersdetailService {
	@Autowired
	private UsersdetailRepository repo;

	public List<Usersdetail> getAllUserdetails() {
		List<Usersdetail> Usersdetail = repo.findAll();
		return Usersdetail;
		
	}

	public Usersdetail save(Usersdetail user) {
        return repo.save(user);
    }
	public Category findCategoryById(int id) {
		return repo.findById(id);
	}

	public Category updateCategory(Category category) {
		return repo.save(category);
	}

	public void deleteCategory(int id) {
		repo.deleteById(id);
	}
}


}
