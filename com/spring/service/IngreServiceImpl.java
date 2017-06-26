package com.spring.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.IngreDAO;
import com.spring.dao.IngreDAO_interface;
import com.spring.entity.IngredientVO;
import com.spring.entity.RecipeVO;

@Service
public class IngreServiceImpl implements IngreService{
	
	@Autowired
	private IngreDAO_interface dao;
	
	@Override
	public IngredientVO findByIngreNo(IngredientVO ingredientVO) {
		return dao.findByIngreNo(ingredientVO);
	}

	@Override
	public List<IngredientVO> getAll() {
		return dao.getAll();
	}

	@Override
	public void addRcpData(IngredientVO ingredientVO) {
		dao.insert(ingredientVO);
	}

	@Override
	public void update(IngredientVO ingredientVO) {
		dao.update(ingredientVO);
	}

	@Override
	public void delete(IngredientVO ingredientVO) {
		dao.delete(ingredientVO);
	}

	@Override
	public List<IngredientVO> findByRcpSeq(RecipeVO recipeVO) {
		return dao.findByRcpSeq(recipeVO);
	}

	@Override
	public List<RecipeVO> findByCriteria(Map<String, String[]> map) {
		return null;
	}

	@Override
	public List<Integer> findHowManyGroup(int rcpSeq) {
		return dao.findHowManyGroup(rcpSeq);
	}

	@Override
	public List<IngredientVO> findByPkGroupByGroupNo(int rcpSeq, int groupNo) {
		return dao.findByPkGroupByGroupNo(rcpSeq, groupNo);
	}
}
