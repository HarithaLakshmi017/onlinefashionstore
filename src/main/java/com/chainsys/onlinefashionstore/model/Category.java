package com.chainsys.onlinefashionstore.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

@Entity
@Table(name = "category")
public class Category {

	@Id
	@NotEmpty
	@Size(min = 2, max = 5, message = "Please enter integer only")
	@Column(name = "CATEGORY_NO")
	private int categoryNo;
	@NotEmpty
	@Size(min = 10, max = 20, message = "Please enter string only")
	@Column(name = "CATEGORY_NAME")
	private String categoryName;

	public int getCategoryNo() {
		return categoryNo;
	}

	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

}
