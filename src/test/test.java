package test;


import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDAO;
import dto.UserDTO;

public class test extends HttpServlet {
	public UserDTO getUser() {
		UserDAO dao = new UserDAO();
		UserDTO list = dao.getUsers();
		return list;
	}
	
public void doGet(HttpServletRequest request, HttpServletResponse response){
		try {
			
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}

