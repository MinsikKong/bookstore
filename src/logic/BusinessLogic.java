package logic;

import dao.UserDAO;
import dto.UserDTO;

public class BusinessLogic {

	public UserDTO getUser(String value) {
		UserDAO uDao = new UserDAO();
		
		UserDTO user = uDao.getUsers(value);
		return user;
	}

}
