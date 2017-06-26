package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.CookWayDAO_interface;
import com.spring.entity.CookWayCodeVO;

@Service
public class CookWayCodeServiceImpl implements CookWayCodeService {
	
	@Autowired
	private CookWayDAO_interface dao;

	public List<CookWayCodeVO> getAll() {
		return dao.getAll();
	}
}
