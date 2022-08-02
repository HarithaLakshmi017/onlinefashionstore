package com.chainsys.onlinefashionstore.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.onlinefashionstore.model.FeedBack;
import com.chainsys.onlinefashionstore.model.Product;
import com.chainsys.onlinefashionstore.repository.FeedBackRepository;
import com.chainsys.onlinefashionstore.repository.ProductRepository;

	@Service
	public class FeedBackService {
		@Autowired
		ProductRepository productRepository;
		
		
		public List<FeedBack> getAllFeedBack() {
			return FeedBackRepository.findAll();
		}

		public static void addFeedBack(FeedBack feedback) {
			FeedBackRepository.save(feedback);
		}


}
