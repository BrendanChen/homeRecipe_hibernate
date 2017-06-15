package com.recipe.model;

import java.util.List;
import java.util.Map;

public class RcpServiceImpl implements RcpService{
	
	private RcpDAO_interface dao;
	
	public RcpServiceImpl() {
		
		dao = new RcpDAO();
	}

	public RecipeVO getOneRcp(RecipeVO recipeVO) {
		return null;
	}

	public List<RecipeVO> getAll() {
		return null;
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
		
		List<RecipeVO> list = dao.findByCriteria(map);
		
		return list;
	}
}
