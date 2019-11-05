package kimyongtae.ums.user.service;

import java.util.List;

import kimyongtae.ums.user.dao.UserDao;
import kimyongtae.ums.user.dao.UserDaoImpl;
import kimyongtae.ums.user.domain.User;

public class UserServiceImpl implements UserService{
private UserDao userDao;
	
	public UserServiceImpl(){
		this.userDao = new UserDaoImpl();
	}
	
	
	
	@Override
	public List<User> listUsers() {
		return userDao.getUsers();
	}

	@Override
	public User findUser(int userNo) {
		return userDao.getUser(userNo);
	}

	@Override
	public boolean join(String userName) {
		return userDao.addUser(userName)>0;
	}

	@Override
	public boolean correctUser(User user) {
		return userDao.updateUser(user)>0;
	}

	@Override
	public boolean secede(int userNo) {
		return userDao.delUser(userNo)>0;
	}
}
