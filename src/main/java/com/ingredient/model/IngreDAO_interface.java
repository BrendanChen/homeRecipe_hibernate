package com.ingredient.model;

import java.util.List;
import java.util.Map;

import com.recipe.model.RecipeVO;

public interface IngreDAO_interface {
	
	public List<IngredientVO>getAll();
	
	public void insert(IngredientVO ingredientVO);
	
	public void update(IngredientVO ingredientVO);
	
	public void delete(IngredientVO ingredientVO);
	
	public RecipeVO findByPrimaryKey(IngredientVO ingredientVO);
	
	public List<IngredientVO> findByRcpSeq(RecipeVO recipeVO);
	
	public List<IngredientVO> findByCriteria(Map<String, String[]> map);
	
	public List<Integer> findHowManyGroup(String rcpSeq);
	
	public List<IngredientVO> findByPkGroupByGroupNo(String rcpSeq,int groupNo);
	
}
