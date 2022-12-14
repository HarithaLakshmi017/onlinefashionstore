package com.chainsys.onlinefashionstore.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.onlinefashionstore.model.Usersdetail;


@Repository
public interface UsersdetailRepository extends JpaRepository<Usersdetail, Integer> {
	
	Usersdetail findById(int id);

	@SuppressWarnings("unchecked")
	Usersdetail save(Usersdetail usersdetail);

	void deleteById(int id);

	List<Usersdetail> findAll();
	Usersdetail findByUserNameAndPasswordAndRole(String userName, String password,String role);

}

