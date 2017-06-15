package com.kindCode.model;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.hibernate.Session;

import util.HibernateUtil;

public class KindCodeDAO implements KindCodeDAO_interface{
	
	private static final String GET_ALL_STMT = "from KindCodeVO";
	
	private EntityManager entityManager;
	
	public List<KindCodeVO> getAll() {
		
		List<KindCodeVO> list = null;
		
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		
		try {
			session.beginTransaction();
			
			entityManager = session.getEntityManagerFactory().createEntityManager();
			
			Query query = entityManager.createQuery(GET_ALL_STMT);
			
			list = query.getResultList();
			
			session.getTransaction().commit();

		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
		return list;
	}
	
	
//	public static void main(String[] args) {
//		
//		KindCodeDAO dao = new KindCodeDAO();
//		
//		List<KindCodeVO> list = dao.getAll();
//		
//		if(list != null){
//			for(KindCodeVO kindCodeVO : list){
//				System.out.print(kindCodeVO.getKindNo() + ",");
//				System.out.print(kindCodeVO.getKindName());
//				System.out.println();
//			}
//			
//		}
//	}
}
