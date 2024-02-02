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
import net.bytebuddy.description.annotation.AnnotationDescription.RenderingDispatcher;
@WebServlet("/save")
public class UpdateItem extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("form save");
         String mgrID=req.getParameter("managerId");
        
		String id=req.getParameter("id");
		System.out.println(id);
		String name=req.getParameter("name");
		System.out.println(name);
		String quant=req.getParameter("quant");
		String price=req.getParameter("price");
		System.out.println(price);
		System.out.println(quant);
		ItemDao dao=new ItemDao();
		
		HotelManagerDao dao2=new HotelManagerDao();
		HotelManager mgr3 = dao2.fetchById(Integer.parseInt(mgrID));
		System.out.println(mgr3.getEmail());
		Item item= dao.fetechByItemId(Integer.parseInt(id));
		Item i=new Item(name, Integer.parseInt(quant), Double.parseDouble(price));
		i.setManager(mgr3);
		i.setId(Integer.parseInt(id));
		Item it = dao.updateItem(i);
		List<Item> list = it.getManager().getItem();
		HotelManager mgrmain = it.getManager();
		req.setAttribute("manager",mgrmain);
			req.setAttribute("list", list);
				RequestDispatcher r=req.getRequestDispatcher("viewitems.jsp");
				r.forward(req, resp);
		}
		
	
	}


