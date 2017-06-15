package com.ingredient.model;

import java.util.List;
import java.util.Map;

import com.recipe.model.RecipeVO;

public interface IngreService {
	
	public RecipeVO findByPk(IngredientVO ingredientVO);
	
	public RecipeVO getOneRcp(IngredientVO ingredientVO);
	
	public List<IngredientVO> getAll();
	
	public void addRcpData(IngredientVO ingredientVO);
	
	public void update(IngredientVO ingredientVO);
	
	public void delete(IngredientVO ingredientVO);
	
	public List<IngredientVO> findByRcpSeq(RecipeVO recipeVO);
	
	public List<RecipeVO> findByCriteria(Map<String,String[]> map);
	
	public List<Integer> findHowManyGroup(String rcpSeq);
	
	public List<IngredientVO> findByPkGroupByGroupNo(String rcpSeq,int groupNo);
	
}
