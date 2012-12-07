package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.ChangeUtil;

@WebServlet("/trade")
public class TradeServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String op = "";
		String actionUrl = "";
		
		try {
			op = ChangeUtil.getStringParameter(request.getParameter("op"),"");
			if(op.equals("tradeView")||op.equals("")){
				actionUrl = "pages/trade/tradeView.jsp";
			}else if(op.equals("cartView")){
				actionUrl = "pages/trade/cartView.jsp";
			}else if(op.equals("sellerView")){
				actionUrl = "pages/trade/sellerView.jsp";
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
			op = ChangeUtil.getStringParameter(request.getParameter("op"),"");
			if(op.equals("purchaseView")){
				actionUrl = "pages/trade/purchaseView.jsp";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(actionUrl);
		dispatcher.forward(request, response);
	}
	
}
