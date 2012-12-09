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

import logic.TradeLogic;
import util.ChangeUtil;
import dao.TradeDAO;
import dto.BookDTO;
import dto.PurchaseDTO;
import dto.SellDTO;

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
				System.out.println("dodget의 tradeView로 옴");
				HttpSession session = request.getSession();
				
				List<BookDTO> bDto = TradeDAO.getBuyList((String)session.getAttribute("userId"));
				List<BookDTO> sDto = TradeDAO.getSellList((String)session.getAttribute("userId"));
				int totalBuyPrice = TradeDAO.totalBuyPrice((String)session.getAttribute("userId"));
				int totalSellPrice = TradeDAO.totalSellPrice((String)session.getAttribute("userId"));
				request.setAttribute("sDto", sDto);
				request.setAttribute("bDto", bDto);
				request.setAttribute("totalBuyPrice", totalBuyPrice);
				request.setAttribute("totalSellPrice", totalSellPrice);
				actionUrl = "pages/trade/tradeView.jsp";
			}else if(op.equals("cartView")){
				actionUrl = "pages/trade/cartView.jsp";
			}else if(op.equals("sellerView")){
				actionUrl = "pages/trade/sellerView.jsp";
			}else if(op.equals("bookReg")){
				actionUrl = "pages/trade/bookReg.jsp";
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
			}else if(op.equals("tradeView")){
				actionUrl = "pages/trade/tradeView.jsp";
			}else if(op.equals("purchase")){
				request.setCharacterEncoding("utf-8");
				PurchaseDTO pDto = new PurchaseDTO(); 
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
			}else if(op.equals("regBook")){
				request.setCharacterEncoding("utf-8");
				HttpSession session = request.getSession();
				SellDTO sDto = new SellDTO();
				String ISBN = ChangeUtil.getStringParameter(request.getParameter("ISBN"),"empty");
				String title = ChangeUtil.getStringParameter(request.getParameter("title"),"empty");
				String author = ChangeUtil.getStringParameter(request.getParameter("author"),"empty");
				String translator = ChangeUtil.getStringParameter(request.getParameter("translator"),"empty");
				String publisher = ChangeUtil.getStringParameter(request.getParameter("publisher"),"empty");
				String publishDate = ChangeUtil.getStringParameter(request.getParameter("publishDate"),"empty");
				String price = ChangeUtil.getStringParameter(request.getParameter("price"),"empty");
				String quality = ChangeUtil.getStringParameter(request.getParameter("quality"),"empty");
				String usedPrice = ChangeUtil.getStringParameter(request.getParameter("usedPrice"),"empty");
				String stock = ChangeUtil.getStringParameter(request.getParameter("stock"),"empty");
				String contents = ChangeUtil.getStringParameter(request.getParameter("contents"),"empty");
				String password = ChangeUtil.getStringParameter(request.getParameter("password"),"empty");
				
				sDto.setId((String)session.getAttribute("userId"));
				sDto.setISBN(ISBN);
				sDto.setTitle(title);
				sDto.setAuthor(author);
				sDto.setTranslator(translator);
				sDto.setPublisher(publisher);
				sDto.setPublishDate(publishDate);
				sDto.setPrice(usedPrice);
				sDto.setQuality(quality);
				sDto.setUsedPrice(usedPrice);
				sDto.setStock(stock);
				sDto.setContents(contents);
				sDto.setPassword(password);
				
				TradeDAO.regBook(sDto);
				
				actionUrl = "trade?op=tradeView";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(actionUrl);
		dispatcher.forward(request, response);
	}
	
}
