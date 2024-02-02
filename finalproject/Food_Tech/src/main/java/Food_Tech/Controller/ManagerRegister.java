package Food_Tech.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Food_Tech.Dao.HotelManagerDao;
import Food_Tech.Dto.HotelManager;
@WebServlet("/managerregister")
public class ManagerRegister  extends HttpServlet{
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		String pwd=req.getParameter("pwd");
		String phone =req.getParameter("phone");
		String address=req.getParameter("address");
		String gender=req.getParameter("g");
		String Hname=req.getParameter("hotelname");
		
		
		
        HotelManagerDao dao=new HotelManagerDao();
        dao.saveManager(new HotelManager(name, email, pwd, Long.parseLong(phone), address, gender, Hname));

         RequestDispatcher r=req.getRequestDispatcher("managerLogin.jsp");
         r.forward(req, resp);
	}

}
