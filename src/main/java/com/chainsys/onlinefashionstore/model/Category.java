package com.chainsys.onlinefashionstore.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "category")
public class Category {

	@Id
	@Column(name = "CATEGORY_NO")
	private int categoryno;

	public int getCategory_no() {
		return categoryno;
	}

	public void setCategory_no(int categoryno) {
		this.categoryno = categoryno;
	}
    @Column(name= "CATEGORY_NAME")
	private String categoryname;

	public String getCategory_name() {
		return categoryname;
	}

	public void setCategory_name(String categoryname) {
		this.categoryname = categoryname;
	}

}
