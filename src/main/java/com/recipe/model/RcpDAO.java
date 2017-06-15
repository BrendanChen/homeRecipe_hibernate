package com.recipe.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.Transaction;

import util.HibernateUtil;
import util.HibernateUtil_CompositeQuery_Rcp;

public class RcpDAO implements RcpDAO_interface {

	private static final String GET_ALL_STMT = "from RecipeVO  order by rcp_seq";

	private EntityManager entityManager;

	public List<RecipeVO> getAll() {

		List<RecipeVO> list = null;

		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		try {

			session.beginTransaction();

			entityManager = session.getEntityManagerFactory().createEntityManager();

			entityManager.getTransaction().begin();

			Query query = entityManager.createQuery(GET_ALL_STMT);

			list = query.getResultList();

			session.getTransaction().commit();

		} catch (RuntimeException ex) {

			session.getTransaction().rollback();

			throw ex;
		}
		return list;
	}

	public void insert(RecipeVO recipeVO) {

		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		try {
			EntityTransaction transaction = session.beginTransaction();

			entityManager = session.getEntityManagerFactory().createEntityManager();

			entityManager.getTransaction().begin();

			entityManager.persist(recipeVO);

			entityManager.getTransaction().commit();
			
		} catch (RuntimeException e) {

			session.getTransaction().rollback();

			throw e;
		}
	}

	public void update(RecipeVO recipeVO) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		try {
			session.beginTransaction();
			session.saveOrUpdate(recipeVO);
		} catch (RuntimeException e) {

			session.getTransaction().rollback();
			throw e;
		}

	}

	public void delete(RecipeVO recipeVO) {

		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		try {
			session.beginTransaction();
			session.delete(recipeVO);
			session.getTransaction().commit();
		} catch (RuntimeException e) {
			session.getTransaction().rollback();
			throw e;
		}
	}

	public RecipeVO findByPrimaryKey(RecipeVO searchCondition) {

		RecipeVO recipeVO = null;

		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		try {
			session.beginTransaction();

			recipeVO = session.get(RecipeVO.class, searchCondition.getRcpSeq());

			session.getTransaction().commit();

		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
		return recipeVO;
	}

	public List<RecipeVO> findByCriteria(Map<String, String[]> map) {

		Session session = HibernateUtil.getSessionFactory().openSession();

		Transaction tx = session.beginTransaction();

		List<RecipeVO> list;

		try {

			list = findByCompositeSearch(map, session);

			tx.commit();

		} catch (RuntimeException ex) {

			session.getTransaction().rollback();

			throw ex; // System.out.println(ex.getMessage());
		}
		return list;
	}

	private List<RecipeVO> findByCompositeSearch(Map<String, String[]> map, Session session) {

		List<RecipeVO> list = null;
		
		List<Predicate> predicates = new ArrayList<Predicate>();

		entityManager = session.getEntityManagerFactory().createEntityManager();

		entityManager.getTransaction().begin();

		CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();

		CriteriaQuery<RecipeVO> criteria = criteriaBuilder.createQuery(RecipeVO.class);

		Root<RecipeVO> recipeRoot = criteria.from(RecipeVO.class);

		criteria.select(recipeRoot);

		Set<String> keys = map.keySet();

		int count = 0;
		for (String key : keys) {

			String value = map.get(key)[0];
			
			if (value != null && value.trim().length() != 0 && !"action".equals(key)) {

				count++;
				if (count == 1) {
					
					
					if(!key.equals("rName")){
						
						Predicate predicate = criteriaBuilder.equal(recipeRoot.get(key), value.trim());
						predicates.add(predicate);
						
					}else{
						
						Predicate predicate = criteriaBuilder.like(recipeRoot.<String>get(key), "%"+value.trim()+"%");
						predicates.add(predicate);
					}
					
					
				} else if (count == 2 || count == 3) {
					
					
					if(!key.equals("rName")){
						
						Predicate predicate = criteriaBuilder.and(criteriaBuilder.equal(recipeRoot.get(key), value.trim()));
						predicates.add(predicate);
						
					}else{
						
						Predicate predicate = criteriaBuilder.like(recipeRoot.<String>get(key), "%"+value.trim()+"%");
						predicates.add(predicate);
					}
				} 
			}
		}
		criteria.where(predicates.toArray(new Predicate[]{}));
		
		TypedQuery<RecipeVO> tq = entityManager.createQuery(criteria);

		list = tq.getResultList();

		return list;
	}

	public static void main(String[] args) {

		RcpDAO dao = new RcpDAO();
//		 RecipeVO searchCondition = new RecipeVO();
//
//		 searchCondition.setRcpSeq("7003");
//		 RecipeVO recipeVO = dao.findByPrimaryKey(searchCondition);
//		 System.out.print(recipeVO.getRcpSeq() + ",");
//		 System.out.print(recipeVO.getrName() + ",");
//		 System.out.print(recipeVO.getCookTime() + ",");
//		 System.out.print(recipeVO.getCookWayNo()+ ",");
//		 System.out.print(recipeVO.getCreateDt() + ",");
//		 System.out.print(recipeVO.getKindNo()+ ",");
//		 System.out.print(recipeVO.getServing()+ ",");
//		 System.out.println(recipeVO.getNote());
//		 System.out.println("---------------------");

		// �d�ߥ���
//		List<RecipeVO> list = dao.getAll();
//		if (list != null) {
//			for (RecipeVO recipe : list) {
//				System.out.print(recipe.getRcpSeq() + ",");
//				System.out.print(recipe.getrName() + ",");
//				System.out.print(recipe.getCookTime() + ",");
//				System.out.print(recipe.getCookWayNo() + ",");
//				System.out.print(recipe.getCreateDt() + ",");
//				System.out.print(recipe.getKindNo() + ",");
//				System.out.print(recipe.getServing() + ",");
//				System.out.println(recipe.getNote());
//				System.out.println("---------------------");
//			}
//		} else {
//			System.out.print("�d�L���...");
//		}

//		 RecipeVO recipeVO = new RecipeVO();
//		 recipeVO.setrName("紅油炒手");
//		 recipeVO.setCookTime(15);
//		 recipeVO.setCookWayNo("A");
//		 recipeVO.setCreateDt(java.sql.Date.valueOf("2002-01-01"));
//		 recipeVO.setKindNo("1R2");
//		 recipeVO.setServing(1);
//		 recipeVO.setNote("簡介...");
//		 recipeVO.setTrick("小撇不");
//		 dao.insert(recipeVO);

	}
}
