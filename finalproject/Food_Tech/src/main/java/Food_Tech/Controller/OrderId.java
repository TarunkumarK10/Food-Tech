package Food_Tech.Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Food_Tech.Dao.ItemDao;
import Food_Tech.Dao.UserDao;
import Food_Tech.Dto.Item;
import Food_Tech.Dto.User;
@WebServlet("/orderId")
public class OrderId extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		String item = req.getParameter("id");
		String userid=req.getParameter("userid");
		System.out.println(item);
		System.out.println("user id"+userid);
		ItemDao dao=new ItemDao();
		UserDao userdao=new UserDao();
		User user = userdao.fetchById(Integer.parseInt(userid));
		Item it = dao.fetechByItemId(Integer.parseInt(item));
		Cart.addcart(user, it.getId()); 
		
		try {
			List<Item> list = dao.fetechAll();
			req.setAttribute("user", user);
			req.setAttribute("list", list);
			RequestDispatcher r=req.getRequestDispatcher("orderview.jsp");
			r.forward(req, resp);
			
		} catch (Exception e) {
			RequestDispatcher r=req.getRequestDispatcher("orderview.jsp");
			r.forward(req, resp);
			
		}
		
	}

}
