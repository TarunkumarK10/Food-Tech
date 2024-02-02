package Food_Tech.Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import Food_Tech.Dto.HotelManager;
import Food_Tech.Dto.Item;

public class HotelManagerDao {
	EntityManager em = Persistence.createEntityManagerFactory("tarun").createEntityManager();
	EntityTransaction et = em.getTransaction();

	public HotelManager saveManager(HotelManager manager) {
		et.begin();
		em.persist(manager);
		et.commit();
		return manager;
	}
	
	public HotelManager updateManager(HotelManager manager) {
		 HotelManager db = em.find(HotelManager.class, manager.getId());
		 if(db!=null) {
			 et.begin();
				em.merge(manager);
				et.commit();
				return manager;
			}
		
		return null;
	}
	

	public  HotelManager fetchByEmail(String email) {
		Query query = em.createQuery("select u from HotelManager u where u.email=?1");
		query.setParameter(1, email);
		return (HotelManager) query.getSingleResult();
	}

	 public HotelManager fetchById(int id) {
		 HotelManager db = em.find(HotelManager.class, id);
			if(db!=null) {
				return db;
			}
				return null;
	 }

}
