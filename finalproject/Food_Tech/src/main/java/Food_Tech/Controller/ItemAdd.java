package Food_Tech.Controller;

import java.io.IOException;
import java.lang.ProcessBuilder.Redirect;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Food_Tech.Dao.HotelManagerDao;
import Food_Tech.Dao.ItemDao;
import Food_Tech.Dto.HotelManager;
import Food_Tech.Dto.Item;

@WebServlet("/itemadd")
public class ItemAdd extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String managerId = req.getParameter("managerId");
		String name = req.getParameter("name");
		String quant = req.getParameter("quant");
		String price = req.getParameter("price");
		System.out.println("managr id   "+managerId);
		HotelManagerDao dao=new HotelManagerDao();
		ItemDao dao2=new ItemDao();
		HotelManager mgr = dao.fetchById(Integer.parseInt(managerId));
		Item item=new Item(name, Integer.parseInt(quant), Double.parseDouble(price));
		Item it = dao2.saveItem(item);
		it.setManager(mgr);
		Item items = dao2.updateItem(it);
		
		List<Item> list = mgr.getItem();
		req.setAttribute("list", list);
		req.setAttribute("manager", mgr);
		RequestDispatcher r=req.getRequestDispatcher("viewitems.jsp");
		r.forward(req, resp);
		
		
		
		
	   
		
	  
	}
}
