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

@WebServlet("/Delete")
public class DeleteItem  extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int itemid = Integer.parseInt(req.getParameter("id"));
		ItemDao dao=new ItemDao();
				Item i = dao.fetechByItemId(itemid);
				int mgr = i.getManager().getId();
				HotelManagerDao dao2=new HotelManagerDao();
				HotelManager manager = dao2.fetchById(mgr);
				if(i!=null) {
					System.out.println("from delete");
					dao.deleteItem(i);
					
					List<Item> list = manager.getItem();
					req.setAttribute("list",list);
					req.setAttribute("manager", manager);
					RequestDispatcher rd=req.getRequestDispatcher("viewitems.jsp");
					System.out.println(rd);
					rd.include(req, resp);
					rd.forward(req, resp);
				}
	}

}
