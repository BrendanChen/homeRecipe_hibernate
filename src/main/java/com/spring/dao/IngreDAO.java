package com.spring.dao;

import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

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
	public List<IngredientVO> getAll() {
		return null;
	}

	@Override
	public void insert(IngredientVO ingredientVO) {

	}

	@Override
	public void update(IngredientVO ingredientVO) {

	}

	@Override
	public void delete(IngredientVO ingredientVO) {

	}

	@Override
	public RecipeVO findByPrimaryKey(IngredientVO ingredientVO) {
		return null;
	}

	// @Override
	// public List<IngredientVO> findByRcpSeq(RecipeVO recipeVO) {

	// Session session = HibernateUtil.getSessionFactory().openSession();
	//
	// Transaction tx = session.beginTransaction();
	//
	// List<IngredientVO> list = null;
	//
	// try {
	//
	// list = findIngreByRcpPk(recipeVO.getRcpSeq(), session);
	//
	// tx.commit();
	//
	// } catch (RuntimeException ex) {
	//
	// session.getTransaction().rollback();
	//
	// throw ex;
	// }
	// return list;

	// return null;
	// }

	@Override

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
	public List<IngredientVO> findByCriteria(Map<String, String[]> map) {
		return null;
	}

	@Override
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
