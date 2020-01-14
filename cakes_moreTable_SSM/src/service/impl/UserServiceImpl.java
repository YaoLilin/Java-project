package service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import mapper.UserMapper;
import pojo.User;
import service.UserService;

public class UserServiceImpl implements UserService{
@Autowired
UserMapper UserMapper;

@Override
public void addUser(User user) {
	// TODO 自动生成的方法存根
	
}

@Override
public int updateUser(User user) {
	// TODO 自动生成的方法存根
	return 0;
}

@Override
public int deleteUser(int id) {
	// TODO 自动生成的方法存根
	return 0;
}

@Override
public User get() {
	// TODO 自动生成的方法存根
	return null;
}

	
}
