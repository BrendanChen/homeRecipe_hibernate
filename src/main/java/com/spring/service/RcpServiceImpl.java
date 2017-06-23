package com.spring.service;

import java.util.List;
import java.util.Map;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.RcpDAO;
import com.spring.dao.RcpDAO_interface;
import com.spring.entity.RecipeVO;

@Transactional
@Service
public class RcpServiceImpl implements RcpService{
	
	@Autowired
	private RcpDAO_interface dao;

	public List<RecipeVO> getAll() {
		return dao.getAll();
	}

	public void addRcpData(RecipeVO recipeVO) {
		dao.insert(recipeVO);
	}

	public void update(RecipeVO recipeVO) {
		dao.update(recipeVO);
	}

	public void delete(RecipeVO recipeVO) {
		dao.delete(recipeVO);
	}

	public RecipeVO findByPk(RecipeVO recipeVO) {
		return dao.findByPrimaryKey(recipeVO);
	}

	public List<RecipeVO> findByCriteria(Map<String, String[]> map) {
		return dao.findByCriteria(map);
	}
}
