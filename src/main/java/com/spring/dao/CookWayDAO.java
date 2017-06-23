package com.spring.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.criteria.CriteriaQuery;

import org.springframework.stereotype.Repository;
import com.spring.entity.CookWayCodeVO;


@Repository
public class CookWayDAO implements CookWayDAO_interface {

	@PersistenceContext
	private EntityManager entityManager;
	
	public List<CookWayCodeVO> getAll() {
		CriteriaQuery<CookWayCodeVO> criteriaQuery = entityManager.getCriteriaBuilder().createQuery(CookWayCodeVO.class);
		criteriaQuery.from(CookWayCodeVO.class);
		List<CookWayCodeVO> list = entityManager.createQuery(criteriaQuery).getResultList();
		return list;
	}
}
