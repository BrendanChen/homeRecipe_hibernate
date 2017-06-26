package com.spring.dao;

import java.util.List;
import java.util.Map;

import com.spring.entity.IngredientVO;
import com.spring.entity.RecipeVO;

public interface IngreDAO_interface {
	
	public List<IngredientVO>getAll();
	
	public void insert(IngredientVO ingredientVO);
	
	public void update(IngredientVO ingredientVO);
	
	public void delete(IngredientVO ingredientVO);
	
	public IngredientVO findByIngreNo(IngredientVO ingredientVO);
	
	public List<IngredientVO> findByRcpSeq(RecipeVO recipeVO);
	
	public List<IngredientVO> findByCriteria(Map<String, String[]> map);
	
	public List<Integer> findHowManyGroup(int rcpSeq);
	
	public List<IngredientVO> findByPkGroupByGroupNo(int rcpSeq,int groupNo);
	
}
