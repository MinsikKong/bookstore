package dao;

import java.util.List;

import myBatis.MyBatisManager;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import dto.BookDTO;
import dto.PurchaseDTO;

public class BookDAO {
	public static SqlSessionFactory sqlMapper = MyBatisManager.getInstance();

	public static BookDTO getBooks(String searchValue) {

		SqlSession session = sqlMapper.openSession();

		// selectOne - call nameSpace of Mapper
		BookDTO books = session.selectOne("BookMapper.selectBook", searchValue);
		return books;
	}
	public static BookDTO getRecentBook() {
		SqlSession session = sqlMapper.openSession();

		// selectOne - call nameSpace of Mapper
		BookDTO books = session.selectOne("BookMapper.selectRecentBook");
		return books;
	}
	
	public static List<BookDTO> bookSearch(String sValue) {
		SqlSession session = sqlMapper.openSession();

		// selectOne - call nameSpace of Mapper
		System.out.println(sValue+"svalue");
		List<BookDTO> results = session.selectList("BookMapper.bookSearch",sValue);
		
		
		return results;
	}
	
	public static BookDTO getBookWithISBN(String isbn) {
		SqlSession session = sqlMapper.openSession();

		BookDTO book = session.selectOne("BookMapper.getBookWithISBN",isbn);
		return book;
	}
	
	public static PurchaseDTO getPurchaseInfo(String sellContentIdx) {
		SqlSession session = sqlMapper.openSession();

		PurchaseDTO result = session.selectOne("BookMapper.getPurchaseInfo",sellContentIdx);
		return result;
	}
	
}
