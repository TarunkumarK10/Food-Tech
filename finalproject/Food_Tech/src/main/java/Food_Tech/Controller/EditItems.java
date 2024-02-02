package Food_Tech.Controller;

import java.io.IOException;

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
@WebServlet("/Update")
public class EditItems extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int itemid = Integer.parseInt(req.getParameter("id"));
		ItemDao dao=new ItemDao();
				Item i = dao.fetechByItemId(itemid);
				if(i!=null) {
					System.out.println("from edit");
					req.setAttribute("id", i);
					RequestDispatcher rd=req.getRequestDispatcher("update.jsp");
					System.out.println(rd);
					rd.include(req, resp);
					rd.forward(req, resp);
				}
				
		
	}

}
