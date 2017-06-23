package com.spring.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.dao.StepDAO;
import com.spring.dao.StepDAO_interface;
import com.spring.entity.StepVO;

@Service
public class StepServiceImpl implements StepService {
	
	private StepDAO_interface dao;
	
	
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
	public List<StepVO> findByPrimaryKey(int rcpSeq) {
		return dao.findByPrimaryKey(rcpSeq);
	}
}
