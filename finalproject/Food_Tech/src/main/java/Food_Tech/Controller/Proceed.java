package Food_Tech.Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Food_Tech.Dao.UserDao;
import Food_Tech.Dto.Item;
import Food_Tech.Dto.User;

@WebServlet("/proceed")
public class Proceed extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String userid = req.getParameter("user");
		String itemid = req.getParameter("itemId");
		
		String itemPrice = req.getParameter("itemPrice");
		String itemQuant = req.getParameter("itemQuant");
		
		System.out.println(itemPrice);
		System.out.println(itemQuant);
		
		UserDao dao=new UserDao();
//		User u1 = dao.fetchById(Integer.parseInt(userid));
//		List<Item> l = u1.getItem();
		
		
		
		User user = dao.fetchById(Integer.parseInt(userid));
		List<Item> items = user.getItem();
//		req.setAttribute("total", Cart.totalPrice(items));
		req.setAttribute("list", items);
		req.setAttribute("id", Integer.parseInt(userid));
		RequestDispatcher r=req.getRequestDispatcher("proceed.jsp");
		r.forward(req, resp);
		
		
	}

}
