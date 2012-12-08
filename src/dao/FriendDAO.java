package dao;

import java.util.HashMap;

import myBatis.MyBatisManager;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;


public class FriendDAO {
	public static SqlSessionFactory sqlMapper = MyBatisManager.getInstance();

	public static int acceptFriend(String userId, String friendId) {

		SqlSession session = sqlMapper.openSession();
		int result = 0 ;
		try {
			HashMap<String, String> map= new HashMap<String, String>();
			map.put("userId", userId);
			map.put("friendId", friendId);
			result =  session.update("FriendMapper.acceptWaitingFriend", map );
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}

		return result;
	}
	
	public static int refusalFriend(String userId, String friendId) {

		SqlSession session = sqlMapper.openSession();
		int result = 0 ;
		try {
			HashMap<String, String> map= new HashMap<String, String>();
			map.put("userId", userId);
			map.put("friendId", friendId);
			result =  session.update("FriendMapper.refusalWaitingFriend", map );
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}

		return result;
	}
}
