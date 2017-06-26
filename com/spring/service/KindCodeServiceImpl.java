package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.KindCodeDAO_interface;
import com.spring.entity.KindCodeVO;

@Service
public class KindCodeServiceImpl implements KindCodeService{
	
	@Autowired
	private KindCodeDAO_interface dao;
	
	public List<KindCodeVO> getAll() {
		return dao.getAll();
	}
}
