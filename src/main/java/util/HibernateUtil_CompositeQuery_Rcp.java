package util;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.Tuple;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.Transaction;
import com.recipe.model.RecipeVO;

public class HibernateUtil_CompositeQuery_Rcp {

	public static EntityManager entityManager = null;

	public static List<RecipeVO> getAllC(Map<String, String[]> map) {

			List<RecipeVO> list = null;

			Session session = HibernateUtil.getSessionFactory().openSession();

			Transaction tx = session.beginTransaction();

			entityManager = session.getEntityManagerFactory().createEntityManager();

			try {
				List<Predicate> predicates = new ArrayList<Predicate>();

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
						//System.out.println("key : " + key);
						if (count == 1) {

							Predicate predicate = criteriaBuilder.equal(recipeRoot.get(key), value.trim());
							predicates.add(predicate);

						} else if (count == 2) {

							Predicate predicate = criteriaBuilder.and(criteriaBuilder.equal(recipeRoot.get(key), value.trim()));
							predicates.add(predicate);

						} else if (count == 3) {

							Predicate predicate = criteriaBuilder.and(criteriaBuilder.equal(recipeRoot.get(key), value.trim()));
							predicates.add(predicate);
						}
					}
				}
				Predicate[] arrs = null;
				criteria.where(predicates.toArray(arrs));

				TypedQuery<RecipeVO> tq = entityManager.createQuery(criteria);

				list = tq.getResultList();

				tx.commit();
			} catch (RuntimeException ex) {
				if (tx != null)
					tx.rollback();
				throw ex; // System.out.println(ex.getMessage());
			} finally {
				session.close();
				HibernateUtil.getSessionFactory().close();
			}
		
		return list;
	}
}
