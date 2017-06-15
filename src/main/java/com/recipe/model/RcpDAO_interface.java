package com.recipe.model;

import java.util.List;
import java.util.Map;

public interface RcpDAO_interface {

	public List<RecipeVO>getAll();
	
	public void insert(RecipeVO recipeVO);
	
	public void update(RecipeVO recipeVO);
	
	public void delete(RecipeVO recipeVO);
	
	public RecipeVO findByPrimaryKey(RecipeVO recipeVO);
	
	public List<RecipeVO> findByCriteria(Map<String, String[]> map);
}
