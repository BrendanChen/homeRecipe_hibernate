package com.step.model;

import java.util.List;

public class StepServiceImpl implements StepService {
	
	private Step_interface dao;
	
	
	public StepServiceImpl() {
		super();
		
		dao = new StepDAO();
		
	}

	@Override
	public List<StepVO> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insert(StepVO stepVO) {
		// TODO Auto-generated method stub

	}

	@Override
	public void update(StepVO stepVO) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(StepVO stepVO) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<StepVO> findByPrimaryKey(String rcpSeq) {
		return dao.findByPrimaryKey(rcpSeq);
	}
}
