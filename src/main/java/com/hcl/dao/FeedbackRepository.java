package com.hcl.dao;

import org.springframework.data.repository.CrudRepository;

import com.hcl.model.Feedback;

public interface FeedbackRepository  extends CrudRepository<Feedback, Long>{
	
	

}
