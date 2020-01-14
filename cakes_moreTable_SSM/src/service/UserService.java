package service;

import pojo.User;

public interface UserService {
	void addUser(User user);
	int updateUser(User user);
	int deleteUser(int id);
	User get();
}
