package com.chainsys.onlinefashionstore.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

@Entity
@Table(name = "feedback")

public class FeedBack {
	@NotEmpty
	@Size(min = 2, max = 5, message = "Please enter integer only")
	@Column(name = "feedback_id")
	private String feedbackId;
	@NotEmpty
	@Size(min = 100, max = 200, message = "Please enter characters only")
	@Column(name = "feed_back")
	private String feedback;
	@NotEmpty
	@Size(min = 8, max = 8, message = "Please enter valid date only")
	@Column(name = "feedback_date")
	private Date feedbackDate;
	@Id
	@NotEmpty
	@Size(min = 2, max = 5, message = "Please enter integer only")
	@Column(name = "user_id")
	private long userId;

	public long getUserId() {
		return userId;
	}

	public void setUserId(long userId) {
		this.userId = userId;
	}
	public String getFeedbackId() {
		return feedbackId;
	}

	public void setFeedbackId(String feedbackId) {
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

}
