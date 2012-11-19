package dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import dto.UserDTO;


import myBatis.MyBatisManager;

public class UserDAO {
	 public static SqlSessionFactory sqlMapper = MyBatisManager.getInstance();
	public UserDTO getUsers(){
	
	  SqlSession session = sqlMapper.openSession();
	  UserDTO users = session.selectOne("myBatis.UserMapper.selectUser", "dkfdnd");
	return users;
	}
}
