package com.spring.service;

import java.util.List;
import java.util.Map;

import com.spring.entity.RecipeVO;

public interface RcpService {
	
	public RecipeVO findByPk(RecipeVO recipeVO);
	
	public List<RecipeVO> getAll();
	
	public void addRcpData(RecipeVO recipeVO);
	
	public void update(RecipeVO recipeVO);
	
	public void delete(RecipeVO recipeVO);
	
	public List<RecipeVO> findByCriteria(Map<String,String[]> map);
	
}
