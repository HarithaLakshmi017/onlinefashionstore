package com.chainsys.onlinefashionstore.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.onlinefashionstore.model.FeedBack;

@Repository
	public interface FeedBackRepository extends JpaRepository<FeedBack,Integer>{
		//List<Product> findAllById();
		@SuppressWarnings("unchecked")
		FeedBack save(FeedBack fb);
		FeedBack findById(int id);
		FeedBack deleteById(int feedbackId);
		List<FeedBack> findAll();
//		List<Product> findAllById(long id);

	}
