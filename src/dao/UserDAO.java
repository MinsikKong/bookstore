package dao;

import java.util.HashMap;

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
		UserDTO users = session.selectOne("UserMapper.selectUser", searchValue);
		return users;
	}

	public static boolean isUser(String userId) {

		SqlSession session = sqlMapper.openSession();
		boolean isExist = false;
		int count = 0;
		try {
			System.out.println(userId);
			// selectOne - call nameSpace of Mapper
			count = session.selectOne("UserMapper.isUser", userId);
			if (count <= 0)
				isExist = false;
			else
				isExist = true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.commit();
		}
		System.out.println(isExist + "t or f ");
		return isExist;
	}
<<<<<<< HEAD

	public static int getFriendsCount(String userId) {

		SqlSession session = sqlMapper.openSession();

		int friendCount = 0;
		try {
			// selectOne - call nameSpace of Mapper
			friendCount = session.selectOne("FriendMapper.friendCount", userId);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.commit();
		}
		System.out.println(friendCount + " <-friendCount");
		return friendCount;
	}

=======
	
	
>>>>>>> 09b4c245f0f970a5976555b72a096b9d58cf8be6
	public static int purchaseBook(PurchaseDTO pDto) {

		SqlSession session = sqlMapper.openSession();
		int result = 0;
		try {
			result = session.update("myBatis.mapper.UserMapper.selectUser",
					pDto);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}

		return result;
	}

	public static int setUserInfo(String userId, String userName) {

		SqlSession session = sqlMapper.openSession();
		int result = 0;
		try {
			HashMap<String, String> map = new HashMap<String, String>();
			map.put("userId", userId);
			map.put("userName", userName);
<<<<<<< HEAD
			System.out.println(userId + " <-userid");
			System.out.println(userId + " <-userid");
			result = session.update("UserMapper.setUserInfo", map);
=======
			System.out.println(userId+" <-userid");
			result =  session.update("UserMapper.setUserInfo", map );
>>>>>>> 09b4c245f0f970a5976555b72a096b9d58cf8be6
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}

		return result;
	}

}
