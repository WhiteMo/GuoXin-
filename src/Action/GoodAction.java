package Action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.Good;
import Impl.GoodImpl;

/**
 * Servlet implementation class GoodAction
 */
@WebServlet("/GoodAction")
public class GoodAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public GoodAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type = request.getParameter("type");
		if(type.equals("add")) {
			String name = request.getParameter("name");
			String getPrice = request.getParameter("getPrice");
			String sellPrice = request.getParameter("sellPrice");
			String num = request.getParameter("num");
			String imgUrl = request.getParameter("imgUrl");
			String sortId = request.getParameter("sortId");
			GoodImpl gImpl =new GoodImpl();
			Good g = new Good();
			g.setGetPrice(getPrice);
			g.setSellPrice(sellPrice);
			g.setImgUrl(imgUrl);
			g.setName(name);
			g.setSortId(sortId);
			g.setNum(num);
			boolean b = gImpl.addGood(g);
			if(b) {
				response.getWriter().write("success");
			}else {
				response.getWriter().write("failed");
			}
			
		}else if(type.equals("delete")) {
			String id = request.getParameter("id");
			GoodImpl gImpl =new GoodImpl();
			boolean b = gImpl.deleteGoodById(id);
			if(b) {
				response.getWriter().write("success");
			}else {
				response.getWriter().write("failed");
			}
		}else if(type.equals("update")) {
			String name = request.getParameter("name");
			String getPrice = request.getParameter("getPrice");
			String sellPrice = request.getParameter("sellPrice");
			String num = request.getParameter("num");
			String imgUrl = request.getParameter("imgUrl");
			String sortId = request.getParameter("sortId");
			String id=request.getParameter("id");
			GoodImpl gImpl =new GoodImpl();
			Good g = new Good();
			g.setGetPrice(getPrice);
			g.setSellPrice(sellPrice);
			g.setImgUrl(imgUrl);
			g.setName(name);
			g.setSortId(sortId);
			g.setNum(num);
			g.setId(id);
			boolean b = gImpl.updateGood(g);
			if(b) {
				response.getWriter().write("success");
			}else {
				response.getWriter().write("failed");
			}
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
