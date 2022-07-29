package com.chainsys.onlinefashionstore.pojo;

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
	    @GeneratedValue(strategy = GenerationType.AUTO)
	    @Column(name = "category_no")
	    private int category_no;
	    
	    
	    public int getCategory_no() {
			return category_no;
		}

		public void setCategory_no(int category_no) {
			this.category_no = category_no;
		}

		@Column(name = "category_name")
	    private String category_name;

	    public String getCategory_name() {
			return category_name;
		}

		public void setCategory_name(String category_name) {
			this.category_name = category_name;
		}

	   
	}


