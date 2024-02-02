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
import Food_Tech.Dto.HotelManager;
import Food_Tech.Dto.Item;


@WebServlet("/manager")
public class Additem extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("Id");
		HotelManagerDao dao=new HotelManagerDao();
		HotelManager manager = dao.fetchById(Integer.parseInt(id));
		List<Item> list = manager.getItem();
		req.setAttribute("list", list);
		req.setAttribute("manager", manager);
		RequestDispatcher r=req.getRequestDispatcher("items.jsp");
		r.forward(req, resp);
	

}}
