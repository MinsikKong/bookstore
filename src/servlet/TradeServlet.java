package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.ChangeUtil;
import dao.TradeDAO;
import dto.PurchaseDTO;

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
			PurchaseDTO pDto = new PurchaseDTO(); 
			op = ChangeUtil.getStringParameter(request.getParameter("op"),"");
			if(op.equals("purchaseView")){
				actionUrl = "pages/trade/purchaseView.jsp";
			}else if(op.equals("purchase")){
				request.setCharacterEncoding("utf-8");
				
				String name = ChangeUtil.getStringParameter(request.getParameter("name"),"empty");
				String postalcode = ChangeUtil.getStringParameter(request.getParameter("postalcode"),"empty");
				String addressline1 = ChangeUtil.getStringParameter(request.getParameter("addressline1"),"empty");
				String addressline2 = ChangeUtil.getStringParameter(request.getParameter("addressline2"),"empty");
				String phoneNumber = ChangeUtil.getStringParameter(request.getParameter("phoneNumber"),"empty");
				String cardNumber = ChangeUtil.getStringParameter(request.getParameter("cardNumber"),"empty");
				pDto.setName(name);
				pDto.setPostalcode(postalcode);
				pDto.setAddressline1(addressline1);
				pDto.setAddressline2(addressline2);
				pDto.setPhoneNumber(phoneNumber);
				pDto.setCardNumber(cardNumber);
				
				if(TradeDAO.purchaseBook(pDto)>0){
					System.out.println("성공!");
				}else{
					System.out.println("실패!");
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(actionUrl);
		dispatcher.forward(request, response);
	}
	
}
