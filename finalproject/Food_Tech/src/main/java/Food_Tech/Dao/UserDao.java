package Food_Tech.Dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import Food_Tech.Dto.User;

public class UserDao {
	EntityManager em = Persistence.createEntityManagerFactory("tarun").createEntityManager();
	EntityTransaction et = em.getTransaction();

	public User saveUser(User user) {
		et.begin();
		em.persist(user);
		et.commit();
		return user;
	}

	public User updateUser(User user) {
		User db = em.find(User.class, user.getId());
		if (db != null) {
			et.begin();
			em.merge(user);
			et.commit();
			return db;
		}
		return null;
	}

	public User fetchById(int id) {
		User db = em.find(User.class, id);
		if (db != null) {
			return db;
		}
		return null;
	}

	public User fetchUser(String email) {

		Query query = em.createQuery("select u from User u where u.email=?1");
		query.setParameter(1, email);
		return (User) query.getSingleResult();
	}
}
