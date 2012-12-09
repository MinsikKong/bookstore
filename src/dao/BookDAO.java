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

	public static BookDTO getRecentBook(String searchValue) {

		SqlSession session = sqlMapper.openSession();

		// selectOne - call nameSpace of Mapper
		BookDTO books = session
				.selectOne("BookMapper.getBookName", searchValue);
		return books;
	}
	
	public static UserDTO getUsers(String searchValue) {

		SqlSession session = sqlMapper.openSession();

		// selectOne - call nameSpace of Mapper
		UserDTO users = session.selectOne("UserMapper.selectUser", searchValue);
		return users;
	}
}
