package com.chainsys.onlinefashionstore.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "feedback")

public class FeedBack {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "feedback_id_REF")
	@SequenceGenerator(name = "feedback_id_REF", sequenceName = "feedback_id_REF", allocationSize = 1)
	@Column(name = "feedback_id")
	private int feedbackId;
	@Column(name = "feed_back")
	private String feedback;
	@Column(name = "feedback_date")
	private Date feedbackDate;

	@Column(name = "EMAIL")
	private String email;

	public int getFeedbackId() {
		return feedbackId;
	}

	public void setFeedbackId(int feedbackId) {
		this.feedbackId = feedbackId;
	}

	public String getFeedback() {
		return feedback;
	}

	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}

	public Date getFeedbackDate() {
		return feedbackDate;
	}

	public void setFeedbackDate(Date feedbackDate) {
		this.feedbackDate = feedbackDate;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}