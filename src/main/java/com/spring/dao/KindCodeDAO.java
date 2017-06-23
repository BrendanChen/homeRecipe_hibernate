package com.spring.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.springframework.stereotype.Repository;

import com.spring.entity.KindCodeVO;
import com.spring.entity.RecipeVO;

import util.HibernateUtil;

@Repository
public class KindCodeDAO implements KindCodeDAO_interface{
	
	private static final String GET_ALL_STMT = "from KindCodeVO";
	
	@PersistenceContext
	private EntityManager entityManager;
	
	public List<KindCodeVO> getAll() {
	      CriteriaQuery<KindCodeVO> criteriaQuery = entityManager.getCriteriaBuilder().createQuery(KindCodeVO.class);
	      @SuppressWarnings("unused")
	      Root<KindCodeVO> root = criteriaQuery.from(KindCodeVO.class);
	      return entityManager.createQuery(criteriaQuery).getResultList();
	}
}
