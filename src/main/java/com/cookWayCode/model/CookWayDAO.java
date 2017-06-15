package com.cookWayCode.model;

import java.util.List;

//import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.query.Query;

import util.HibernateUtil;

public class CookWayDAO implements CookWayDAO_interface {

	private static final String GET_ALL_STMT = "from CookWayCodeVO";

	public List<CookWayCodeVO> getAll() {

		List<CookWayCodeVO> list = null;

		Session session = HibernateUtil.getSessionFactory().getCurrentSession();

		try {
			session.beginTransaction();
			
			Query<CookWayCodeVO> query = session.createQuery(GET_ALL_STMT);
			
			list = query.list();
			
//			Query query = session.createQuery(GET_ALL_STMT);
//			list = query.list();
			
			session.getTransaction().commit();

		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
		return list;
	}

//	public static void main(String[] args) {
//
//		CookWayDAO dao = new CookWayDAO();
//
//		List<CookWayCodeVO> list = dao.getAll();
//
//		if (list != null) {
//			for (CookWayCodeVO cookWayCodeVO : list) {
//				System.out.print(cookWayCodeVO.getCookWayNo() + ",");
//				System.out.print(cookWayCodeVO.getCookWayName());
//				System.out.println();
//			}
//
//		}
//	}
}
