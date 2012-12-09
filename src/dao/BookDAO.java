package dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import dto.BookDTO;
import dto.PurchaseDTO;
import dto.UserDTO;

import myBatis.MyBatisManager;

public class BookDAO {
	public static SqlSessionFactory sqlMapper = MyBatisManager.getInstance();

	public static BookDTO getBook(String searchValue) {

		SqlSession session = sqlMapper.openSession();

		// selectOne - call nameSpace of Mapper
		BookDTO books = session.selectOne("BookMapper.selectBook", searchValue);
		return books;
	}
}
