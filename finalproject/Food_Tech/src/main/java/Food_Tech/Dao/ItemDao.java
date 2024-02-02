package Food_Tech.Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import Food_Tech.Dto.HotelManager;
import Food_Tech.Dto.Item;

public class ItemDao {

	private static final int Item = 0;
	EntityManager em = Persistence.createEntityManagerFactory("tarun").createEntityManager();
	EntityTransaction et = em.getTransaction();

	public Item saveItem(Item item) {
		et.begin();
		em.persist(item);
		et.commit();
		System.out.println(item);
		return item;
	}

	public void ItemClear(Item item) {
		et.begin();
		em.remove(item);
		et.commit();
		System.out.println(item);

	}
	
	public Item fetechByItemId(int id) {
		Item db = em.find(Item.class, id);
		if(db!=null) {
			return db;
		}
		return null;
	}

	public Item updateItem(Item item) {
		Item db = em.find(Item.class, item.getId());
		if (db != null) {
			et.begin();
			em.merge(item);
			et.commit();
			return item;
		}
		return null;
	}
	public void deleteItem(Item item) {
		Item db = em.find(Item.class, item.getId());
		if (db != null) {
			et.begin();
			em.remove(db);
			et.commit();

		}
	}

	public List<Item> fetechByManagerId(int id) {
		Query query = em.createQuery("select a from Item a where a.manager_id=?1");
		System.out.println("done");
		query.setParameter(1, id);
		List<Item> list = query.getResultList();
		if (list != null) {
			System.out.println(list);
			return list;
		}
		return null;
	}

	public List<Item> fetechAll() {
		System.out.println("from fetech all items");
		Query query = em.createQuery("select  e from Item e ");
		List<Item> list = query.getResultList();
		return list;

	}

}
