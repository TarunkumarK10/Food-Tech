package Food_Tech.Controller;

import java.util.ArrayList;
import java.util.List;

import Food_Tech.Dao.ItemDao;
import Food_Tech.Dao.UserDao;
import Food_Tech.Dto.Item;
import Food_Tech.Dto.User;

public class Cart{
	
	static ArrayList<Item> item=new ArrayList<Item>();
	static ArrayList<Double> total=new ArrayList<Double>();
	
	
	public static void count(double price) {
		total.add(price);
		
	}
	
	
	public static void addcart(User user, int id) {
		 UserDao userDao=new UserDao();
		ItemDao dao=new ItemDao();
		Item item2 = dao.fetechByItemId(id);
		item.add(item2);
	    user.setItem(item);
	    User u1 = userDao.updateUser(user);
	   List<Item> list = user.getItem();
		for(Item it:list){
			System.out.println("Items name is  :"+it.getName());
			total.add(it.getPrice());
		}
		
		
	}
	
	public static  double totalPrice(List<Item> items) {
		double t=0;
		for(Item i:items) {
			t+=i.getPrice();
		System.out.println(total);
		}
		
		return t;
		
	}
	

}
