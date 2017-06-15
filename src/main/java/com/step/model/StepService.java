package com.step.model;

import java.util.List;

public interface StepService {
	
	public List<StepVO>getAll();
	
	public void insert(StepVO stepVO);
	
	public void update(StepVO stepVO);
	
	public void delete(StepVO stepVO);
	
	public List<StepVO> findByPrimaryKey(String rcpSeq);
	
}
