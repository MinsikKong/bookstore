package logic;

import java.util.List;

import dao.TradeDAO;
import dao.UserDAO;
import dto.BookDTO;
import dto.UserDTO;

public class TradeLogic {

	
	
	/*안씀 둘다*/
	public static List<BookDTO> getBuyList(String userId) {
		List<BookDTO> bDto = TradeDAO.getBuyList(userId);
		return bDto;
	}

	public static List<BookDTO> getSellList(String userId) {
		List<BookDTO> bDto = TradeDAO.getSellList(userId);
		return bDto;
	}
}
