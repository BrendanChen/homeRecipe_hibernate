package com.recipe.model;

import java.util.List;
import java.util.Map;

public interface RcpService {
	
	public RecipeVO findByPk(RecipeVO recipeVO);
	
	public RecipeVO getOneRcp(RecipeVO recipeVO);
	
	public List<RecipeVO> getAll();
	
	public void addRcpData(RecipeVO recipeVO);
	
	public void update(RecipeVO recipeVO);
	
	public void delete(RecipeVO recipeVO);
	
	public List<RecipeVO> findByCriteria(Map<String,String[]> map);
	
}
