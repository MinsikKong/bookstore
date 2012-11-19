package dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import dto.UserDTO;


import myBatis.MyBatisManager;

public class UserDAO {
	 public static SqlSessionFactory sqlMapper = MyBatisManager.getInstance();
	public UserDTO getUsers(){
	
	  SqlSession session = sqlMapper.openSession();
	  
	  //selectOne - call nameSpace of Mapper
	  UserDTO users = session.selectOne("myBatis.mapper.UserMapper.selectUser", "dkfdnd");
	return users;
	}
}
