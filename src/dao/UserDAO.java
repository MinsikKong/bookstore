package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import dto.UserDTO;


import test.MyBatisManager;

public class UserDAO {
	 public static SqlSessionFactory sqlMapper = MyBatisManager.getInstance();
	public UserDTO getUsers(){
	
	  SqlSession session = sqlMapper.openSession();
	  UserDTO users = session.selectOne("UserMapper.selectUser", "dkfdnd");
	return users;
	}
}
