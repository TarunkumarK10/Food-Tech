package Food_Tech.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Food_Tech.Dao.UserDao;
import Food_Tech.Dto.User;
@WebServlet("/finesh")
public class finesh extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String value = req.getParameter("value");
		
		Cart.total.clear();
		Cart.item.clear();
	
		UserDao dao=new  UserDao();
		User user = dao.fetchById(Integer.parseInt(value));
		user.setItem(null);
		dao.updateUser(user);
		req.setAttribute("msg", "sucessfully order is Complete");
	  RequestDispatcher r=req.getRequestDispatcher("end.jsp");
	  r.forward(req, resp);
		
		
	}

}
