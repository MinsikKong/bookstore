package dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import dto.PurchaseDTO;
import dto.UserDTO;

import myBatis.MyBatisManager;

public class UserDAO {
	public static SqlSessionFactory sqlMapper = MyBatisManager.getInstance();

	public static UserDTO getUsers(String searchValue) {

		SqlSession session = sqlMapper.openSession();

		// selectOne - call nameSpace of Mapper
		UserDTO users = session.selectOne(
				"UserMapper.selectUser", searchValue);
		return users;
	}

	public static int purchaseBook(PurchaseDTO pDto) {

		SqlSession session = sqlMapper.openSession();
		int result = 0 ;
		try {
			result =  session.update("myBatis.mapper.UserMapper.selectUser", pDto );
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}

		return result;
	}
}
