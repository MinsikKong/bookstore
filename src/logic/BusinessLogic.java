package logic;

import dao.UserDAO;
import dto.UserDTO;

public class BusinessLogic {

	public UserDTO getUser() {
		UserDAO uDao = new UserDAO();
		
		UserDTO user = uDao.getUsers();
		return user;
	}

}
