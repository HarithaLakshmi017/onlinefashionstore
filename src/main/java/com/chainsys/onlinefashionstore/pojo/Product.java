package com.chainsys.onlinefashionstore.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name= "product")
public class Product {


        @Id
	    @GeneratedValue(strategy = GenerationType.AUTO)
	    private long product_id;
	    private String product_name;
	    @ManyToOne(fetch = FetchType.LAZY)
	    @JoinColumn(name = "category_id", referencedColumnName = "category_id")
	    private double rate;
	    private int quantity;
	    private String product_description;
	    @Column(name = "product_image")//sql
	    private String imageName;//java
	public Product get() {
	     return get();
	
	}

}

