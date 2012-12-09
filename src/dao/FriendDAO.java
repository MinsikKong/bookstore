package dao;

import java.util.HashMap;
import java.util.List;

import myBatis.MyBatisManager;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import dto.UserDTO;


public class FriendDAO {
	public static SqlSessionFactory sqlMapper = MyBatisManager.getInstance();

	public static int getFriendsCount(String userId) {

		SqlSession session = sqlMapper.openSession();
		
		int friendCount = 0;
		try{
		// selectOne - call nameSpace of Mapper
			friendCount = session.selectOne("FriendMapper.friendCount", userId);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.commit();
		}
		System.out.println(friendCount +" <-friendCount");
		return friendCount;
	}
	
	public static int manageFriend(String userId, String friendId, String flag) {

		SqlSession session = sqlMapper.openSession();
		int result = 0 ;
		try {
			HashMap<String, String> map= new HashMap<String, String>();
			map.put("userId", userId);
			map.put("friendId", friendId);
			if(flag.equals("accept")){
				map.put("flag", "1");
			}else if(flag.equals("refusal")){
				map.put("flag", "2");
			}else if(flag.equals("delete")){
				map.put("flag", "3");
				System.out.println("flag3만들러옴");
			}
			
			result =  session.update("FriendMapper.manageFriend", map );
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}

		return result;
	}
	
	public static List<UserDTO> getWaitingFriends(String userId) {

		SqlSession session = sqlMapper.openSession();
		List<UserDTO> results = null;
		try {
			HashMap<String, String> map= new HashMap<String, String>();
			map.put("userId", userId);
			map.put("flag", "0");
			System.out.println(userId);
			results = session.selectList("FriendMapper.getFriends", map );
			for(UserDTO user : results) {

				System.out.println(user.getId()+ user.getName()+"<-waitingList");

				}
			session.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}

		return results;
	}
	
	public static List<UserDTO> getFriends(String userId) {

		SqlSession session = sqlMapper.openSession();
		List<UserDTO> results = null;
		try {
			HashMap<String, String> map= new HashMap<String, String>();
			map.put("userId", userId);
			map.put("flag", "1");
			results = session.selectList("FriendMapper.getFriends", map );
			for(UserDTO user : results) {

				System.out.println(user.getId()+ user.getName()+"<-nowList");

				}
			session.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}

		return results;
	}
	
	
}
