package dao;

import java.util.List;

import myBatis.MyBatisManager;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import dto.BookDTO;
import dto.PurchaseDTO;
import dto.SellDTO;
import dto.UserDTO;

public class TradeDAO {
	public static SqlSessionFactory sqlMapper = MyBatisManager.getInstance();

	public static int purchaseBook(PurchaseDTO pDto) {

		SqlSession session = sqlMapper.openSession();
		int result = 0 ;
		try {
			System.out.println(pDto.getName() + "name");
			result =  session.update("TradeMapper.purchaseBook", pDto );
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}

		return result;
	}
	
	public static int regBook(SellDTO sDto) {

		SqlSession session = sqlMapper.openSession();
		int result = 0 ;
		try {
			result =  session.insert("TradeMapper.regBook", sDto );
			System.out.println("입력되면 insert가 반환하는 값 : "+ result);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}

		return result;
	}
	
	public static List<BookDTO> getBuyList(String userId) {

		SqlSession session = sqlMapper.openSession();
		List<BookDTO> result = null;
		try {
			result =  session.selectList("TradeMapper.getBuyList", userId );
			session.commit();
			for(BookDTO user : result) {

				System.out.println(user.getTitle()+"<-purchasedBookList of me");

				}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}

		return result;
	}
	
	public static List<BookDTO> getSellList(String userId) {

		SqlSession session = sqlMapper.openSession();
		List<BookDTO> result = null;
		try {
			result =  session.selectList("TradeMapper.getSellList", userId );
			session.commit();
			for(BookDTO user : result) {

				System.out.println(user.getTitle()+"<-sellBookList of me");

				}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}

		return result;
	}
	
	public static int totalBuyPrice(String userId) {

		SqlSession session = sqlMapper.openSession();
		List<BookDTO> result = null;
		int tp = 0;
		try {
			result =  session.selectList("TradeMapper.getBuyList", userId );
			session.commit();
			for(BookDTO book : result) {

				tp += Integer.parseInt(book.getPrice()); 

				}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}

		return tp;
	}
	
	public static int totalSellPrice(String userId) {

		SqlSession session = sqlMapper.openSession();
		List<BookDTO> result = null;
		int tp = 0;
		try {
			result =  session.selectList("TradeMapper.getSellList", userId );
			session.commit();
			for(BookDTO book : result) {

				tp += Integer.parseInt(book.getPrice()); 

				}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}

		return tp;
	}
	
}
