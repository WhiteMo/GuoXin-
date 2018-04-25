package Action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.GoodSort;
import Impl.GoodSortImpl;

/**
 * Servlet implementation class GoodSortAction
 */
@WebServlet("/GoodSortAction")
public class GoodSortAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GoodSortAction() {
        super();

    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type=request.getParameter("type");
		if(type.equals("add")) {
			String name=request.getParameter("name");
			GoodSort sort =new GoodSort();
			sort.setName(name);
			boolean b = new GoodSortImpl().addGoodSort(sort);
			if(b) {
				response.getWriter().write("success");
			}else {
				response.getWriter().write("failed");
			}
		}else if(type.equals("update")){
			String id = request.getParameter("id");
			String name=request.getParameter("name");
			GoodSort sort =new GoodSort();
			sort.setId(id);
			sort.setName(name);
			boolean b = new GoodSortImpl().updateGoodSort(sort);
			if(b) {
				response.getWriter().write("success");
			}else {
				response.getWriter().write("failed");
			}
		}else if(type.equals("delete")) {
			String id = request.getParameter("id");
			boolean b = new GoodSortImpl().deleteGoodSortById(id);
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
