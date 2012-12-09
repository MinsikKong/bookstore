package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.ChangeUtil;
import dao.BookDAO;
import dto.BookDTO;

@WebServlet("/search")
public class SearchServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String op = "";
		String actionUrl = "";
		op = ChangeUtil.getStringParameter(request.getParameter("op"),"");
		
		try {
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(actionUrl);
		dispatcher.forward(request, response);

	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String op = "";
		String actionUrl = "";
		try {
			if(op.equals("searchView")||op.equals("")){
				request.setCharacterEncoding("UTF-8");
				String sValue = ChangeUtil.getStringParameter(request.getParameter("searchValue"),"");
				List<BookDTO> results = BookDAO.bookSearch(sValue);
				
				request.setAttribute("sDto", results);
				actionUrl = "pages/search/searchResult.jsp";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(actionUrl);
		dispatcher.forward(request, response);

	}
}
