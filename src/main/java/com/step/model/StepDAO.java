package com.step.model;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.hibernate.HibernateException;
import org.hibernate.Session;

import util.HibernateUtil;

public class StepDAO implements Step_interface{
	
	private EntityManager entityManager;
	
	
	@Override
	public List<StepVO> getAll() {
		return null;
	}

	@Override
	public void insert(StepVO stepVO) {
		
	}

	@Override
	public void update(StepVO stepVO) {
		
	}

	@Override
	public void delete(StepVO stepVO) {
		
	}

	@Override
	public List<StepVO> findByPrimaryKey(String rcpSeq) {
		
		
		List<StepVO> list = null;
		
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		
		try {
			
			session.beginTransaction();
			
			entityManager = session.getEntityManagerFactory().createEntityManager();
			
			entityManager.getTransaction().begin();
			
			CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();
			
			CriteriaQuery<StepVO> criteriaQuery = criteriaBuilder.createQuery(StepVO.class);
			
			 Root<StepVO> root = criteriaQuery.from(StepVO.class);
			 
			 criteriaQuery.select(root);
			 
			 Predicate predicate = criteriaBuilder.equal(root.get("rcpSeq"),rcpSeq);
					 
			 criteriaQuery.where(predicate);
			 
			 TypedQuery<StepVO> typeQuery = entityManager.createQuery(criteriaQuery);
			 
			 list = typeQuery.getResultList();
			 
			 session.getTransaction().commit();
			 
		} catch (Exception ex) {
			entityManager.getTransaction().rollback();
			throw ex;
		}
		
		return list;
	}
	
//	public static void main(String[] args) {
//		
//		StepDAO dao = new StepDAO();
//		
//		String pk = "7001";
//		
//		List<StepVO> list = dao.findByPrimaryKey(pk);
//		
//		if(list != null){
//			
//			for(StepVO step : list){
//				
//				System.out.println("步驟 "+step.getStepNo()+":"+step.getDetail());
//				
//			}
//		}
//	}
}


