package com.chainsys.onlinefashionstore.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "feedback")
public class FeedBack {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)

	private int email_id;
	private String feed_back;
	private String user_id;
	private Date feedback_date;

	public Date getFeedback_date() {
		return feedback_date;
	}

	public void setFeedback_date(Date feedback_date) {
		this.feedback_date = feedback_date;
	}

	public int getBilling_id() {
		return billing_id;
	}

	public void setBilling_id(int billing_id) {
		this.billing_id = billing_id;
	}

	private int billing_id;

	public int getemail_id() {
		return email_id;
	}

	public void setemail_id(int email_id) {
		this.email_id = email_id;
	}

	public String getfeed_back() {
		return feed_back;
	}

	public void setfeed_back(String feed_back) {
		this.feed_back = feed_back;
	}

	public String getuser_id() {
		return user_id;
	}

	public void setuser_id(String user_id) {
		this.user_id = feed_back;
	}
}
