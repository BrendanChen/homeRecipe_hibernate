package com.spring.dao;

import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.spring.entity.IngredientVO;
import com.spring.entity.RecipeVO;

import util.HibernateUtil;

@Repository
public class IngreDAO implements IngreDAO_interface {

	@PersistenceContext
	private EntityManager entityManager;

	@Override
	@Transactional
	public List<IngredientVO> getAll() {
		return entityManager.createNativeQuery("select * from ingredient").getResultList();
	}

	@Override
	@Transactional
	public void insert(IngredientVO ingredientVO) {
		entityManager.persist(ingredientVO);
	}

	@Override
	@Transactional
	public void update(IngredientVO ingredientVO) {
		entityManager.merge(ingredientVO);
	}

	@Override
	@Transactional
	public void delete(IngredientVO ingredientVO) {
		ingredientVO = entityManager.find(IngredientVO.class, ingredientVO.getIngreNo());
		entityManager.remove(ingredientVO);
	}

	@Override
	@Transactional
	public IngredientVO findByIngreNo(IngredientVO ingredientVO) {
		return entityManager.find(IngredientVO.class, ingredientVO.getIngreNo());
	}

	@Override
	@Transactional
	public List<IngredientVO> findByRcpSeq(RecipeVO recipeVO) {

		CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();
		CriteriaQuery<IngredientVO> criteria = criteriaBuilder.createQuery(IngredientVO.class);
		Root<IngredientVO> ingredientRoot = criteria.from(IngredientVO.class);

		criteria.select(ingredientRoot);

		Predicate predicate = criteriaBuilder.equal(ingredientRoot.get("rcpSeq"), recipeVO.getRcpSeq());

		criteria.where(predicate);

		List<IngredientVO> list = entityManager.createQuery(criteria).getResultList();

		return list;
	}

	@Override
	@Transactional
	public List<IngredientVO> findByCriteria(Map<String, String[]> map) {
		return null;
	}

	@Override
	@Transactional
	public List<Integer> findHowManyGroup(int rcpSeq) {

		CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();

		CriteriaQuery<Integer> criteria = criteriaBuilder.createQuery(Integer.class);

		Root<IngredientVO> ingredientRoot = criteria.from(IngredientVO.class);

		criteria.select(ingredientRoot.get("groupNo"));

		Predicate predicate = criteriaBuilder.equal(ingredientRoot.get("rcpSeq"), rcpSeq);

		criteria.where(predicate);

		criteria.groupBy(ingredientRoot.get("groupNo"));

		return entityManager.createQuery(criteria).getResultList();
	}

	@Override
	@Transactional
	public List<IngredientVO> findByPkGroupByGroupNo(int rcpSeq, int groupNo) {
		
		CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();

		CriteriaQuery<IngredientVO> criteria = criteriaBuilder.createQuery(IngredientVO.class);

		Root<IngredientVO> ingredientRoot = criteria.from(IngredientVO.class);

		criteria.select(ingredientRoot);

		Predicate predicate = criteriaBuilder.equal(ingredientRoot.get("rcpSeq"), rcpSeq);

		Predicate predicate2 = criteriaBuilder.and(criteriaBuilder.equal(ingredientRoot.get("groupNo"), groupNo));

		criteria.where(predicate, predicate2);

		return entityManager.createQuery(criteria).getResultList();
	}
}
