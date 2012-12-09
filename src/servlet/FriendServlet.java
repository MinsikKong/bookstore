package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import util.ChangeUtil;
import dao.FriendDAO;
import dto.UserDTO;

@WebServlet("/friend")
public class FriendServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String op = "";
		String actionUrl = "";
		int fCount = 0;
		HttpSession session = null;
		try {
			if(op.equals("friendView")||op.equals("")){
				session = request.getSession();
				System.out.println("FriendServlet의 friendView에 get으로 옴 ");
				List<UserDTO> fwResults = FriendDAO.getWaitingFriends((String)session.getAttribute("userId"));
				List<UserDTO> fResults = FriendDAO.getFriends((String)session.getAttribute("userId"));
				fCount = FriendDAO.getFriendsCount((String)session.getAttribute("userId"));
				
				request.setAttribute("fCount", fCount);
				request.setAttribute("fwLists", fwResults);
				request.setAttribute("fLists", fResults);
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
		int fCount = 0;
		HttpSession session = null;
		try {
			System.out.println("1");
			op=ChangeUtil.getStringParameter(request.getParameter("op"), "");
			System.out.println(op+"op");
			if(op.equals("friendView")||op.equals("")){
				session = request.getSession();
				System.out.println("FriendServlet의 friendView에 post로 옴 ");
				List<UserDTO> fwResults = FriendDAO.getWaitingFriends((String)session.getAttribute("userId"));
				List<UserDTO> fResults = FriendDAO.getFriends((String)session.getAttribute("userId"));
				fCount = FriendDAO.getFriendsCount((String)session.getAttribute("userId"));
				
				request.setAttribute("fCount", fCount);
				request.setAttribute("fwLists", fwResults);
				request.setAttribute("fLists", fResults);
				actionUrl = "pages/blog/friendsView.jsp";
				
			}else if(op.equals("acceptFriend")){
				String friendId = ChangeUtil.getStringParameter(request.getParameter("friendId"), "");
				session = request.getSession();
				FriendDAO.manageFriend((String)session.getAttribute("userId"),friendId,"accept");
				actionUrl = "friend?op=friendView";
				
			}else if(op.equals("refusalFriend")){
				String friendId = ChangeUtil.getStringParameter(request.getParameter("friendId"), "");
				session = request.getSession();
				FriendDAO.manageFriend((String)session.getAttribute("userId"),friendId,"refusal");
				actionUrl = "friend?op=friendView";
				
			}else if(op.equals("deleteFriend")){
				String friendId = ChangeUtil.getStringParameter(request.getParameter("friendId"), "");
				session = request.getSession();
				FriendDAO.manageFriend((String)session.getAttribute("userId"),friendId,"delete");
				actionUrl = "friend?op=friendView";
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(actionUrl);
		dispatcher.forward(request, response);
	}
	
}