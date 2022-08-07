package com.chainsys.onlinefashionstore.dto;

import java.util.ArrayList;
import java.util.List;

import com.chainsys.onlinefashionstore.model.FeedBack;
import com.chainsys.onlinefashionstore.model.Usersdetail;

public class UserFeedbackDTO {
	
	 private Usersdetail usersdetail;
     private List<FeedBack> feedback = new ArrayList<>();
    public Usersdetail getUsersdetail() {
        return usersdetail;
    }
    
    public void setUsersdetail(Usersdetail usersdetail) {
        this.usersdetail = usersdetail;
    }
    public List<FeedBack> getFeedback() {
        return feedback;
    }
    public void setFeedBack(List<FeedBack> feedback) {
        this.feedback = feedback;
    }
     
}
	  
	   



