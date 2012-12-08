package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import logic.BusinessLogic;
import dao.UserDAO;
import dto.UserDTO;

@WebServlet("/blog")
public class BlogServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	public UserDTO getUser() {
		BusinessLogic bLogic = new BusinessLogic();
		String value = "";
		UserDTO list = bLogic.getUser(value);
		return list;
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String op = "";
		String actionUrl = "";
		HttpSession session = null;
		try {
			if(op.equals("main")||op.equals("")){
				actionUrl = "pages/blog/blogMain.jsp";
				session = request.getSession();
				UserDAO.getFriendsCount((String)session.getAttribute("userId"));
				
			}
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
			if(op.equals("main")||op.equals("")){
				actionUrl = "pages/blog/blogMain.jsp";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(actionUrl);
		dispatcher.forward(request, response);

	}
}
