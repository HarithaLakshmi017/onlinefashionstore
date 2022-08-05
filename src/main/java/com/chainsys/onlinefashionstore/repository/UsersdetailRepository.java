package com.chainsys.onlinefashionstore.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.onlinefashionstore.model.Usersdetail;


@Repository
public interface UsersdetailRepository extends JpaRepository<Usersdetail, Integer> {
	
	Usersdetail findById(int id);

	Usersdetail save(Usersdetail usersdetail);

	// use for adding a new user
	void deleteById(int userId);

	List<Usersdetail> findAll();

}

