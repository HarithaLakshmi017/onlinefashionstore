package com.chainsys.onlinefashionstore.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.onlinefashionstore.model.Category;
import com.chainsys.onlinefashionstore.repository.BillinginvoiceRepository;
import com.chainsys.onlinefashionstore.repository.CategoryRepository;

@Service
public class BillinginvoiceService {
	@Autowired
	private BillinginvoiceRepository repo;

	public List<Category> getAllCategory() {
		List<Category> category = repo.findAll();
		return category;

}
