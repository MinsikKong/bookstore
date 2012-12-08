package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import util.ChangeUtil;
import dao.FriendDAO;

@WebServlet("/friend")
public class FriendServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String op = "";
		String actionUrl = "";
		
		try {
			if(op.equals("friendView")||op.equals("")){
				actionUrl = "pages/blog/friendsView.jsp";
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
		HttpSession session = null;
		try {
			System.out.println("1");
			op=ChangeUtil.getStringParameter(request.getParameter("op"), "");
			System.out.println(op+"op");
			if(op.equals("friendView")||op.equals("")){
				actionUrl = "pages/blog/friendsView.jsp";
				
			}else if(op.equals("acceptFriend")){
				System.out.println("2");
				String friendId = ChangeUtil.getStringParameter(request.getParameter("friendId"), "");
				session = request.getSession();
				//FriendDAO.acceptFriend((String)session.getAttribute("userId"),friendId);
				FriendDAO.acceptFriend("1","2");
				actionUrl = "friend?op=friendView";
				
			}else if(op.equals("refusalFriend")){
				String friendId = ChangeUtil.getStringParameter(request.getParameter("friendId"), "");
				session = request.getSession();
				//FriendDAO.refusalFriend((String)session.getAttribute("userId"),friendId);
				FriendDAO.refusalFriend("1","2");
				actionUrl = "friend?op=friendView";
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(actionUrl);
		dispatcher.forward(request, response);
	}
	
}