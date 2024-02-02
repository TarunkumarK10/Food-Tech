package Food_Tech.Controller;

import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet("/login")
public class Login extends HttpServlet {
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email=req.getParameter("email");
		String pwd=req.getParameter("pwd");
		UserDao dao=new UserDao();
		PrintWriter writer= resp.getWriter();
		
		try {
			User db = dao.fetchUser(email);
			System.out.println(db.getPwd());
			System.out.println(pwd);
			if(db.getPwd().equals(pwd)) {
				ItemDao dao2=new ItemDao();
				List<Item> list = dao2.fetechAll();
				req.setAttribute("user", db);
				req.setAttribute("list", list);
				RequestDispatcher r=req.getRequestDispatcher("orderview.jsp");
				r.forward(req, resp);
				
				
			}
			else {
				req.setAttribute("msg", "password worng");
				RequestDispatcher r=req.getRequestDispatcher("login.jsp");
				r.include(req, resp);

			}
		} catch (Exception e) {
			req.setAttribute("msg", "Email worng");
			RequestDispatcher r=req.getRequestDispatcher("login.jsp");
			r.include(req, resp);
		}
		
	}


}
