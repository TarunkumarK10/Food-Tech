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
@WebServlet("/cart")
public class UserCart  extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String userid = req.getParameter("id");
		UserDao userDao=new UserDao();
		System.out.println(userid);
		User user = userDao.fetchById(Integer.parseInt(userid));
		List<Item> list = user.getItem();
		req.setAttribute("user", user);
		req.setAttribute("list", list);
		RequestDispatcher r=req.getRequestDispatcher("cart.jsp");
		r.forward(req, resp);
		
	}

}
