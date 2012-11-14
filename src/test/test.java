package test;

import dao.UserDAO;
import dto.UserDTO; 
import java.io.*;
import java.util.List;

import org.apache.ibatis.io.*;
import org.apache.ibatis.session.*;

public class test {
	public UserDTO getUser(){
			UserDAO dao = new UserDAO();
			UserDTO list = null;
			 
		   try {
			   list = dao.getUsers();
		   } catch(Exception e){
		   e.printStackTrace();
		   }
		return list;
		 
}
}
