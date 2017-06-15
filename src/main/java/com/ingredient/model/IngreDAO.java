package com.ingredient.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Expression;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.recipe.model.RecipeVO;

import util.HibernateUtil;

public class IngreDAO implements IngreDAO_interface {
	
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

	@Override
	public List<IngredientVO> findByRcpSeq(RecipeVO recipeVO) {

		Session session = HibernateUtil.getSessionFactory().openSession();

		Transaction tx = session.beginTransaction();

		List<IngredientVO> list = null;

		try {

			list = findIngreByRcpPk(recipeVO.getRcpSeq(), session);

			tx.commit();

		} catch (RuntimeException ex) {

			session.getTransaction().rollback();

			throw ex; 
		}
		return list;
	}

	private List<IngredientVO> findIngreByRcpPk(String rcpSeq, Session session) {
		
		List<IngredientVO> list = null;
		
		entityManager = session.getEntityManagerFactory().createEntityManager();

		entityManager.getTransaction().begin();

		CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();

		CriteriaQuery<IngredientVO> criteria = criteriaBuilder.createQuery(IngredientVO.class);

		Root<IngredientVO> ingredientRoot = criteria.from(IngredientVO.class);

		criteria.select(ingredientRoot);
		
		Predicate predicate = criteriaBuilder.equal(ingredientRoot.get("rcpSeq"), rcpSeq);
		
		criteria.where(predicate);
		
		list = entityManager.createQuery(criteria).getResultList();
		
		entityManager.getTransaction().commit();
		
		return list;
	}

	@Override
	public List<IngredientVO> findByCriteria(Map<String, String[]> map) {
		return null;
	}

	@Override
	public List<Integer> findHowManyGroup(String rcpSeq) {
		
		Session session = HibernateUtil.getSessionFactory().openSession();

		Transaction tx = session.beginTransaction();

		List<Integer> list = null;
		
		try {
			
			list = findGroupNoQuantity(rcpSeq,session);
			
			tx.commit();
			
		} catch (Exception ex) {
			
			session.getTransaction().rollback();

			throw ex; // System.out.println(ex.getMessage());
		}
		
		return list;
	}

	private List<Integer> findGroupNoQuantity(String rcpSeq, Session session) {
		
		List<Integer> list = null;
		
		entityManager = session.getEntityManagerFactory().createEntityManager();

		entityManager.getTransaction().begin();

		CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();

		CriteriaQuery<Integer> criteria = criteriaBuilder.createQuery(Integer.class);

		Root<IngredientVO> ingredientRoot = criteria.from(IngredientVO.class);

		criteria.select(ingredientRoot.get("groupNo"));
		
		Predicate predicate = criteriaBuilder.equal(ingredientRoot.get("rcpSeq"), rcpSeq);
		
		criteria.where(predicate);
		
		criteria.groupBy(ingredientRoot.get("groupNo"));
		
		list = entityManager.createQuery(criteria).getResultList();
		
		return list;
	}
	
	@Override
	public List<IngredientVO> findByPkGroupByGroupNo(String rcpSeq,int groupNo) {
		
		Session session = HibernateUtil.getSessionFactory().openSession();

		Transaction tx = session.beginTransaction();

		List<IngredientVO> list = null;
		
		try {
			
			list = findIngreByPkGroupped(rcpSeq,groupNo,session);
			
			tx.commit();
			
		} catch (Exception ex) {
			
			session.getTransaction().rollback();

			throw ex; 
		}
		
		return list;
		
	}

	private List<IngredientVO> findIngreByPkGroupped(String rcpSeq,int groupNo,Session session) {
		
		List<IngredientVO> list = null;
		
		entityManager = session.getEntityManagerFactory().createEntityManager();

		entityManager.getTransaction().begin();

		CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();

		CriteriaQuery<IngredientVO> criteria = criteriaBuilder.createQuery(IngredientVO.class);

		Root<IngredientVO> ingredientRoot = criteria.from(IngredientVO.class);

		criteria.select(ingredientRoot);
		
		Predicate predicate = criteriaBuilder.equal(ingredientRoot.get("rcpSeq"), rcpSeq);
		
		Predicate predicate2 = criteriaBuilder.and(criteriaBuilder.equal(ingredientRoot.get("groupNo"), groupNo));
				
		criteria.where(predicate,predicate2);
		
		list = entityManager.createQuery(criteria).getResultList();
		
		return list;
	}

//	public static void main(String[] args) {
//
//		IngreDAO dao = new IngreDAO();
//
//		RecipeVO recipeVO = new RecipeVO();
//		recipeVO.setRcpSeq("7001");

//		List<IngredientVO> list = dao.findByRcpSeq(recipeVO);
//
//		if (list != null) {
//
//			for (IngredientVO ingredientVO : list) {
//
//				System.out.println("食材:" + ingredientVO.getiName());
//			}
//		}
		
		
		//findByPkGroupByGroupNo
//		int groupNo = 1;
//		
//		Session session = HibernateUtil.getSessionFactory().openSession();
//
//		Transaction tx = session.beginTransaction();
//		
//		List<IngredientVO> list = dao.findIngreByPkGroupped(recipeVO.getRcpSeq(), groupNo, session);
//		
//		System.out.println("list's Size :"+list.size());
//		
//		if(list != null){
//		
//		for(IngredientVO ingredientVO : list){
//			
//			
//			System.out.println("食材 :"+ingredientVO.getiName());
//		}
//	}
		
		
//		Session session = HibernateUtil.getSessionFactory().openSession();
//
//		Transaction tx = session.beginTransaction();
//		
//		String rcpSeq = "7001";
//		
//		List<Integer> list = dao.findGroupNoQuantity(rcpSeq, session);
//		
//		if(list != null){
//			
//			for(Integer groupNo : list){
//				
//				System.out.println(" groupNo :"+groupNo);
//			}
//		}
//	}
}
