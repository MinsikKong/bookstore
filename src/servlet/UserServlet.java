package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import dao.UserDAO;
import dto.UserDTO;

@WebServlet("/user")
public class UserServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	String actionUrl = "";
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String op= request.getParameter("op");
		String id= "1";
		if(op.equals("sessionInvalidation")){
			HttpSession session = request.getSession();
			session.invalidate();
			actionUrl = "/main?op=main";
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(actionUrl);
		dispatcher.forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String op= request.getParameter("op");
		String searchValue= request.getParameter("searchValue");
		String id= "1";
		if(op.equals("searchView")){
			UserDTO user = UserDAO.getUsers(id);
			System.out.println(user.getId());
			request.setAttribute("uDTO", user);
			actionUrl = "/pages/test.jsp";
		
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(actionUrl);
		dispatcher.forward(request, response);
	}
	

}
