package controller;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import logic.BusinessLogic;
import dto.UserDTO;

public class Controller extends HttpServlet {
	public UserDTO getUser() {
		BusinessLogic bLogic = new BusinessLogic();
		UserDTO list = bLogic.getUser();
		return list;
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) {
		try {

		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
