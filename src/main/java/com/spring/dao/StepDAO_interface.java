package com.spring.dao;

import java.util.List;

import com.spring.entity.StepVO;

public interface StepDAO_interface {
	
	public List<StepVO>getAll();
	
	public void insert(StepVO stepVO);
	
	public void update(StepVO stepVO);
	
	public void delete(StepVO stepVO);
	
	public List<StepVO> findByPrimaryKey(int rcpSeq);
	
}
