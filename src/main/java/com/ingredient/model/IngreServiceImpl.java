package com.ingredient.model;

import java.util.List;
import java.util.Map;

import com.recipe.model.RecipeVO;

public class IngreServiceImpl implements IngreService{
	
	private IngreDAO_interface dao;
	
	public IngreServiceImpl() {
		super();
		
		dao = new IngreDAO();
	}

	@Override
	public RecipeVO findByPk(IngredientVO ingredientVO) {
		return null;
	}

	@Override
	public RecipeVO getOneRcp(IngredientVO ingredientVO) {
		return null;
	}

	@Override
	public List<IngredientVO> getAll() {
		return null;
	}

	@Override
	public void addRcpData(IngredientVO ingredientVO) {
		
	}

	@Override
	public void update(IngredientVO ingredientVO) {
		
	}

	@Override
	public void delete(IngredientVO ingredientVO) {
		
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
	public List<Integer> findHowManyGroup(String rcpSeq) {
		return dao.findHowManyGroup(rcpSeq);
	}

	@Override
	public List<IngredientVO> findByPkGroupByGroupNo(String rcpSeq, int groupNo) {
		return dao.findByPkGroupByGroupNo(rcpSeq, groupNo);
	}
}
