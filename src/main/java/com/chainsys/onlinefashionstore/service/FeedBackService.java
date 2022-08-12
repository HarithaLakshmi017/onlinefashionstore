package com.chainsys.onlinefashionstore.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.onlinefashionstore.model.FeedBack;
import com.chainsys.onlinefashionstore.repository.FeedBackRepository;

@Service
public class FeedBackService {
		@Autowired
		private  FeedBackRepository feedbackRepo;
		
		public  FeedBack findById(int id) {
			return feedbackRepo.findById(id);
		}
		
		public FeedBack deleteById(int feedbackid) {
			return feedbackRepo.deleteById(feedbackid);
		}
		
		public FeedBack save(FeedBack fb) {
			return feedbackRepo.save(fb);
		}
		
		public  List<FeedBack> findAll() {
			
			return feedbackRepo.findAll();
		}
		

	}


