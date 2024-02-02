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
@WebServlet("/register")
public class Register extends HttpServlet{
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		String pwd=req.getParameter("pwd");
		String phone =req.getParameter("phone");
		String address=req.getParameter("address");
		String gender=req.getParameter("g");
		System.out.println(gender);
		System.out.println(email);
		
         UserDao dao=new UserDao();
         User user = dao.saveUser(new User(name, email, pwd, Long.parseLong(phone), address, gender));

         RequestDispatcher r=req.getRequestDispatcher("login.jsp");
         r.forward(req, resp);
	}


}
