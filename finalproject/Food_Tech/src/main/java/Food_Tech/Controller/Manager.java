package Food_Tech.Controller;

import java.io.IOException;
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

@WebServlet("/managerlogin")
public class Manager extends HttpServlet {
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String pwd = req.getParameter("pwd");
		System.out.println(email);
		System.out.println(pwd);
		HotelManagerDao dao = new HotelManagerDao();
		ItemDao dao1 = new ItemDao();

		try {
			HotelManager db = dao.fetchByEmail(email);
			if (db.getPwd().equals(pwd)) {
				List<Item> list = db.getItem();
				req.setAttribute("list", list);
				req.setAttribute("manager", db);
				RequestDispatcher r=req.getRequestDispatcher("viewitems.jsp");
				r.forward(req, resp);
				r.include(req, resp);
				

			} else {
				req.setAttribute("msg", "password worng");
				RequestDispatcher r = req.getRequestDispatcher("managerLogin.jsp");
				r.include(req, resp);

			}

		} catch (Exception e) {
			req.setAttribute("msg", "Email worng");
			RequestDispatcher r = req.getRequestDispatcher("managerLogin.jsp");
			r.include(req, resp);
		}

	}

}
