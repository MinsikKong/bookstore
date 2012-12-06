package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import logic.BusinessLogic;
import dto.UserDTO;

@WebServlet("/blog")
public class BlogServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	public UserDTO getUser() {
		BusinessLogic bLogic = new BusinessLogic();
		UserDTO list = bLogic.getUser();
		return list;
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
